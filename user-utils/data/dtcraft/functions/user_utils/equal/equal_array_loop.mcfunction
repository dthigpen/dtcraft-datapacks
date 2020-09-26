say equal/equal_array_loop

data modify storage dtcraft:user_utils array1 set from storage dtcraft:tmp arg1
data modify storage dtcraft:user_utils array2 set from storage dtcraft:tmp arg2

# check that the first values are equal
data modify storage dtcraft:tmp arg1 set from storage dtcraft:user_utils array1[0]
data modify storage dtcraft:tmp arg2 set from storage dtcraft:user_utils array2[0]
function dtcraft:user_utils/equal/equal_value


#tellraw @p ["",{"nbt":"arg1","storage":"dtcraft:user_utils"},{"text":" = "},{"nbt":"arg2","storage":"dtcraft:user_utils"}]
#tellraw @p {"score":{"name":"result","objective":"user_utils"}}

# Pop array
execute if score result dt.tmp matches 0 run data remove storage dtcraft:user_utils array1[0]
execute if score result dt.tmp matches 0 run data remove storage dtcraft:user_utils array2[0]

execute if score result dt.tmp matches 0 store result score size1 dt.user_utils run data get storage dtcraft:user_utils array1
execute if score result dt.tmp matches 0 if score size1 dt.user_utils matches 1.. run function dtcraft:user_utils/equal/equal_array_loop