function call_stack:push
data modify storage call_stack: this.test_suite set from storage call_stack: this.arg0

execute unless data storage call_stack: this.started run scoreboard players reset #num_tests unittest
execute unless data storage call_stack: this.started run execute store result score #num_test unittest run data get storage call_stack: this.test_suite.test_cases
execute unless data storage call_stack: this.started run tellraw @p ["Running ",{"nbt":"this.test_suite.name","storage":"call_stack:"}]
execute unless data storage call_stack: this.started run tellraw @p ["1..",{"score":{"name":"#num_test","objective":"unittest"}}]
data modify storage call_stack: this.test_case set from storage call_stack: this.test_suite.test_cases[0]
execute if data storage call_stack: this.test_case run data remove storage call_stack: this.test_suite.test_cases[0]
execute if data storage call_stack: this.test_case run data modify storage call_stack: call.arg0 set from storage call_stack: this.test_case
execute if data storage call_stack: this.test_case run function unittest:internal/test_case/report
execute if data storage call_stack: this.test_suite.test_cases[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.test_suite
execute if data storage call_stack: this.test_suite.test_cases[0] run data modify storage call_stack: call.started set value true
execute if data storage call_stack: this.test_suite.test_cases[0] run function unittest:internal/test_suite/report
function call_stack:pop