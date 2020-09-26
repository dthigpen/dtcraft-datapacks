
#region create
# create by uuid
data modify storage dtcraft:tmp test_name set value "create_by_uuid"
data modify storage dtcraft:tmp arg1 set from entity @s UUID
function dtcraft:user_utils/create_by_uuid
execute store result score result dt.tmp run data modify storage dtcraft:tmp result.UUID set from entity @s UUID
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
# create self
data modify storage dtcraft:tmp test_name set value "create"
function dtcraft:user_utils/create
execute store result score result dt.tmp run data modify storage dtcraft:tmp result.UUID set from entity @s UUID
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
#endregion

#region get
# get_by_uuid
data modify storage dtcraft:tmp test_name set value "get_by_uuid"
function dtcraft:user_utils/create
data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp result
data modify storage dtcraft:tmp test_users set value []
data modify storage dtcraft:tmp test_users append from storage dtcraft:tmp test_user
data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp test_users
data modify storage dtcraft:tmp arg2 set from storage dtcraft:tmp test_users[0].UUID
function dtcraft:user_utils/get_by_uuid
data modify storage dtcraft:tmp test_user2 set from storage dtcraft:tmp result
scoreboard players set result dt.tmp 0
execute store result score result dt.tmp run data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp test_user2
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
# get
data modify storage dtcraft:tmp test_name set value "get"
function dtcraft:user_utils/create
data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp result
data modify storage dtcraft:tmp test_users set value []
data modify storage dtcraft:tmp test_users append from storage dtcraft:tmp test_user
data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp test_users
#clear out second arg from last test
data modify storage dtcraft:tmp arg2 set value ""
function dtcraft:user_utils/get
data modify storage dtcraft:tmp test_user2 set from storage dtcraft:tmp result
scoreboard players set result dt.tmp 0
execute store result score result dt.tmp run data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp test_user2
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
# get_or_create_by_uuid
## get_or_create_by_uuid user exists
data modify storage dtcraft:tmp test_name set value "get_or_create_by_uuid_user_exists"
function dtcraft:user_utils/create
data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp result
data modify storage dtcraft:tmp test_users set value []
data modify storage dtcraft:tmp test_users append from storage dtcraft:tmp test_user
data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp test_users
data modify storage dtcraft:tmp arg2 set from storage dtcraft:tmp test_users[0].UUID
function dtcraft:user_utils/get_or_create_by_uuid
data modify storage dtcraft:tmp test_user2 set from storage dtcraft:tmp result
scoreboard players set result dt.tmp 0
execute store result score result dt.tmp run data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp test_user2
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
## get_or_create_by_uuid user not exists
data modify storage dtcraft:tmp test_name set value "get_or_create_by_uuid_user_exists"
function dtcraft:user_utils/create
data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp result
data modify storage dtcraft:tmp test_users set value []
data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp test_users
data modify storage dtcraft:tmp arg2 set from storage dtcraft:tmp test_users[0].UUID
function dtcraft:user_utils/get_or_create_by_uuid
data modify storage dtcraft:tmp test_user2 set from storage dtcraft:tmp result
scoreboard players set result dt.tmp 0
execute store result score result dt.tmp run data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp test_user2
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
# get_or_create
#endregion

#region update
data modify storage dtcraft:tmp test_name set value "update"
function dtcraft:user_utils/create
data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp result
data modify storage dtcraft:tmp test_user.data set value {foo:"bar"}
data modify storage dtcraft:tmp test_users set value []
data modify storage dtcraft:tmp test_users append from storage dtcraft:tmp test_user
data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp test_users
data modify storage dtcraft:tmp arg2 set from storage dtcraft:tmp test_user
function dtcraft:user_utils/update
scoreboard players set result dt.tmp 0
execute store success score result dt.tmp run data get storage dtcraft:tmp result[{data:{foo:"bar"}}]
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
#endregion

#region delete
# delete by uuid
data modify storage dtcraft:tmp test_name set value "delete_by_uuid"
function dtcraft:user_utils/create
data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp result
data modify storage dtcraft:tmp test_users set value []
data modify storage dtcraft:tmp test_users append from storage dtcraft:tmp test_user
data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp test_users
data modify storage dtcraft:tmp arg2 set from entity @s UUID
function dtcraft:user_utils/delete_by_uuid
scoreboard players set result dt.tmp 1
execute if data storage dtcraft:tmp {result:[{}]} run scoreboard players set result dt.tmp 0
execute if data storage dtcraft:tmp {result:[]} run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
# delete
data modify storage dtcraft:tmp test_name set value "delete"
function dtcraft:user_utils/create
data modify storage dtcraft:tmp test_user set from storage dtcraft:tmp result
data modify storage dtcraft:tmp test_users set value []
data modify storage dtcraft:tmp test_users append from storage dtcraft:tmp test_user
data modify storage dtcraft:tmp arg1 set from storage dtcraft:tmp test_users
# clear out arg2 from last test
data modify storage dtcraft:tmp arg2 set value ""
function dtcraft:user_utils/delete
scoreboard players set result dt.tmp 1
execute if data storage dtcraft:tmp {result:[{}]} run scoreboard players set result dt.tmp 0
execute if data storage dtcraft:tmp {result:[]} run scoreboard players set result dt.tmp 1
execute if score result dt.tmp matches 0 run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
execute if score result dt.tmp matches 1 run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"test_name","storage":"dtcraft:tmp"}]
#endregion
data modify storage dtcraft:user_utils test_users set value []
