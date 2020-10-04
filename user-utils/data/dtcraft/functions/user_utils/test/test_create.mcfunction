function dtcraft:call_stack/push
# create self
data modify storage dtcraft:call_stack this.test_name set value "create"
function dtcraft:user_utils/create
data modify storage dtcraft:call_stack this.new_user set from storage dtcraft:call_stack call.result
execute store success score result dt.tmp run data modify storage dtcraft:call_stack this.new_user.UUID set from entity @s UUID
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"dtcraft:call_stack"}]


function dtcraft:call_stack/pop