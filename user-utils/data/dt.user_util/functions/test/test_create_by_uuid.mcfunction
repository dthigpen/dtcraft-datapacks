function call_stack:push
data modify storage call_stack: this.test_name set value "create_by_uuid"
data modify storage call_stack: call.arg0 set from entity @s UUID
function dt.user_util:create_by_uuid
data modify storage call_stack: this.new_user set from storage call_stack: call.result 
execute store success score result dt.tmp run data modify storage call_stack: this.new_user.UUID set from entity @s UUID
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop