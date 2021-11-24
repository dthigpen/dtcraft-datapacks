function call_stack:push
data modify storage call_stack: this.test_name set value "remove_tags_item_entity"

data modify storage call_stack: this.expected set value true
data modify storage call_stack: this.actual set value true

summon minecraft:item 777777 250 777777 {Item:{id:"minecraft:cobblestone",Count:1b,tag:{dt_placeholder:{owner:[-1,-1,-1,-1],slot:-1b}}}}
execute as @e[type=item,nbt={Item:{tag:{dt_placeholder:{}}}}] run function dt.autocraft:internal/autocrafter/placeholders/remove_tags_item_entity
execute as @e[type=item,nbt={Item:{tag:{dt_placeholder:{}}}}] run data modify storage call_stack: this.actual set value false
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop