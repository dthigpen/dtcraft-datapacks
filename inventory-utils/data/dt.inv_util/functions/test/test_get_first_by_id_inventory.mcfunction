function call_stack:push

clear @s minecraft:feather
replaceitem entity @s inventory.17 minecraft:feather 2
replaceitem entity @s inventory.24 minecraft:feather 3
function dt.inv_util:get_inventory
data modify storage call_stack: this.inventory set from storage call_stack: call.result
data modify storage call_stack: call.arg0 set from storage call_stack: this.inventory
data modify storage call_stack: call.arg1 set value "minecraft:feather"
function dt.inv_util:arrays/get_first_by_id
data modify storage call_stack: this.found_item set from storage call_stack: call.result
scoreboard players set result dt.tmp 0
execute if data storage call_stack: this.found_item{Slot:26b, id:"minecraft:feather"} run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"text":"get_first_by_id inventory"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"text":"get_first_by_id inventory"}]

function call_stack:pop