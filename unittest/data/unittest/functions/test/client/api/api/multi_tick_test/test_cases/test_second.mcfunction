say running second
function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test second state (fails)"
data modify storage call_stack: call.expected set value "FOO"
data modify storage call_stack: call.actual set value "BAR"
function unittest:api/assert/equal
function unittest:api/test_case/teardown