data modify storage call_stack: this.return set from storage call_stack: this
function call_stack:pop
data modify storage call_stack: this.last_assertion set from storage call_stack: this.test_case.assertions[-1]
execute if data storage call_stack: this.test_case.assertions run data modify storage call_stack: this.can_add set value true
execute if data storage call_stack: this.last_assertion unless data storage call_stack: {this:{last_assertion:{pass:true}}} run data remove storage call_stack: this.can_add
execute if data storage call_stack: this.can_add run data modify storage call_stack: this.test_case.assertions append from storage call_stack: call.return
data remove storage call_stack: this.last_assertion
data remove storage call_stack: this.can_add