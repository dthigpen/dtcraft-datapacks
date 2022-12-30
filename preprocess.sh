#!/usr/bin/env bash
DATAPACK_UTILS_VERSION='1.19'
LIBRARIES="~/dev/datapacks/libraries"
PROLOGUE='from datapack_utils.version import __version__; cog.error(f"Expected datapack_utils to be at version {DATAPACK_UTILS_VERSION} but got {__version__}") if DATAPACK_UTILS_VERSION != __version__ else None'
if [[ ${#} -le 0 ]]
then
    echo "Usage: ${0} <file1> <file2> ..."
    echo -e "Pass files you would like to run the preprocess steps on.\nOr a directory to recursively preprocess files in the directory."
    exit 1;
fi

files="${@}"
for file in ${files}
do
    if [[ ! -e "${file}" ]]
    then
        echo "Path does not exist: ${file}"
    elif [[ -d "${file}" ]]
    then
        echo "preprocessing dir: ${file}"
        find "${file}"  -type f \( -name '*.mcfunction' -o -name '*.cog' \) -exec cog --verbosity=1 -D DATAPACK_UTILS_VERSION="${DATAPACK_UTILS_VERSION}" -p "${PROLOGUE}" -r {} \;

    elif [[ -f "${file}" ]]
    then
        echo "preprocessing file: ${file}"
        cog --verbosity=1 -D DATAPACK_UTILS_VERSION="${DATAPACK_UTILS_VERSION}" -p "${PROLOGUE}" -r "${file}"
    fi
done
# Perform cog preprocessing
