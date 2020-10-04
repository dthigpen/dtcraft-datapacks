# get_by_uuid
data modify storage dtcraft:call_stack this.test_name set value "get_by_uuid"
function dtcraft:user_utils/create
data modify storage dtcraft:call_stack this.test_user set from storage dtcraft:call_stack this.call.result
data modify storage dtcraft:call_stack this.test_users set value []
data modify storage dtcraft:call_stack this.test_users append from storage dtcraft:call_stack this.test_user
data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.test_users
data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.test_users[0].UUID
function dtcraft:user_utils/get_by_uuid
data modify storage dtcraft:call_stack this.test_user2 set from storage dtcraft:call_stack this.call.result
scoreboard players set result dt.tmp 0
execute store result score result dt.tmp run data modify storage dtcraft:call_stack this.test_user set from storage dtcraft:call_stack this.test_user2
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]