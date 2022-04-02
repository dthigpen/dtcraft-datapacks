function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"
data modify storage call_stack: call.expected set value "foo"
data modify storage call_stack: call.actual set value "foo"
function unittest:api/assert/equal
function unittest:api/test_case/teardown