#say equal/equal_value

data modify storage dtcraft:user_utils val1 set from storage dtcraft:tmp arg1
data modify storage dtcraft:user_utils val2 set from storage dtcraft:tmp arg2

execute store success score result dt.tmp run data modify storage dtcraft:user_utils val1 set from storage dtcraft:user_utils val2