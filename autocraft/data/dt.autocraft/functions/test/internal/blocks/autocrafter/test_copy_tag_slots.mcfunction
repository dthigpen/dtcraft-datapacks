function call_stack:push
data modify storage call_stack: this.test_name set value "copy_tag_slots_one_result_one_tagged"

data modify storage call_stack: this.return_items set value [{id:"minecraft:redstone_block", Count:1b}]
data modify storage call_stack: this.tagged_items set value [{id:"minecraft:slime", Count:1b, Slot:2b}]
data modify storage call_stack: this.expected set value {slotted:[{id:"minecraft:redstone_block", Count:1b, Slot:2b}],unslotted:[]}

execute run data modify storage call_stack: call.arg0 set from storage call_stack: this.return_items
execute run data modify storage call_stack: call.arg1 set from storage call_stack: this.tagged_items
execute run function dt.autocraft:internal/blocks/autocrafter/old/copy_tag_slots
execute run data modify storage call_stack: this.actual set from storage call_stack: call.return
scoreboard players reset result dt.tmp
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "copy_tag_slots_two_result_one_tagged"

data modify storage call_stack: this.return_items set value [{id:"minecraft:honey_block", Count:1b},{id:"minecraft:glass_bottle", Count:6b}]
data modify storage call_stack: this.tagged_items set value [{id:"minecraft:slime", Count:1b, Slot:2b}]
data modify storage call_stack: this.expected set value {slotted:[{id:"minecraft:honey_block", Count:1b, Slot:2b}],unslotted:[{id:"minecraft:glass_bottle", Count:6b}]}

execute run data modify storage call_stack: call.arg0 set from storage call_stack: this.return_items
execute run data modify storage call_stack: call.arg1 set from storage call_stack: this.tagged_items
execute run function dt.autocraft:internal/blocks/autocrafter/old/copy_tag_slots
execute run data modify storage call_stack: this.actual set from storage call_stack: call.return
# execute run tellraw @p [{"nbt":"this.expected","storage":"call_stack:"}]
# execute run tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
scoreboard players reset result dt.tmp
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "copy_tag_slots_one_result_two_tagged"

data modify storage call_stack: this.return_items set value [{id:"minecraft:honey_block", Count:1b}]
data modify storage call_stack: this.tagged_items set value [{id:"minecraft:slime", Count:1b, Slot:2b},{id:"minecraft:glass_bottle", Count:6b}]
data modify storage call_stack: this.expected set value {slotted:[{id:"minecraft:honey_block", Count:1b, Slot:2b}],unslotted:[]}

execute run data modify storage call_stack: call.arg0 set from storage call_stack: this.return_items
execute run data modify storage call_stack: call.arg1 set from storage call_stack: this.tagged_items
execute run function dt.autocraft:internal/blocks/autocrafter/old/copy_tag_slots
execute run data modify storage call_stack: this.actual set from storage call_stack: call.return
scoreboard players reset result dt.tmp
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

function call_stack:pop