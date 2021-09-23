function call_stack:push
data modify storage call_stack: this.test_name set value "balance_numbers"
data modify storage call_stack: this.input set value [3,1,1,0]
data modify storage call_stack: this.expected set value [2b,1b,1b,1b]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:internal/crafter/balance_numbers
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "balance_numbers_2"
data modify storage call_stack: this.input set value [3,0,0,0]
data modify storage call_stack: this.expected set value [1b,1b,1b]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:internal/crafter/balance_numbers
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "balance_numbers_3"
data modify storage call_stack: this.input set value [0,0,0]
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:internal/crafter/balance_numbers
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "balance_numbers_no_change"
data modify storage call_stack: this.input set value [3,3,3]
data modify storage call_stack: this.expected set value [3b,3b,3b]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:internal/crafter/balance_numbers
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "balance_numbers_divisor"
data modify storage call_stack: this.input set value [5,2,2]
data modify storage call_stack: this.expected set value [3b,3b,3b]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:internal/crafter/balance_numbers
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "balance_numbers_extra_zeros"
data modify storage call_stack: this.input set value [2,0,0,0,0]
data modify storage call_stack: this.expected set value [1b,1b]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:internal/crafter/balance_numbers
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop