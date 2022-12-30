#!/usr/bin/env bash
# Watch for file changes in the current directory, cog changed files, and rebuild in dest folder
# NOTE: Must have the following installed and setup to run:
# entr: http://eradman.com/entrproject/
# cog python templating library: https://nedbatchelder.com/code/cog/index.html#h_installation
# datapack-utils: https://github.com/dthigpen/datapack-utils
# dpbuild: https://github.com/dthigpen/dpbuild
# Usage: watch dest-directory datapack 
# set -Eeuo pipefail
dest_path="$1"
datapack="$2"
while sleep 1; do
    echo "Watching datapack workspace"
    find . -type f -not -path './resourcepacks/**' -and -not -path '*/\.*' \
    | entr -s "date && ./preprocess.sh \$0 && ./build.sh ${dest_path} unittest && ./build.sh ${dest_path} ${datapack}" \
    | grep -v 'bash returned exit code 0'
done