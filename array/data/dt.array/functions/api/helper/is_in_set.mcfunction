#> dt.array:api/helper/is_in_set
# Return true if the given array contains the given value
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       value
# @output
#   storage call_stack: this.return
#       true or not set
function call_stack:push

data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
function dt.array:api/index_of
# data modify storage call_stack: this.return set value false
execute unless data storage call_stack: {call:{return:-1}} run data modify storage call_stack: this.return set value true
function call_stack:pop