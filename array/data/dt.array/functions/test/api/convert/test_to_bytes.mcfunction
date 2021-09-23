data modify storage unittest:in name set value "Convert to bytes"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Integers"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [-1b, 0b, 1b, 100b]

function call_stack:push
data modify storage call_stack: call.arg0 set value [-1, 0, 1, 100]
function dt.array:api/convert/to_bytes
data modify storage unittest:in actual set from storage call_stack: call.return
tellraw @p ["test_to_bytes.mcfunction: ",{"nbt":"actual","storage":"unittest:in"}]
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown