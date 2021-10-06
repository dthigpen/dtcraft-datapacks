function call_stack:push
data modify storage call_stack: this.numbers set from storage call_stack: this.arg0
data modify storage call_stack: this.value set from storage call_stack: this.arg1

execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set value true
execute if data storage call_stack: this.continue 
data modify storage call_stack: call.arg0 set from storage call_stack: this.numbers[0]
data modify storage call_stack: call.arg1 set from storage call_stack: this.value
function dt.array:api/helper/math/greater_than
data modify storage call_stack: this.is_greater_than set from storage call_stack: call.return

execute if data storage call_stack: this.continue unless data storage call_stack: {this:{is_greater_than:true}} run data modify storage call_stack: this.return set value false
data remove storage call_stack: this.numbers[0]
execute if data storage call_stack: this.continue if data storage call_stack: {this:{is_greater_than:true}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.numbers
execute if data storage call_stack: this.continue if data storage call_stack: {this:{is_greater_than:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.value
execute if data storage call_stack: this.continue if data storage call_stack: {this:{is_greater_than:true}} run function dt.array:api/math/all_greater_than
execute if data storage call_stack: this.continue if data storage call_stack: {this:{is_greater_than:true}} run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop