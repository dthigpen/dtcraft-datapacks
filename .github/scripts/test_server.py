import time
from pathlib import Path


def test_in_game_unit_test(rcon_client, mcfunction):
    print(f'Testing: /function {mcfunction}')
    resp = rcon_client.command(f'function {mcfunction}')
    print(f'Response: {resp}')
    assert len(resp) > 0
    time.sleep(5)
    resp = rcon_client.command('scoreboard players get $passed unittest')
    assert '$passed has 1' in resp