#> dt.inventory:api/item/from_id
# Create an item (name and count) from an item integer id
# @params
#   storage call_stack: call.arg0
#       int item id
#   storage call_stack: call.arg1
#       optional number count of item
# @output
#   storage call_stack: this.return
#       object item or not set
function call_stack:push
# execute store result score $id dt.tmp run data get storage call_stack: this.arg0
data modify storage call_stack: this.count set value 1b
execute if data storage call_stack: this.arg1 store result storage call_stack: this.count byte 1 run data get storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
function dt.inventory:internal/item/get_name_from_id
execute if data storage call_stack: call.return run data modify storage call_stack: this.return set value {Count:1b,id:"minecraft:air"}
execute if data storage call_stack: call.return run data modify storage call_stack: this.return.id set from storage call_stack: call.return
execute if data storage call_stack: call.return run data modify storage call_stack: this.return.Count set from storage call_stack: this.count
function call_stack:pop