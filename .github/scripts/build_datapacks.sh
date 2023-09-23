#!/usr/bin/env bash
set -x
set -euo pipefail
IFS=$'\n\t'
# download dependencies and unzip them into the libraries dir
rm -rf tmp libraries
mkdir -p tmp libraries
pushd tmp
wget -q https://github.com/rx-modules/PlayerDB/releases/download/v2.0.2/PlayerDB.v2.0.2.zip
popd
find tmp -name '*.zip' -exec bash -c 'file=$(basename {}); unzip {} -d libraries/${file%.zip}' \;

# build the datapacks in test and release modes
mkdir -p test-artifacts release-artifacts

# install dtcraft-datapacks
pushd dtcraft-datapacks
if [[ ! -e env ]]
then
    python -m venv env
    source env/bin/activate
    pip install .
fi
# PACKS=$(for f in ./*/pack.mcmeta; do echo $(basename $(dirname $f)); done)
for f in ./*/pack.mcmeta
do
    pack_name=$(basename $(dirname $f))
    invoke bundle ${pack_name} -o ../test-artifacts --no-dep-tests
    invoke bundle ${pack_name} -o ../release-artifacts --release
done
popd