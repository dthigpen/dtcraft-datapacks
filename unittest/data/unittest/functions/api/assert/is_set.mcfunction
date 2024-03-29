#> unittest:api/assert/is_set
# Test whether the given value is set
# @input
#   storage call_stack: call.actual
#       The value to test
function unittest:internal/assert/setup
data modify storage call_stack: this.name set value "Is Set"
data modify storage call_stack: this.msg set value '[{"text":"actual is not set"}]'

execute if data storage call_stack: this.actual run data modify storage call_stack: this.pass set value true

function unittest:internal/assert/teardown