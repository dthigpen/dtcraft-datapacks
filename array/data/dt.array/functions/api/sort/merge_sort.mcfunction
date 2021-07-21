function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0

#> algorithm
# arr1 = arr[1..n/2]
# arr2 = arr[n/2 + 1..n]
# arr1 = merge_sort(arr1)
# arr2 = merge_sort(arr2)
# return merge(arr1, arr2)

# case 1: empty array
# case 2: non-empty array

data modify storage call_stack: this.result set value []
execute if data storage call_stack: this.array[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: this.array[0] run data modify storage call_stack: call.arg1 set value []
execute if data storage call_stack: this.array[0] run function dt.array:internal/sort/merge_sort_loop
execute if data storage call_stack: this.array[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop