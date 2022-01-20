#> dt.array:api/reduce/flatten
# Flatten subarrays into a single array
# @params
# @output
# TODO: Add depth param
function call_stack:push
data modify storage call_stack: this.return set value []
data modify storage call_stack: this.return append from storage call_stack: this.arg0[][]
function call_stack:pop