function call_stack:push
data modify storage call_stack: this.test_suite set value {name:"Test Suite",test_cases:[]}
data modify storage call_stack: this.test_suite.name set from storage call_stack: this.arg0

scoreboard players operation $status unittest = #status.running unittest
execute if data storage call_stack: this.multi_tick run scoreboard players operation $status unittest = #status.running_multi unittest