function call_stack:push
data modify storage call_stack: this.test_suite set value {name:"Test Suite",test_cases:[]}
data modify storage call_stack: this.test_suite.name set from storage call_stack: this.arg0
scoreboard players operation $status unittest = #status.running unittest
# tag the current player as the one to report (tellraw) the results to
execute unless data storage call_stack: {this:{report_to_all:true}} run tag @a remove dt.unittest.tester
execute unless data storage call_stack: {this:{report_to_all:true}} run tag @s add dt.unittest.tester
