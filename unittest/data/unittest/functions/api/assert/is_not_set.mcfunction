#> unittest:api/assert/is_not_set
# test that the value is not set
# @input
#   storage call_stack: call.actual
#       The actual value
function unittest:internal/assert/setup
data modify storage call_stack: this.name set value "Is Set"
data modify storage call_stack: this.msg set value '[{"text":"actual is set"}]'

execute unless data storage call_stack: this.actual run data modify storage call_stack: this.pass set value true

function unittest:internal/assert/teardown