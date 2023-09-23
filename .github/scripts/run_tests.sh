#!/usr/bin/env bash
set -x
set -euo pipefail
IFS=$'\n\t'



# prep world with test datapacks
echo "Copying datapacks"
cp -r test-artifacts/* server/world/datapacks

# assume dthigpen/minecraft-test-report is already cloned here
pushd minecraft-test-report
python -m pip install -r requirements.txt
# Use non-bundled datapacks for tests
if [[ -z "${1}" ]]
then
    PACKS=$(for d in ../dtcraft-datapacks/*/pack.mcmeta; do echo $(dirname $d); done)
    datapack_dir=${PACKS}
else
    datapack_dir="../dtcraft-datapacks/${1}"
fi
python test_runner.py ${datapack_dir} --output "$GITHUB_STEP_SUMMARY"
popd