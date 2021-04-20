function call_stack:push
data modify storage call_stack: this.test_name set value "add_tags_to_block"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b,tag:{dt_placeholder:{slot:0b,owner:[]}}},{id:"minecraft:cobblestone",Slot:1b,Count:1b,tag:{dt_placeholder:{slot:1b,owner:[]}}},{id:"minecraft:cobblestone",Slot:2b,Count:1b,tag:{dt_placeholder:{slot:2b,owner:[]}}}]
data modify storage call_stack: this.expected[0].tag.dt_placeholder.owner set from entity @s UUID
data modify storage call_stack: this.expected[1].tag.dt_placeholder.owner set from entity @s UUID
data modify storage call_stack: this.expected[2].tag.dt_placeholder.owner set from entity @s UUID

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.autocraft:test/set_test_block_items
execute positioned 777777 255 777777 run function dt.autocraft:internal/blocks/autocrafter/placeholders/add_tags_to_block_items
function dt.autocraft:test/get_test_block_items
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop