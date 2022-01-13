function call_stack:push
data modify storage call_stack: this.numbers set from storage call_stack: this.arg0
data modify storage call_stack: this.add_amount set from storage call_stack: this.arg1
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value []

execute if data storage call_stack: this.numbers[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

# IF CONTINUE
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.numbers[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.add_amount
execute if data storage call_stack: this.continue run function dt.array:api/helper/math/add
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return append from storage call_stack: call.return

execute if data storage call_stack: this.continue run data remove storage call_stack: this.numbers[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.numbers
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.add_amount
execute if data storage call_stack: this.continue run data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.array:api/math/add
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop