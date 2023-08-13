#> unittest:api/assert/cmd_success
# Assert that the given value of call.actual is 1
# TODO make this call equal or content of equal instead of repeating
# @input
#   storage call_stack: call.actual
#       The run value of the command, set with "execute store success storage call_stack: call.actual run ..."
data modify storage call_stack: call.expected set value 1
function unittest:internal/assert/setup
data modify storage call_stack: this.name set value "Cmd Success"
scoreboard players reset #changed dt.tmp
data modify storage call_stack: this.tmp set from storage call_stack: this.expected
execute store success score #changed dt.tmp run data modify storage call_stack: this.tmp set from storage call_stack: this.actual
execute if data storage call_stack: this.expected if data storage call_stack: this.actual if score #changed dt.tmp matches 0 run data modify storage call_stack: this.pass set value true
execute unless data storage call_stack: this.expected unless data storage call_stack: this.actual if score #changed dt.tmp matches 0 run data modify storage call_stack: this.pass set value true

function unittest:internal/assert/teardown
