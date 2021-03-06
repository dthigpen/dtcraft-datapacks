function call_stack:push


## get_or_create_by_uuid user not exists
data modify storage call_stack: this.test_name set value "get_or_create_by_uuid_user_not_exists"
function dt.user_util:create
data modify storage call_stack: this.test_user set from storage call_stack: call.result
data modify storage call_stack: this.test_users set value []
data modify storage call_stack: call.arg0 set from storage call_stack: this.test_users
data modify storage call_stack: call.arg1 set from storage call_stack: this.test_user.UUID
function dt.user_util:get_or_create_by_uuid
data modify storage call_stack: this.test_user2 set from storage call_stack: call.result
scoreboard players set result dt.tmp 0
execute store result score result dt.tmp run data modify storage call_stack: this.test_user set from storage call_stack: this.test_user2
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

function call_stack:pop