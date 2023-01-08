#> unittest:api/test_case/setup
# Sets up a new test case. Should be called before any test case logic.
# Either of the two inputs can set the test case name.
# @input
#   storage call_stack: call.arg0
#       string name set before the function is called
# @input
#   storage call_stack: this.name
#       string name set after the function is called

function call_stack:push
data modify storage call_stack: this.test_case set value {name:"Unnamed Test",assertions:[]}
data modify storage call_stack: this.test_case.name set from storage call_stack: this.arg0