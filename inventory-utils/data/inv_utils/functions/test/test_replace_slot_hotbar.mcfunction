function call_stack:push

# hotbar
replaceitem entity @s hotbar.7 minecraft:slime_ball
data modify storage call_stack: call.arg0 set value {Slot:7b,id:"minecraft:feather",Count:3b}
function inv_utils:replace_slot

execute store success score result dt.tmp run data get entity @s Inventory[{Slot:7b,id:"minecraft:feather"}]
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"replace_slot hotbar"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"replace_slot hotbar"}]

function call_stack:pop