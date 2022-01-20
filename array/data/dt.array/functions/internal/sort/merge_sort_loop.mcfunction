function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0

execute run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute run function dt.array:api/split/half
execute run data modify storage call_stack: this.array1 set from storage call_stack: call.return[0]
execute run data modify storage call_stack: this.array2 set from storage call_stack: call.return[1]

# sort array1 if at least 2 items
execute if data storage call_stack: this.array1[1] run data modify storage call_stack: call.arg0 set from storage call_stack: this.array1
execute if data storage call_stack: this.array1[1] run function dt.array:api/sort/merge_sort
execute if data storage call_stack: this.array1[1] run data modify storage call_stack: this.array1 set from storage call_stack: call.return

# sort array2 if at least 2 items
execute if data storage call_stack: this.array2[1] run data modify storage call_stack: call.arg0 set from storage call_stack: this.array2
execute if data storage call_stack: this.array2[1] run function dt.array:api/sort/merge_sort
execute if data storage call_stack: this.array2[1] run data modify storage call_stack: this.array2 set from storage call_stack: call.return

# merge the two sorted arrays
execute run data modify storage call_stack: call.arg0 set from storage call_stack: this.array1
execute run data modify storage call_stack: call.arg1 set from storage call_stack: this.array2
execute run data modify storage call_stack: call.arg2 set value []
execute run function dt.array:internal/sort/merge_sorted_loop
execute run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop
