function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Good one ingredient"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup
# TODO move this to crafting
function dt.autocraft:internal/dev/clear_cache_self
function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:stone",Slot:1b,Count:1b}]
function dt.crafting:api/recipe/find
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set from storage dt.crafting: recipes_by_count.1[{result:[609,1]}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown