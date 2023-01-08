#> unittest:api/v1/test_suite/setup
# @deprecated
function unittest:internal/storage/clear/internal/test_suite
function unittest:internal/storage/clear/internal/test_case
function unittest:internal/v1/storage/clear/out

data modify storage unittest:internal suite set value {name: "Unnamed", results:[]}
data modify storage unittest:internal suite.name set from storage unittest:in name

# tellraw @s ["Setup Test Suite: ",{"nbt":"suite.name","storage":"unittest:internal"}]

function unittest:internal/v1/storage/clear/in
scoreboard players reset $passed unittest