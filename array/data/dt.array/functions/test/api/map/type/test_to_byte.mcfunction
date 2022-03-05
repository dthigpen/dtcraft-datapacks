data modify storage unittest:in name set value "Convert to bytes"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "From integers"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value [-1b, 0b, 1b, 100b]

function call_stack:push
data modify storage call_stack: call.arg0 set value [-1, 0, 1, 100]
function dt.array:api/map/type/to_byte
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

function unittest:api/v1/test_suite/teardown