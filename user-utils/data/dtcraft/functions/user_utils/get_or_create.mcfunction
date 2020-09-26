#say get_or_create

data modify storage dtcraft:user_utils users set from storage dtcraft:tmp arg1
data modify storage dtcraft:tmp arg2 set from entity @s UUID
function dtcraft:user_utils/get_or_create_by_uuid