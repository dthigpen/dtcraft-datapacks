data modify storage call_stack: this.test_case.name set from storage call_stack: this.name
data modify storage call_stack: this.return set from storage call_stack: this.test_case
function call_stack:pop
execute if data storage call_stack: this.test_suite.test_cases store result storage call_stack: call.return.id int 1 run data get storage call_stack: this.test_suite.test_cases
execute if data storage call_stack: this.test_suite.test_cases run data modify storage call_stack: this.test_suite.test_cases append from storage call_stack: call.return