import os
import sys
import pytest
from pathlib import Path
from mctools import RCONClient

def pytest_addoption(parser):
    parser.addoption("--dir", action="store", default='.', help='directory where mcfunction files reside')

def path_to_datapack_path(path: Path) -> str:
    relevant_parts = list(path.parts[path.parts.index('data') + 1:])
    namespace = relevant_parts.pop(0)
    relevant_parts.pop(0) # functions
    relevant_parts.pop() # last
    relevant_parts.append(path.stem)
    return f'{namespace}:{"/".join(relevant_parts)}'


def pytest_generate_tests(metafunc):
    if "mcfunction" in metafunc.fixturenames:
        root = Path(metafunc.config.getoption("dir"))
        if root:
            mcfunctions = [path_to_datapack_path(p) for p in root.glob('**/functions/test/**/test_*') if 'client' not in str(p) and 'unittest' not in p.parts and not p.name.startswith('_')]
            metafunc.parametrize("mcfunction", mcfunctions)
        else:
            raise ValueError('Must supply a path to mcfunction files')

    
@pytest.fixture(scope='session')
def rcon_client():
    """RCON Client setup"""
    # print("setup")
    HOST = 'localhost'
    PORT = 25575  # Port number of the RCON server
    PWD = os.getenv('RCON_PWD')
    rcon = RCONClient(HOST, port=PORT)
    if rcon.login(PWD):
        rcon.command('reload')
        yield rcon
    else:
        raise ValueError('RCON Client failed to initialize')
    # print(rcon.command('stop'))