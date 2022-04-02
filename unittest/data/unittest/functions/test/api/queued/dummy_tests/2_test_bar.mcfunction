function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 2"
data modify storage call_stack: call.expected set value "bar"
data modify storage call_stack: call.actual set value "bar"
function unittest:api/assert/equal
function unittest:api/test_case/teardown