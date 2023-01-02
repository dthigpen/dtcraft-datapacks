#!/usr/bin/env bash

DATAPACK_UTILS_PATH=~/dev/datapacks/datapack-utils
LIBRARIES="../libraries"
DEST_DIR="../compiled-datapacks"
datapack="${1}"
if [[ ${#} == 2 ]]
then
    DEST_DIR="${1}"
    datapack="${2}"
elif [[ ${#} != 1 ]]
then
    echo "Usage: ${0} <dest-dir> <datapack>"
    echo "Usage: ${0} <datapack>"
    exit 1
fi
dpbuild ${datapack} "${LIBRARIES}" --dest "${DEST_DIR}"