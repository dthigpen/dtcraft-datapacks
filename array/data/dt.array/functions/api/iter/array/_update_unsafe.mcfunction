# remove init tag
data remove storage call_stack: this.array.readonly.init

# value
data remove storage call_stack: this.array.readonly.value
data modify storage call_stack: this.array.readonly.value set from storage call_stack: this.array.prev[-1]

# size
scoreboard players reset #int1 dt.tmp
scoreboard players reset #int2 dt.tmp
execute store result score #int1 dt.tmp run data get storage call_stack: this.array.prev
execute store result score #int2 dt.tmp run data get storage call_stack: this.array.next
scoreboard players operation #int2 dt.tmp += #int1 dt.tmp
execute store result storage call_stack: this.array.readonly.size int 1 run scoreboard players get #int2 dt.tmp

# index
scoreboard players remove #int1 dt.tmp 1
execute store result storage call_stack: this.array.readonly.index int 1 run scoreboard players get #int1 dt.tmp
