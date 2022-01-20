data modify storage unittest:in name set value "Convert to integers"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "From  bytes"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [-1, 0, 1, 100]

function call_stack:push
data modify storage call_stack: call.arg0 set value [-1b, 0b, 1b, 100b]
function dt.array:api/map/type/to_int
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown