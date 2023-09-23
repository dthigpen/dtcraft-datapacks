from invoke import task, Context
from pathlib import Path
from watchfiles import watch as watch_changes, Change


def __get_files(c: Context, root_path: Path) -> list[Path]:
    include_globs = c.config.filter.includeGlobs
    exclude_globs = c.config.filter.excludeGlobs
    if not include_globs:
        include_globs = []
    if not exclude_globs:
        exclude_globs = []
    for p in root_path.rglob("*"):
        # default to pass if no includes
        passes_includes = len(include_globs) == 0
        for include_glob in include_globs:
            if p.match(include_glob):
                passes_includes = True
                break
        if passes_includes:
            passes_excludes = True
            if exclude_globs:
                for exclude_glob in exclude_globs:
                    if p.match(exclude_glob):
                        passes_excludes = False
                        break
            if passes_excludes:
                yield p


@task(
    help={
        "file_or_dir": "File to preprocess or dir to preprocess all files in",
        "watch": "Watch for changes in the file or dir and rerun",
    }
)
def preprocess(c: Context, file_or_dir: str, watch=False):
    print(f"Preprocessing {Path(file_or_dir).name}")

    def __run(file_path: str):
        file_path = Path(file_path)
        if file_path.is_file():
            cmd = c.config.preprocess.cmd % file_path
            c.run(cmd)
        elif file_path.is_dir():
            for p in __get_files(c, file_path):
                cmd = c.config.preprocess.cmd % p
                c.run(cmd)
        else:
            raise ValueError(f"File not supported {file_path}")

    if watch == True:
        for changes in watch_changes(file_or_dir):
            for _, file_path in filter(lambda c: c[0] != Change.deleted, changes):
                print("Watching for changes, press Ctrl-C to quit")
                __run(file_path)
    else:
        __run(file_or_dir)


@task(
    help={
        "datapack_dir": "Path to the datapack to bundle",
        "output_dir": "Directory to output the bundled datapack into",
        "release":"Package the datapack in dpbuild release mode",
        "no_dep_tests":"Package the datapack without dependency test mcfunction files",
        "zip":"Package the datapack as a zip",
        "extra_args":"Extra args string to be passed to dpbuild",
        "watch": "Watch for changes in the datapack and rerun",
    }
)
def bundle(
    c: Context,
    datapack_dir: str,
    output_dir: str,
    release: bool = False,
    no_dep_tests: bool = False,
    zip: bool = False,
    extra_args: str = "",
    watch: bool = False,
):
    """Bundle the given datapack to an output directory"""
    print("args", extra_args)
    datapack_dir = Path(datapack_dir)
    output_dir = Path(output_dir)
    print(f"Bundling {datapack_dir.name} to {output_dir}")
    cmd = f'python -m dpbuild {datapack_dir} --discover . ../libraries --dest {output_dir}'
    args = [extra_args]
    if zip:
        args.append("--zip")
    if release:
        args.append("--release")
    if no_dep_tests:
        args.append("--no-dep-tests")
    cmd += " ".join(args)
    c.run(cmd)
    if watch == True:
        # TODO how handle watching dependency datapack dirs
        for changes in watch_changes(*__get_files(c, datapack_dir.parent)):
            for _, file_path in filter(lambda c: c[0] != Change.deleted, changes):
                print("Watching for changes, press Ctrl-C to quit")
                preprocess(c, file_path, watch=False)
                c.run(cmd)
