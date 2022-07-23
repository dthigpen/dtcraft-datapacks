function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Convert to integers"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "From  bytes"
data modify storage call_stack: call.expected set value [-1, 0, 1, 100]

data modify storage call_stack: call.arg0 set value [-1b, 0b, 1b, 100b]
function dt.array:api/map/type/to_int
data modify storage call_stack: call.actual set from storage call_stack: call.return

function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown