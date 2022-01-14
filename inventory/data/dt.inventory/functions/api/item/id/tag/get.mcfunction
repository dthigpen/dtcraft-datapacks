#> dt.inventory:api/item/id/tag/get
# tag the given item with its corresponding numeric id at path tag.dt.id
# @params
#   storage call_stack: call.arg0
#       object item
# @output
#   storage call_stack: this.return
#       object item
function call_stack:push

data modify storage call_stack: this.return set from storage call_stack: this.arg0
# get the id from the data object returned from the function below and add it as a tag to the item
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0.id
function dt.inventory:internal/item/get_item_data_from_name
execute if data storage call_stack: call.return run data modify storage call_stack: this.return.tag.dt.id set from storage call_stack: call.return.id

function call_stack:pop