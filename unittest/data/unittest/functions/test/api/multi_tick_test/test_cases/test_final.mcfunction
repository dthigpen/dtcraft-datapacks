say running final
tellraw @p ["test_final this: ",{"nbt":"this","storage":"call_stack:"}]
function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test final state"
data modify storage call_stack: call.expected set value "FOO3"
data modify storage call_stack: call.actual set value "FOO3"
function unittest:api/assert/equal
function unittest:api/test_case/teardown