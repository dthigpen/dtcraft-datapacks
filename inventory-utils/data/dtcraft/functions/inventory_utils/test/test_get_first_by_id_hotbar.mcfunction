function dtcraft:call_stack/push

clear @s minecraft:feather
replaceitem entity @s hotbar.2 minecraft:feather 2
replaceitem entity @s hotbar.6 minecraft:feather 3
function dtcraft:inventory_utils/get_hotbar
data modify storage dtcraft:call_stack this.hotbar set from storage dtcraft:call_stack this.call.result
data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.hotbar
data modify storage dtcraft:call_stack call.arg1 set value "minecraft:feather"
function dtcraft:inventory_utils/arrays/get_first_by_id
data modify storage dtcraft:call_stack this.found_item set from storage dtcraft:call_stack this.call.result
scoreboard players set result dt.tmp 0
execute if data storage dtcraft:call_stack this.found_item{Slot:2b, id:"minecraft:feather"} run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"get_first_by_id hotbar"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"get_first_by_id hotbar"}]

function dtcraft:call_stack/pop