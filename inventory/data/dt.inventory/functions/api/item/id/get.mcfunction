#> dt.inventory:api/item/id/get
# Get the numeric id of the given item 
# @params
#   storage call_stack: call.arg0
#       object item to get the numeric id for
# @output
#   storage call_stack: this.return
#       int numeric object id
function call_stack:push
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
function dt.inventory:api/item/id/tag/get
data modify storage call_stack: this.return set from storage call_stack: call.return.tag.dt.id
function call_stack:pop