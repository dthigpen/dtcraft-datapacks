function call_stack:push
data modify storage call_stack: this.name set from storage call_stack: this.arg0

data modify storage call_stack: this.item set value {id:"",Count:1b,Slot:0b}
data modify storage call_stack: this.item.id set from storage call_stack: this.name
data modify storage call_stack: this.item.tag.drop_contents set value true
execute as @e[type=armor_stand,tag=dt_inventory,limit=1] run data modify entity @s HandItems[0] set from storage call_stack: this.item

execute in overworld run data modify block 2999999 255 2999999 Items[] set from storage call_stack: this.item
execute in overworld unless data storage call_stack: {this:{item:{id:"minecraft:air"}}} as @e[type=armor_stand,tag=dt_inventory,limit=1] at @s run loot replace block 2999999 255 2999999 container.0 mine 2999999 255 2999999 mainhand
execute unless data storage call_stack: {this:{item:{id:"minecraft:air"}}} run function dt.inventory:api/shulker/items/get
execute unless data storage call_stack: {this:{item:{id:"minecraft:air"}}} run data modify storage call_stack: this.item set from storage call_stack: call.return[0]
execute if data storage call_stack: {this:{item:{id:"minecraft:air"}}} run data modify storage call_stack: this.item merge value {tag:{dt:{id:0}}}

data modify storage call_stack: this.return set from storage call_stack: this.item.tag.dt
# clean up
execute in overworld as @e[type=armor_stand,tag=dt_inventory,limit=1] run data modify entity @s HandItems[0] set value {id:"minecraft:air"}

function call_stack:pop