function unittest:internal/2/assert/setup
data modify storage call_stack: this.name set value "Is Set"
data modify storage call_stack: this.msg set value '[{"text":"actual is set"}]'

execute unless data storage call_stack: this.actual run data modify storage call_stack: this.pass set value true

function unittest:internal/2/assert/teardown