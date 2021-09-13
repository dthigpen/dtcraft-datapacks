function call_stack:push

# hotbar
item replace entity @s hotbar.7 with minecraft:slime_ball
data modify storage call_stack: call.arg0 set value {Slot:7b,id:"minecraft:feather",Count:3b}
function dt.inventory:api/player/item/replace

execute store success score result dt.tmp run data get entity @s Inventory[{Slot:7b,id:"minecraft:feather"}]
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"replace_slot hotbar"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"replace_slot hotbar"}]

function call_stack:pop

function call_stack:push

item replace entity @s inventory.24 with minecraft:slime_ball
data modify storage call_stack: call.arg0 set value {Slot:33b,id:"minecraft:feather",Count:3b}
function dt.inventory:api/player/item/replace
execute store success score result dt.tmp run data get entity @s Inventory[{Slot:33b,id:"minecraft:feather"}]
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"replace_slot inventory"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"replace_slot inventory"}]

function call_stack:pop
