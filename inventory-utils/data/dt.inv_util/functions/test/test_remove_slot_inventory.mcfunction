function call_stack:push

clear @s minecraft:feather
replaceitem entity @s inventory.17 minecraft:feather 2
data modify storage call_stack: call.arg0 set value 26
function dt.inv_util:remove_slot

scoreboard players set result dt.tmp 0
execute unless data entity @s Inventory[{id:"minecraft:feather"}] run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"remove_slot inventory"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"remove_slot inventory"}]

function call_stack:pop