data modify storage unittest:in name set value "Test Partial Find"
function unittest:api/test_suite/setup
data modify storage unittest:in name set value "Match"

function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
data modify storage unittest:in expected append from storage dt.crafting: recipes[{result:{id:"minecraft:redstone_block"}}]
function call_stack:push

say running
data modify storage call_stack: call.arg0 set value []
# data modify storage call_stack: call.arg0 append from storage dt.crafting: recipes[{result:{id:"minecraft:redstone_block"}}]
data modify storage call_stack: call.arg0 append from storage dt.crafting: recipes[]
data modify storage call_stack: call.arg1 set value ["minecraft:oak_planks","minecraft:stick"]
data modify storage call_stack: call.arg2 set value []
function dt.crafting:internal/recipe/partial_find_loop
data modify storage unittest:in actual set from storage call_stack: call.result
tellraw @p ["test_partial_find.mcfunction: actual: ",{"nbt":"actual","storage":"unittest:in"}]
# tellraw @p ["test_partial_find.mcfunction: expected: ",{"nbt":"expected","storage":"unittest:in"}]
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown
function unittest:api/test_suite/teardown