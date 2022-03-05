function unittest:internal/2/assert/setup
data modify storage call_stack: this.name set value "Not Equal"
scoreboard players reset #changed dt.tmp
execute store success score #changed dt.tmp run data modify storage call_stack: this.expected set from storage call_stack: this.actual
execute if data storage call_stack: this.expected if data storage call_stack: this.actual if score #changed dt.tmp matches 1 run data modify storage call_stack: this.pass set value true
execute if data storage call_stack: this.expected unless data storage call_stack: this.actual run data modify storage call_stack: this.pass set value true
execute unless data storage call_stack: this.expected if data storage call_stack: this.actual run data modify storage call_stack: this.pass set value true
function unittest:internal/2/assert/teardown