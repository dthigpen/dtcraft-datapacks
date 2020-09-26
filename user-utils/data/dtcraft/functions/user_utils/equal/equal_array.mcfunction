say equal/equal_array

# Unpack the arguments
data modify storage dtcraft:user_utils array1 set from storage dtcraft:tmp arg1
data modify storage dtcraft:user_utils array2 set from storage dtcraft:tmp arg2

# Call function to check if sizes are equal
execute store result storage dtcraft:tmp arg1 int 1 run data get storage dtcraft:user_utils array1
execute store result storage dtcraft:tmp arg2 int 1 run data get storage dtcraft:user_utils array2
function dtcraft:user_utils/equal/equal_value

#execute if score result dt.tmp matches 0 store result score arg1 dt.user_utils run data get storage dtcraft:user_utils array1
data modify storage dtcraft:tmp arg1 set from storage dtcraft:user_utils array1
data modify storage dtcraft:tmp arg2 set from storage dtcraft:user_utils array2
execute if score result dt.tmp matches 0 run function dtcraft:user_utils/equal/equal_array_loop

