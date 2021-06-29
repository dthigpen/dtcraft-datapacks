function call_stack:push

clear @s minecraft:feather
item replace entity @s hotbar.2 with minecraft:feather 2
item replace entity @s hotbar.6 with minecraft:feather 3
function dt.inventory:api/get_hotbar
data modify storage call_stack: this.hotbar set from storage call_stack: call.result
scoreboard players set result dt.tmp 0
execute if data storage call_stack: this.hotbar[{Slot:2b, id:"minecraft:feather"}] if data storage call_stack: this.hotbar[{Slot:6b, id:"minecraft:feather"}] run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"get_first_by_id hotbar"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"get_first_by_id hotbar"}]

function call_stack:pop