function call_stack:push
execute store result score #original dt.tmp run data get storage call_stack: this.arg0
scoreboard players set #offset dt.tmp 1
scoreboard players set #one dt.tmp 1
scoreboard players set #two dt.tmp 2

scoreboard players operation #index dt.tmp = #original dt.tmp
scoreboard players operation #index dt.tmp -= #one dt.tmp
scoreboard players operation #index dt.tmp /= #two dt.tmp
scoreboard players operation #index dt.tmp -= #offset dt.tmp

scoreboard players operation #value dt.tmp = #original dt.tmp
scoreboard players operation #value dt.tmp += #one dt.tmp
scoreboard players operation #value dt.tmp %= #two dt.tmp

execute store result storage call_stack: this.result.index byte 1 run scoreboard players get #index dt.tmp
execute store result storage call_stack: this.result.value byte 1 run scoreboard players get #value dt.tmp

# index function
# 1 2 -> 0
# 3 4 -> 1
# 5 6 -> 2
# ...

# value function
# 1 3 5 7 9 .. -> 0
# 2 4 6 8 10 .. -> 1

function call_stack:pop