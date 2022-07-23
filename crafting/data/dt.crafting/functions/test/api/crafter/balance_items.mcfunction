data modify storage call_stack: this.test_name set value "balance_1"
data modify storage call_stack: this.items set value [{id:"minecraft:cobblestone",Slot:0b,Count:5b}, {id:"minecraft:cobblestone",Slot:1b,Count:1b}, {id:"minecraft:cobblestone",Slot:2b,Count:1b}, {id:"minecraft:cobblestone",Slot:4b,Count:2b}, {id:"minecraft:cobblestone",Slot:5b,Count:1b}, {id:"minecraft:cobblestone",Slot:6b,Count:1b}, {id:"minecraft:cobblestone",Slot:7b,Count:1b}, {id:"minecraft:cobblestone",Slot:8b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:2b}, {id:"minecraft:cobblestone",Slot:1b,Count:2b}, {id:"minecraft:cobblestone",Slot:2b,Count:2b}, {id:"minecraft:cobblestone",Slot:4b,Count:2b}, {id:"minecraft:cobblestone",Slot:5b,Count:2b}, {id:"minecraft:cobblestone",Slot:6b,Count:1b}, {id:"minecraft:cobblestone",Slot:7b,Count:1b}, {id:"minecraft:cobblestone",Slot:8b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.crafting:api/crafter/balance_items
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data modify storage call_stack: this.test_name set value "balance_no_change"
data modify storage call_stack: this.items set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.crafting:api/crafter/balance_items
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data modify storage call_stack: this.test_name set value "balance_use_free_slots"
data modify storage call_stack: this.items set value [{id:"minecraft:cobblestone",Slot:0b,Count:12b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:2b}, {id:"minecraft:cobblestone",Slot:1b,Count:2b}, {id:"minecraft:cobblestone",Slot:2b,Count:2b}, {id:"minecraft:cobblestone",Slot:4b,Count:2b}, {id:"minecraft:cobblestone",Slot:5b,Count:1b}, {id:"minecraft:cobblestone",Slot:6b,Count:1b}, {id:"minecraft:cobblestone",Slot:7b,Count:1b}, {id:"minecraft:cobblestone",Slot:8b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
 


data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.crafting:api/crafter/balance_items
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data modify storage call_stack: this.test_name set value "balance_at_max"
data modify storage call_stack: this.items set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b}, {id:"minecraft:cobblestone",Slot:1b,Count:1b}, {id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:cobblestone",Slot:3b,Count:1b}, {id:"minecraft:cobblestone",Slot:4b,Count:1b}, {id:"minecraft:cobblestone",Slot:5b,Count:1b}, {id:"minecraft:cobblestone",Slot:6b,Count:1b}, {id:"minecraft:cobblestone",Slot:7b,Count:1b}, {id:"minecraft:slime_ball",Slot:8b,Count:3b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b}, {id:"minecraft:cobblestone",Slot:1b,Count:1b}, {id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:cobblestone",Slot:3b,Count:1b}, {id:"minecraft:cobblestone",Slot:4b,Count:1b}, {id:"minecraft:cobblestone",Slot:5b,Count:1b}, {id:"minecraft:cobblestone",Slot:6b,Count:1b}, {id:"minecraft:cobblestone",Slot:7b,Count:1b}, {id:"minecraft:slime_ball",Slot:8b,Count:3b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.crafting:api/crafter/balance_items
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data modify storage call_stack: this.test_name set value "balance_at_max_2"
data modify storage call_stack: this.items set value [{id:"minecraft:cobblestone",Slot:1b,Count:1b}, {id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:cobblestone",Slot:3b,Count:1b}, {id:"minecraft:cobblestone",Slot:4b,Count:1b}, {id:"minecraft:cobblestone",Slot:5b,Count:1b}, {id:"minecraft:cobblestone",Slot:6b,Count:1b}, {id:"minecraft:cobblestone",Slot:7b,Count:1b}, {id:"minecraft:slime_ball",Slot:8b,Count:3b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:1b,Count:1b}, {id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:cobblestone",Slot:3b,Count:1b}, {id:"minecraft:cobblestone",Slot:4b,Count:1b}, {id:"minecraft:cobblestone",Slot:5b,Count:1b}, {id:"minecraft:cobblestone",Slot:6b,Count:1b}, {id:"minecraft:cobblestone",Slot:7b,Count:1b}, {id:"minecraft:slime_ball",Slot:8b,Count:2b},{id:"minecraft:slime_ball",Slot:0b,Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.crafting:api/crafter/balance_items
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop