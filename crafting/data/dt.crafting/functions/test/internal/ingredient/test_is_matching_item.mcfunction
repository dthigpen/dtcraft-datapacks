function call_stack:push
data modify storage call_stack: this.test_name set value "is_matching_item"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set from storage call_stack: this.input

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:internal/ingredient/count_of_each
data modify storage call_stack: this.actual set from storage call_stack: call.result
tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop
