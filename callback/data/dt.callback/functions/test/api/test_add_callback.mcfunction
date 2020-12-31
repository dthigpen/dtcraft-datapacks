function call_stack:push
#tellraw @p [{"text":"Flag: "},{"nbt":"flags.test_add_callback_1","storage":"dt.callback:test"}]

data modify storage call_stack: this.test_name set value "add_callback"
data modify storage call_stack: this.callback set value "function dt.callback:test/api/sample_callback"
data modify storage call_stack: this.data set value 1111
data modify storage call_stack: this.expected set value 1111

execute unless data storage dt.callback:test flags.test_add_callback_1 run data modify storage call_stack: call.arg0 set from storage call_stack: this.callback
execute unless data storage dt.callback:test flags.test_add_callback_1 run data modify storage call_stack: call.arg1 set from storage call_stack: this.data
execute unless data storage dt.callback:test flags.test_add_callback_1 run function dt.callback:api/add_callback_self
execute unless data storage dt.callback:test flags.test_add_callback_1 run schedule function dt.callback:test/api/test_add_callback 3t replace


execute if data storage dt.callback:test flags.test_add_callback_1 run data modify storage call_stack: this.actual set from storage dt.callback:test data.val1
#execute if data storage dt.callback:test flags.test_add_callback_1 run tellraw @p ["Actual: ",{"nbt":"this.actual","storage":"call_stack:"}]
execute if data storage dt.callback:test flags.test_add_callback_1 run execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if data storage dt.callback:test flags.test_add_callback_1 run execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if data storage dt.callback:test flags.test_add_callback_1 run execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data modify storage dt.callback:test flags.test_add_callback_1 set value true
function call_stack:pop

function call_stack:push
#tellraw @p [{"text":"Flag: "},{"nbt":"flags.test_add_callback_2","storage":"dt.callback:test"}]

data modify storage call_stack: this.test_name set value "add_callback_2"
data modify storage call_stack: this.callback set value "function dt.callback:test/api/sample_callback_2"
data modify storage call_stack: this.data set value 2222
data modify storage call_stack: this.expected set value 2222

execute unless data storage dt.callback:test flags.test_add_callback_2 run data modify storage call_stack: call.arg0 set from storage call_stack: this.callback
execute unless data storage dt.callback:test flags.test_add_callback_2 run data modify storage call_stack: call.arg1 set from storage call_stack: this.data
execute unless data storage dt.callback:test flags.test_add_callback_2 run function dt.callback:api/add_callback_self
execute unless data storage dt.callback:test flags.test_add_callback_2 run schedule function dt.callback:test/api/test_add_callback 10t replace


execute if data storage dt.callback:test flags.test_add_callback_2 run data modify storage call_stack: this.actual set from storage dt.callback:test data.val2
#execute if data storage dt.callback:test flags.test_add_callback_2 run tellraw @p ["Actual: ",{"nbt":"this.actual","storage":"call_stack:"}]
execute if data storage dt.callback:test flags.test_add_callback_2 run execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if data storage dt.callback:test flags.test_add_callback_2 run execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if data storage dt.callback:test flags.test_add_callback_2 run execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data modify storage dt.callback:test flags.test_add_callback_2 set value true
function call_stack:pop