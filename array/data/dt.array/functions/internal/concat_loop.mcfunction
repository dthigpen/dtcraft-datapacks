function call_stack:push

data modify storage call_stack: this.list1 set from storage call_stack: this.arg0
data modify storage call_stack: this.list2 set from storage call_stack: this.arg1

data modify storage call_stack: this.list1 append from storage call_stack: this.list2[0]
data remove storage call_stack: this.list2[0]
data modify storage call_stack: this.return set from storage call_stack: this.list1

execute if data storage call_stack: this.list2[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.list1
execute if data storage call_stack: this.list2[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.list2
execute if data storage call_stack: this.list2[0] run function dt.array:internal/concat_loop
execute if data storage call_stack: this.list2[0] run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop