function call_stack:push

# Set some container block with items
setblock 2999999 250 2999999 hopper
data modify block 2999999 250 2999999 Items set value [{Slot:0b,id:"minecraft:feather",Count:1b},{Slot:3b,id:"minecraft:feather",Count:1b}]
data modify storage call_stack: this.items_to_insert set value [{Slot:99b,id:"minecraft:slime_ball",Count:1b}]
data modify storage call_stack: this.expected set value [{Slot:0b,id:"minecraft:feather",Count:1b},{Slot:1b,id:"minecraft:slime_ball",Count:1b},{Slot:3b,id:"minecraft:feather",Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.items_to_insert
function dt.inventory:api/shulker/items/set
execute positioned 2999999 250 2999999 run function dt.inventory:api/shulker/loot/insert/block

data modify storage call_stack: this.actual set from block 2999999 250 2999999 Items
data modify storage call_stack: this.success set from storage call_stack: call.return

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"replace_slot hotbar"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"replace_slot hotbar"}]

function call_stack:pop