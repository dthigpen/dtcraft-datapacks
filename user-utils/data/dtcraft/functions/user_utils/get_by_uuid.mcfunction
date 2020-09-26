#say get

data modify storage dtcraft:user_utils users set from storage dtcraft:tmp arg1
data modify storage dtcraft:user_utils uuid set from storage dtcraft:tmp arg2

data modify storage dtcraft:tmp result set value {}

# these two are redundant, might remove
data modify storage dtcraft:tmp arg1 set from storage dtcraft:user_utils users
data modify storage dtcraft:tmp arg2 set from storage dtcraft:user_utils uuid
execute store result score size1 dt.user_utils run data get storage dtcraft:user_utils users

scoreboard players operation result dt.tmp = #not_found dt.enum
execute if score size1 dt.user_utils matches 1.. run function dtcraft:user_utils/get_loop
# result will be set by get_loop or the default {}
