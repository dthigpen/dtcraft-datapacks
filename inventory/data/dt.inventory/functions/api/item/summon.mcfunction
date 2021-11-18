#> dt.inventory:api/item/summon
# summon an arbitrary item and merge in the given nbt
# @params
#   storage call_stack: call.arg0
#       item nbt that is merged into the data of the summoned item. Ex: {Item:{id:"minecraft:egg",Count:1b}}
# @output
#   storage call_stack: call.return
#       boolean true if item was successfully summoned
function call_stack:push
data modify storage call_stack: this.item set from storage call_stack: this.arg0

data modify storage call_stack: this.return set value false
data modify storage call_stack: this.new_tags set from storage call_stack: this.item.Tags
data remove storage call_stack: this.item.Tags
summon item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",Count:1b},Tags:["dt.inventory.init"]}
execute as @e[type=item,tag=dt.inventory.init,limit=1,distance=..0.2,sort=nearest] run data modify entity @s {} merge from storage call_stack: this.item
execute as @e[type=item,tag=dt.inventory.init,limit=1,distance=..0.2,sort=nearest] run data modify storage call_stack: this.return set value true
execute as @e[type=item,tag=dt.inventory.init,limit=1,distance=..0.2,sort=nearest] run data modify entity @s Tags set from storage call_stack: this.new_tags
kill @e[type=item,tag=dt.inventory.init,limit=1,distance=..0.2,sort=nearest, nbt={Item:{id:"minecraft:knowledge_book"}}]
tag @e[type=item,tag=dt.inventory.init,limit=1,distance=..0.2,sort=nearest] remove dt.inventory.init

function call_stack:pop