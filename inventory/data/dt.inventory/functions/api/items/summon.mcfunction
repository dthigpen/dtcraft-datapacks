#> dt.inventory:api/items/summon
# summon an arbitrary item and merge in the given nbt
# @params
#   storage call_stack: call.arg0
#       item nbt that is merged into the data of the summoned item. Ex: {Item:{id:"minecraft:egg",Count:1b}}
# @output
#   storage call_stack: call.return
#       boolean true if item was successfully summoned
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage call_stack: this.items[-1]
function dt.inventory:api/item/summon
data remove storage call_stack: this.items[-1]
execute if data storage call_stack: this.items[-1] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items 
execute if data storage call_stack: this.items[-1] run function dt.inventory:api/items/summon 
function call_stack:pop