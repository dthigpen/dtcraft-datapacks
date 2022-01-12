#> dt.inventory:api/item/id/tag/get
# tag the given item with its corresponding numeric id at path tag.dt.id
# @params
#   storage call_stack: call.arg0
#       object item
# @output
#   storage call_stack: this.return
#       object item
function call_stack:push
data modify storage call_stack: this.item set from storage call_stack: this.arg0

# TODO consider internal function to run as armorstand to avoid multiple entity selectors

data modify storage call_stack: this.slot set from storage call_stack: this.item.Slot
data remove storage call_stack: this.item.Slot
data modify storage call_stack: this.item.tag.drop_contents set value true
execute as @e[type=armor_stand,tag=dt_inventory,limit=1] run data modify entity @s HandItems[0] set from storage call_stack: this.item
data remove storage call_stack: this.item.tag.drop_contents

data modify storage call_stack: this.item.Slot set value 0b
data modify block 2999999 255 2999999 Items[] set from storage call_stack: this.item
# TODO make this a api:shulker/loot/replace/block command
execute unless data storage call_stack: {this:{item:{id:"minecraft:air"}}} as @e[type=armor_stand,tag=dt_inventory,limit=1] at @s run loot replace block 2999999 255 2999999 container.0 mine 2999999 255 2999999 mainhand
execute unless data storage call_stack: {this:{item:{id:"minecraft:air"}}} run function dt.inventory:api/shulker/items/get
execute unless data storage call_stack: {this:{item:{id:"minecraft:air"}}} run data modify storage call_stack: this.return set from storage call_stack: call.return[0]
execute if data storage call_stack: {this:{item:{id:"minecraft:air"}}} run data modify storage call_stack: this.return set from storage call_stack: this.item
execute if data storage call_stack: {this:{item:{id:"minecraft:air"}}} run data modify storage call_stack: this.return merge value {tag:{dt:{id:0}}}
data modify storage call_stack: this.return.Slot set from storage call_stack: this.slot
# Clean up
execute as @e[type=armor_stand,tag=dt_inventory,limit=1] run data modify entity @s HandItems[0] set value {id:"minecraft:air"}


function call_stack:pop