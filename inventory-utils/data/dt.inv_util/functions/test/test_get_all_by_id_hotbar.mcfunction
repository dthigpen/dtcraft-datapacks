function call_stack:push

clear @s minecraft:feather
replaceitem entity @s hotbar.2 minecraft:feather 2
replaceitem entity @s hotbar.6 minecraft:feather 3
function dt.inv_util:get_hotbar
data modify storage call_stack: this.hotbar set from storage call_stack: call.result
data modify storage call_stack: call.arg0 set from storage call_stack: this.hotbar
data modify storage call_stack: call.arg1 set value "minecraft:feather"
function dt.inv_util:arrays/get_all_by_id
data modify storage call_stack: this.feathers set from storage call_stack: call.result

scoreboard players set result dt.tmp 0
execute if data storage call_stack: this.feathers[{Slot:2b, id:"minecraft:feather"}] if data storage call_stack: this.feathers[{Slot:6b, id:"minecraft:feather"}] run scoreboard players set result dt.tmp 1
#todo check for size
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"get_all_by_id hotbar"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"get_all_by_id hotbar"}]


function call_stack:pop