function dtcraft:call_stack/push

clear @s minecraft:feather
replaceitem entity @s inventory.17 minecraft:feather 2
replaceitem entity @s inventory.24 minecraft:feather 3
function dtcraft:inventory_utils/get_inventory
data modify storage dtcraft:call_stack this.inventory set from storage dtcraft:call_stack call.result
data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.inventory
data modify storage dtcraft:call_stack call.arg1 set value "minecraft:feather"
function dtcraft:inventory_utils/arrays/get_all_by_id
data modify storage dtcraft:call_stack this.feathers set from storage dtcraft:call_stack call.result

scoreboard players set result dt.tmp 0
execute if data storage dtcraft:call_stack this.feathers[{Slot:26b, id:"minecraft:feather"}] if data storage dtcraft:call_stack this.feathers[{Slot:33b, id:"minecraft:feather"}] run scoreboard players set result dt.tmp 1
#todo check for size
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"get_all_by_id inventory"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"get_all_by_id inventory"}]


function dtcraft:call_stack/pop