data modify storage unittest:in name set value "Test Resolve Groups Loop"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value ["minecraft:redstone"]
function call_stack:push

say running
data modify storage call_stack: call.arg0 set value ["minecraft:planks"]
data modify storage call_stack: call.arg1 set value ["minecraft:oak_planks","minecraft:redstone"]
data modify storage call_stack: call.arg2 set value []
function dt.crafting:internal/recipe/resolve_groups_loop
data modify storage unittest:in actual set from storage call_stack: call.result
# tellraw @p ["test_partial_find.mcfunction: actual: ",{"nbt":"actual","storage":"unittest:in"}]
# tellraw @p ["test_partial_find.mcfunction: expected: ",{"nbt":"expected","storage":"unittest:in"}]
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Test 2"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push

data modify storage call_stack: call.arg0 set value ["minecraft:planks","minecraft:stone_crafting_materials"]
data modify storage call_stack: call.arg1 set value ["minecraft:oak_planks","minecraft:cobblestone"]
data modify storage call_stack: call.arg2 set value []
function dt.crafting:internal/recipe/resolve_groups_loop
data modify storage unittest:in actual set from storage call_stack: call.result
tellraw @p ["test_resolve_groups_loop.mcfunction: ",{"nbt":"actual","storage":"unittest:in"}]
# tellraw @p ["test_partial_find.mcfunction: actual: ",{"nbt":"actual","storage":"unittest:in"}]
# tellraw @p ["test_partial_find.mcfunction: expected: ",{"nbt":"expected","storage":"unittest:in"}]
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown