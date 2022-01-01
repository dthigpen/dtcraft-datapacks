function call_stack:push
data modify storage call_stack: this.temp_array set from storage call_stack: this.arg0
data modify storage call_stack: this.item_counts set from storage call_stack: this.arg1

scoreboard players reset $id1 dt.tmp

# add values to first "row" and delete others
data modify storage call_stack: this.temp_array[0] append from storage call_stack: this.temp_array[1][]
data remove storage call_stack: this.temp_array[1]
data modify storage call_stack: this.temp_array[0] append from storage call_stack: this.temp_array[1][]
data remove storage call_stack: this.temp_array[1]

# add values to first "row" and delete others
data modify storage call_stack: this.item_counts[0] append from storage call_stack: this.item_counts[1][]
data remove storage call_stack: this.item_counts[1]
data modify storage call_stack: this.item_counts[0] append from storage call_stack: this.item_counts[1][]
data remove storage call_stack: this.item_counts[1]
# remove any zeros
#[[[cog
#   cog.outl(f'data modify storage call_stack: this.return set value [[ [] ],[ [] ]]')
#   for i in range(0,9):
#       cog.outl(f'execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][{i}]')
#       cog.outl(f'execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][{i}]')
#       cog.outl(f'execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][{i}]')
#]]]
data modify storage call_stack: this.return set value [[ [] ],[ [] ]]
execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][0]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][0]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][0]
execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][1]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][1]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][1]
execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][2]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][2]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][2]
execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][3]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][3]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][3]
execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][4]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][4]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][4]
execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][5]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][5]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][5]
execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][6]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][6]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][6]
execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][7]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][7]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][7]
execute store result score $id1 dt.tmp run data get storage call_stack: this.temp_array[0][8]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[0][0] append from storage call_stack: this.temp_array[0][8]
execute unless score $id1 dt.tmp matches 0 run data modify storage call_stack: this.return[1][0] append from storage call_stack: this.item_counts[0][8]
#[[[end]]]

function call_stack:pop