say refill_slot

# get the user
# data modify storage 
data modify storage dtcraft:tmp arg1 set from storage dtcraft:refill users
data modify storage dtcraft:tmp arg2 set from entity @s UUID
function dtcraft:user_utils/get_by_uuid

execute if score result dt.tmp = #found dt.enum run say User found
execute if score result dt.tmp = #not_found dt.enum run say User not found
execute if score result dt.tmp = #found dt.enum run data modify storage dtcraft:refill this_user set from storage dtcraft.user_utils result
execute if score result dt.tmp = #not_found dt.enum run function dtcraft:refill/create_user
execute if score result dt.tmp = #not_found dt.enum run data modify storage dtcraft:refill this_user set from storage dtcraft:refill result

#tellraw @p {"nbt":"this_user","storage":"dtcraft:refill"}

data modify storage dtcraft:refill this_user.data.refills prepend value {slot:-1}
execute store result storage dtcraft:refill this_user.data.refills[0].slot int 1 run scoreboard players get @s dt.refill.slot
