
#region replace_slot
# hotbar
replaceitem entity @s hotbar.7 minecraft:slime_ball
data modify storage dtcraft:tmp arg1 set value {Slot:7b,id:"minecraft:feather",Count:3b}
function dtcraft:inventory_utils/replace_slot
execute store success score result dt.tmp run data get entity @s Inventory[{Slot:7b,id:"minecraft:feather"}]
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"replace_slot hotbar"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"replace_slot hotbar"}]
# inventory
replaceitem entity @s inventory.24 minecraft:slime_ball
data modify storage dtcraft:tmp arg1 set value {Slot:33b,id:"minecraft:feather",Count:3b}
function dtcraft:inventory_utils/replace_slot
execute store success score result dt.tmp run data get entity @s Inventory[{Slot:33b,id:"minecraft:feather"}]
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"replace_slot inventory"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"replace_slot inventory"}]
#endregion

#region get_all_by_id
# inventory
clear @s minecraft:feather
replaceitem entity @s inventory.17 minecraft:feather 2
replaceitem entity @s inventory.24 minecraft:feather 3
function dtcraft:inventory_utils/get_inventory
data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp result
data modify storage dtcraft:tmp arg2 set value "minecraft:feather"
function dtcraft:inventory_utils/arrays/get_all_by_id
scoreboard players set result dt.tmp 0
execute if data storage dtcraft:tmp result[{Slot:26b, id:"minecraft:feather"}] if data storage dtcraft:tmp result[{Slot:33b, id:"minecraft:feather"}] run scoreboard players set result dt.tmp 1
#todo check for size
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"get_all_by_id inventory"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"get_all_by_id inventory"}]

#endregion

#region get_first_by_id
# inventory
clear @s minecraft:feather
replaceitem entity @s inventory.17 minecraft:feather 2
replaceitem entity @s inventory.24 minecraft:feather 3
function dtcraft:inventory_utils/get_inventory
data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp result
data modify storage dtcraft:tmp arg2 set value "minecraft:feather"
function dtcraft:inventory_utils/arrays/get_first_by_id
scoreboard players set result dt.tmp 0
execute if data storage dtcraft:tmp result{Slot:26b, id:"minecraft:feather"} run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"get_first_by_id inventory"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"get_first_by_id inventory"}]
# TODO hotbar
#endregion

#region remove_slot
# inventory
clear @s minecraft:feather
replaceitem entity @s inventory.17 minecraft:feather 2
data modify storage dtcraft:tmp arg1 set value 26
function dtcraft:inventory_utils/remove_slot
scoreboard players set result dt.tmp 0
execute unless data entity @s Inventory[{id:"minecraft:feather"}] run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"remove_slot inventory"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"remove_slot inventory"}]
#endregion