function dtcraft:call_stack/push

# delete by uuid
data modify storage dtcraft:call_stack this.test_name set value "delete_by_uuid"
function dtcraft:user_utils/create
data modify storage dtcraft:call_stack this.test_user set from storage dtcraft:call_stack this.calls[0].value
data modify storage dtcraft:call_stack this.test_users set value []
data modify storage dtcraft:call_stack this.test_users append from storage dtcraft:call_stack this.test_user
data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.test_users
data modify storage dtcraft:call_stack call.arg1 set from entity @s UUID
function dtcraft:user_utils/delete_by_uuid
data modify storage dtcraft:call_stack this.users_after_delete set from storage dtcraft:call_stack this.calls[0].valu
scoreboard players set result dt.tmp 1
execute if data storage dtcraft:call_stack {this:{users_after_delete:[{}]}} run scoreboard players set result dt.tmp 0
execute if data storage dtcraft:call_stack {this:{users_after_delete:[]}} run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]


function dtcraft:call_stack/pop