function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.test_name set value "update"
function dtcraft:user_utils/create
data modify storage dtcraft:call_stack this.test_user set from storage dtcraft:call_stack call.result
data modify storage dtcraft:call_stack this.test_user.data set value {foo:"bar"}
data modify storage dtcraft:call_stack this.test_users set value []
data modify storage dtcraft:call_stack this.test_users append from storage dtcraft:call_stack this.test_user
data modify storage dtcraft:call_stack this.test_user.data set value {fizz:"buzz"}
data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.test_users
data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.test_user
function dtcraft:user_utils/update
data modify storage dtcraft:call_stack this.updated_users set from storage dtcraft:call_stack call.result
scoreboard players set result dt.tmp 0
execute store success score result dt.tmp run data get storage dtcraft:call_stack this.updated_users[{data:{fizz:"buzz"}}]
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]


function dtcraft:call_stack/pop