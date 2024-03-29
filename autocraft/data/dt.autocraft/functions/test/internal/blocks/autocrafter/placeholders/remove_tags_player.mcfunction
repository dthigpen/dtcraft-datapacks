data modify storage call_stack: this.test_name set value "remove_tags_player"
clear @s
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b,tag:{dt_placeholder:{slot:0b,owner:[]}}},{id:"minecraft:cobblestone",Slot:1b,Count:1b,tag:{dt_placeholder:{slot:1b,owner:[]}}},{id:"minecraft:cobblestone",Slot:2b,Count:1b,tag:{dt_placeholder:{slot:2b,owner:[]}}}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:3b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/loot/give/player

function dt.autocraft:internal/autocrafter/placeholders/remove_tags_player
data modify storage call_stack: call.return set from entity @s Inventory
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop