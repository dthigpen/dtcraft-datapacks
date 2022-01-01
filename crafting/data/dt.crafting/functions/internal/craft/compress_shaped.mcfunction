function call_stack:push
data modify storage call_stack: this.return set value [[],[]]
data modify storage call_stack: this.return[0] set from storage call_stack: this.arg0
data modify storage call_stack: this.return[1] set from storage call_stack: this.arg1

scoreboard players set $id1 dt.tmp 0
scoreboard players set $id2 dt.tmp 0
scoreboard players set $id3 dt.tmp 0

# horizontal top
execute store result score $id1 dt.tmp run data get storage call_stack: this.return[0][0][0]
execute store result score $id2 dt.tmp run data get storage call_stack: this.return[0][0][1]
execute store result score $id3 dt.tmp run data get storage call_stack: this.return[0][0][2]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][0]

scoreboard players set $id1 dt.tmp 0
scoreboard players set $id2 dt.tmp 0
scoreboard players set $id3 dt.tmp 0

# horizontal bottom
execute store result score $id1 dt.tmp run data get storage call_stack: this.return[0][-1][0]
execute store result score $id2 dt.tmp run data get storage call_stack: this.return[0][-1][1]
execute store result score $id3 dt.tmp run data get storage call_stack: this.return[0][-1][2]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][-1]

scoreboard players set $id1 dt.tmp 0
scoreboard players set $id2 dt.tmp 0
scoreboard players set $id3 dt.tmp 0

# vertical left
execute store result score $id1 dt.tmp run data get storage call_stack: this.return[0][0][0]
execute store result score $id2 dt.tmp run data get storage call_stack: this.return[0][1][0]
execute store result score $id3 dt.tmp run data get storage call_stack: this.return[0][2][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][0][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][0][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][1][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][1][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][2][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][2][0]

scoreboard players set $id1 dt.tmp 0
scoreboard players set $id2 dt.tmp 0
scoreboard players set $id3 dt.tmp 0

# vertical right
execute store result score $id1 dt.tmp run data get storage call_stack: this.return[0][0][-1]
execute store result score $id2 dt.tmp run data get storage call_stack: this.return[0][1][-1]
execute store result score $id3 dt.tmp run data get storage call_stack: this.return[0][2][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][0][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][0][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][1][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][1][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][2][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][2][-1]


# COPY PASTED ABOVE TO BELOW

scoreboard players set $id1 dt.tmp 0
scoreboard players set $id2 dt.tmp 0
scoreboard players set $id3 dt.tmp 0

# horizontal top
execute store result score $id1 dt.tmp run data get storage call_stack: this.return[0][0][0]
execute store result score $id2 dt.tmp run data get storage call_stack: this.return[0][0][1]
execute store result score $id3 dt.tmp run data get storage call_stack: this.return[0][0][2]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][0]

scoreboard players set $id1 dt.tmp 0
scoreboard players set $id2 dt.tmp 0
scoreboard players set $id3 dt.tmp 0

# horizontal bottom
execute store result score $id1 dt.tmp run data get storage call_stack: this.return[0][-1][0]
execute store result score $id2 dt.tmp run data get storage call_stack: this.return[0][-1][1]
execute store result score $id3 dt.tmp run data get storage call_stack: this.return[0][-1][2]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][-1]

scoreboard players set $id1 dt.tmp 0
scoreboard players set $id2 dt.tmp 0
scoreboard players set $id3 dt.tmp 0

# vertical left
execute store result score $id1 dt.tmp run data get storage call_stack: this.return[0][0][0]
execute store result score $id2 dt.tmp run data get storage call_stack: this.return[0][1][0]
execute store result score $id3 dt.tmp run data get storage call_stack: this.return[0][2][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][0][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][0][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][1][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][1][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][2][0]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][2][0]

scoreboard players set $id1 dt.tmp 0
scoreboard players set $id2 dt.tmp 0
scoreboard players set $id3 dt.tmp 0

# vertical right
execute store result score $id1 dt.tmp run data get storage call_stack: this.return[0][0][-1]
execute store result score $id2 dt.tmp run data get storage call_stack: this.return[0][1][-1]
execute store result score $id3 dt.tmp run data get storage call_stack: this.return[0][2][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][0][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][0][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][1][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][1][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[0][2][-1]
execute if score $id1 dt.tmp matches 0 if score $id2 dt.tmp matches 0 if score $id3 dt.tmp matches 0 run data remove storage call_stack: this.return[1][2][-1]

function call_stack:pop