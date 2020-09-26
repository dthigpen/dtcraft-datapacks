#say get_loop

data modify storage dtcraft:user_utils users set from storage dtcraft:tmp arg1
data modify storage dtcraft:user_utils uuid set from storage dtcraft:tmp arg2

data modify storage dtcraft:tmp arg1 set from storage dtcraft:user_utils users[0].UUID
data modify storage dtcraft:tmp arg2 set from storage dtcraft:user_utils uuid
function dtcraft:user_utils/equal/equal_value

# If not equal pop array and run again
execute if score result dt.tmp = #equal dt.enum run data modify storage dtcraft:tmp result set from storage dtcraft:user_utils users[0]
execute if score result dt.tmp = #equal dt.enum run data remove storage dtcraft:user_utils users[0]

# TODO Decide whether or not to move other_users fucntionality out 
data modify storage dtcraft:user_utils other_users append from storage dtcraft:user_utils users[0]

#region not_equal
execute if score result dt.tmp = #not_equal dt.enum run data remove storage dtcraft:user_utils users[0]
execute if score result dt.tmp = #not_equal dt.enum run execute store result score size1 dt.user_utils run data get storage dtcraft:user_utils users
execute if score result dt.tmp = #not_equal dt.enum run data modify storage dtcraft:tmp arg1 set from storage dtcraft:user_utils users
execute if score result dt.tmp = #not_equal dt.enum run data modify storage dtcraft:tmp arg2 set from storage dtcraft:user_utils uuid
execute if score result dt.tmp = #not_equal dt.enum run execute if score size1 dt.user_utils matches 1.. run function dtcraft:user_utils/get_loop
#endregion
