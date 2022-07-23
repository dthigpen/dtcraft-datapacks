data modify storage call_stack: this.test_name set value "distribute_stack_item_count_1"
data modify storage call_stack: this.item set value {id:"minecraft:cobblestone",Slot:0b,Count:1b}
data modify storage call_stack: call.arg0 set from storage call_stack: this.item
data modify storage call_stack: call.arg1 set value [1]
function dt.crafting:internal/crafter/distribute_stack
data modify storage call_stack: this.new_items set from storage call_stack: call.return.new_items
data modify storage call_stack: this.free_slots set from storage call_stack: call.return.free_slots

# tellraw @p [{"nbt":"this.new_items","storage":"call_stack:"}]
# tellraw @p [{"nbt":"this.free_slots","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.new_items set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b}]
execute if score result dt.tmp = #equal dt.enum store success score result dt.tmp run data modify storage call_stack: this.free_slots set value [1]

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

#-------------------------------------------------

data modify storage call_stack: this.test_name set value "distribute_stack_item_count_3_free_1"
data modify storage call_stack: call.arg0 set value {id:"minecraft:cobblestone",Slot:0b,Count:3b}
data modify storage call_stack: call.arg1 set value [1]
function dt.crafting:internal/crafter/distribute_stack
data modify storage call_stack: this.new_items set from storage call_stack: call.return.new_items
data modify storage call_stack: this.free_slots set from storage call_stack: call.return.free_slots

# tellraw @p [{"nbt":"this.new_items","storage":"call_stack:"}]
# tellraw @p [{"nbt":"this.free_slots","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.new_items set value [{id:"minecraft:cobblestone",Slot:0b,Count:2b},{id:"minecraft:cobblestone",Slot:1b,Count:1b}]
execute store success score result dt.tmp run data modify storage call_stack: this.free_slots set value []

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

#-------------------------------------------------

data modify storage call_stack: this.test_name set value "distribute_stack_item_count_3_free_4"
data modify storage call_stack: call.arg0 set value {id:"minecraft:cobblestone",Slot:0b,Count:3b}
data modify storage call_stack: call.arg1 set value [1,2,3,4]
function dt.crafting:internal/crafter/distribute_stack
data modify storage call_stack: this.new_items set from storage call_stack: call.return.new_items
data modify storage call_stack: this.free_slots set from storage call_stack: call.return.free_slots

# tellraw @p [{"nbt":"this.new_items","storage":"call_stack:"}]
# tellraw @p [{"nbt":"this.free_slots","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.new_items set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b}]
execute if score result dt.tmp = #equal dt.enum store success score result dt.tmp run data modify storage call_stack: this.free_slots set value [3,4]

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

#-------------------------------------------------


data modify storage call_stack: this.test_name set value "distribute_stack_no_free_slots"
data modify storage call_stack: this.item set value {id:"minecraft:cobblestone",Slot:0b,Count:1b}
data modify storage call_stack: call.arg0 set from storage call_stack: this.item
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg2 set value []
function dt.crafting:internal/crafter/distribute_stack
data modify storage call_stack: this.new_items set from storage call_stack: call.return.new_items
data modify storage call_stack: this.free_slots set from storage call_stack: call.return.free_slots

# tellraw @p [{"nbt":"this.new_items","storage":"call_stack:"}]
# tellraw @p [{"nbt":"this.free_slots","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.new_items set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b}]
execute if score result dt.tmp = #equal dt.enum store success score result dt.tmp run data modify storage call_stack: this.free_slots set value []

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

#-------------------------------------------------


data modify storage call_stack: this.test_name set value "distribute_stack_empty"
data modify storage call_stack: this.item set value {}
data modify storage call_stack: call.arg0 set from storage call_stack: this.item
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg2 set value []
function dt.crafting:internal/crafter/distribute_stack
data modify storage call_stack: this.new_items set from storage call_stack: call.return.new_items
data modify storage call_stack: this.free_slots set from storage call_stack: call.return.free_slots

# tellraw @p [{"nbt":"this.new_items","storage":"call_stack:"}]
# tellraw @p [{"nbt":"this.free_slots","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.new_items set value []
execute if score result dt.tmp = #equal dt.enum store success score result dt.tmp run data modify storage call_stack: this.free_slots set value []

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

function call_stack:pop