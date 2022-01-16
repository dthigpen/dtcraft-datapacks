function unittest:internal/storage/clear/internal/test_case
function unittest:internal/storage/clear/out

data modify storage unittest:internal case set value {name:"Unnamed", results:[]}
data modify storage unittest:internal case.name set from storage unittest:in name

# tellraw @s ["Setup Test Case: ",{"nbt":"case.name","storage":"unittest:internal"}]

function unittest:internal/storage/clear/in