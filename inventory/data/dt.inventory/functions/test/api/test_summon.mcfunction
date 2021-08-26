function call_stack:push
data modify storage call_stack: this.test_name set value "summon_item"
data modify storage call_stack: this.expected set value {Fire:-1s, Item:{id:"minecraft:egg",Count:2b, tag:{foo:true}},Tags:["test_summon"]}

data modify storage call_stack: call.arg0 set from storage call_stack: this.expected
execute positioned ~2 ~ ~2 run function dt.inventory:api/summon
scoreboard players operation result dt.tmp = #not_equal dt.enum
execute if data storage call_stack: {call:{result:true}} run scoreboard players operation result dt.tmp = #equal dt.enum
execute if score result dt.tmp = #equal dt.enum as @e[type=item,distance=..0.2,sort=nearest,limit=1] run data modify storage call_stack: this.actual set from entity @s
execute if score result dt.tmp = #equal dt.enum as @e[type=item,distance=..0.2,sort=nearest,limit=1] store success score result dt.tmp run data modify storage call_stack: this.actual merge from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop