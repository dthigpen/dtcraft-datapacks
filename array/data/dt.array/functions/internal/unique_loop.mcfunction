function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
data modify storage call_stack: this.unique set from storage call_stack: this.arg1
# continue if at least one item
execute if data storage call_stack: this.array[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.unique

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.unique
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.array[0]
execute if data storage call_stack: this.continue run function dt.array:api/index_of
execute if data storage call_stack: this.continue run data modify storage call_stack: this.index set from storage call_stack: call.return

# If index is not found then add it to the unique array
execute if data storage call_stack: this.continue if data storage call_stack: {this:{index:-1}} run data modify storage call_stack: this.unique append from storage call_stack: this.array[0]

execute if data storage call_stack: this.continue run data remove storage call_stack: this.array[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.unique
execute if data storage call_stack: this.continue run function dt.array:internal/unique_loop
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop