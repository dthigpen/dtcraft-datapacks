data modify storage dtcraft:user_utils users set from storage dtcraft:tmp arg1
data modify storage dtcraft:user_utils user set from storage dtcraft:tmp arg2

data modify storage dtcraft:user_utils other_users set value []

data modify storage dtcraft:tmp arg1 set from storage dtcraft:user_utils users
data modify storage dtcraft:tmp arg2 set from storage dtcraft:user_utils user.UUID
function dtcraft:user_utils/get_by_uuid

data modify storage dtcraft:user_utils other_users prepend from storage dtcraft:user_utils user

data modify storage dtcraft:tmp result set from storage dtcraft:user_utils other_users