function call_stack:push

# delete by uuid
data modify storage call_stack: this.test_name set value "delete_by_uuid"
function dt.user_util:create
data modify storage call_stack: this.test_user set from storage call_stack: call.result
data modify storage call_stack: this.test_users set value []
data modify storage call_stack: this.test_users append from storage call_stack: this.test_user
data modify storage call_stack: call.arg0 set from storage call_stack: this.test_users
data modify storage call_stack: call.arg1 set from entity @s UUID
function dt.user_util:delete_by_uuid
data modify storage call_stack: this.users_after_delete set from storage call_stack: this.calls[0].valu
scoreboard players set result dt.tmp 1
execute if data storage call_stack: {this:{users_after_delete:[{}]}} run scoreboard players set result dt.tmp 0
execute if data storage call_stack: {this:{users_after_delete:[]}} run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]


function call_stack:pop