data modify storage dtcraft:user_utils users set from storage dtcraft:tmp arg1

data modify storage dtcraft:user_utils other_users set value []

data modify storage dtcraft:tmp arg1 set from storage dtcraft:user_utils users
data modify storage dtcraft:tmp arg2 set from entity @s UUID
function dtcraft:user_utils/get_by_uuid

data modify storage dtcraft:tmp result set from storage dtcraft:user_utils other_users