function call_stack:push
data modify storage deptree: datapacks set value []
data modify storage call_stack: this.test_name set value "test_register_name_only_loaded"
data modify storage call_stack: this.expected set value true
data modify storage deptree:register info set value {name:"dep1"}
function deptree:register
data modify storage call_stack: this.actual set value false
data modify storage call_stack: this.actual set from storage deptree:register loaded

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data remove storage deptree:register loaded

function call_stack:pop

function call_stack:push

data modify storage deptree: datapacks set value []
data modify storage call_stack: this.test_name set value "test_register_name_only_dep"
data modify storage call_stack: this.expected set value [{name:"dep1",major:0,minor:0}]
data modify storage deptree:register info set value {name:"dep1"}
function deptree:register
data modify storage call_stack: this.actual set value []
data modify storage call_stack: this.actual set from storage deptree: datapacks

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data remove storage deptree:register loaded
function call_stack:pop

function call_stack:push

data modify storage deptree: datapacks set value []
data modify storage call_stack: this.test_name set value "test_register_dep_missing"
data modify storage call_stack: this.expected set value []
data modify storage deptree:register info set value {name:"pack1",dependencies:[{name:"dep1"}]}
function deptree:register
data modify storage call_stack: this.actual set value false
data modify storage call_stack: this.actual set from storage deptree: datapacks

scoreboard players operation result dt.tmp = #not_equal dt.enum
execute unless data storage deptree:register loaded unless data storage deptree: datapacks[1] run scoreboard players operation result dt.tmp = #equal dt.enum
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data remove storage deptree:register loaded
function call_stack:pop

function call_stack:push

data modify storage deptree: datapacks set value []
data modify storage call_stack: this.test_name set value "test_register_one_dep"
data modify storage call_stack: this.expected set value [{name:"dep1",major:0,minor:0},{name:"pack1",major:0,minor:0,dependencies:[{name:"dep1"}]}]
data modify storage deptree:register info set value {name:"dep1"}
function deptree:register
data modify storage deptree:register info set value {name:"pack1",dependencies:[{name:"dep1"}]}
function deptree:register
data modify storage call_stack: this.actual set value []
data modify storage call_stack: this.actual set from storage deptree: datapacks

scoreboard players operation result dt.tmp = #not_equal dt.enum
execute if data storage deptree:register loaded store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data remove storage deptree:register loaded
function call_stack:pop

function call_stack:push

data modify storage deptree: datapacks set value []
data modify storage call_stack: this.test_name set value "test_register_one_dep_bad_ver"
data modify storage call_stack: this.expected set value [{name:"dep1",major:0,minor:0}]
data modify storage deptree:register info set value {name:"dep1"}
function deptree:register
data modify storage deptree:register info set value {name:"pack1",dependencies:[{name:"dep1",major:3}]}
function deptree:register
data modify storage call_stack: this.actual set value []
data modify storage call_stack: this.actual set from storage deptree: datapacks

scoreboard players operation result dt.tmp = #not_equal dt.enum
execute unless data storage deptree:register loaded store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data remove storage deptree:register loaded
function call_stack:pop

tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]