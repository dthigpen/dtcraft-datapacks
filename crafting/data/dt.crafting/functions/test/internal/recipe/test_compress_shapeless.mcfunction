function unittest:api/config/enable/detailed_results

data modify storage unittest:in name set value "Test compress shapeless"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "remove from each"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [[1,0,1],[2,0,0],[0,3,0]]
data modify storage call_stack: call.arg1 set value [[1b,0b,1b],[1b,0b,0b],[0b,1b,0b]]
function dt.crafting:internal/craft/compress_shapeless
data modify storage unittest:in actual set from storage call_stack: call.return
tellraw @p ["test_compress_shapeless call.return: ",{"nbt":"call.return","storage":"call_stack:"}]
function call_stack:pop

data modify storage unittest:in expected set value [ [[1,1,2,3]], [[1b,1b,1b,1b]] ]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "single item"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [[1]]
data modify storage call_stack: call.arg1 set value [[1]]
function dt.crafting:internal/craft/compress_shapeless
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

data modify storage unittest:in expected set value [ [[1]], [[1]] ]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown