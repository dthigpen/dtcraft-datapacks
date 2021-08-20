# say set_model

# setup temp object for overrides
data modify storage dt.custom_block:internal temp set value {}
data modify storage dt.custom_block:internal temp.north set from storage dt.custom_block:in item
data modify storage dt.custom_block:internal temp.east set from storage dt.custom_block:in item
data modify storage dt.custom_block:internal temp.south set from storage dt.custom_block:in item
data modify storage dt.custom_block:internal temp.west set from storage dt.custom_block:in item
data modify storage dt.custom_block:internal temp.up set from storage dt.custom_block:in item
data modify storage dt.custom_block:internal temp.down set from storage dt.custom_block:in item
data modify storage dt.custom_block:internal temp merge from storage dt.custom_block:in overrides

execute store result score $x_rot dt.tmp run data get entity @s Rotation[0]
execute store result score $y_rot dt.tmp run data get entity @s Rotation[1]

execute if score $x_rot dt.tmp matches 0 if score $y_rot dt.tmp matches 0 run data modify entity @s ArmorItems[3] set from storage dt.custom_block:in temp.north
execute if score $x_rot dt.tmp matches 180 if score $y_rot dt.tmp matches 0 run data modify entity @s ArmorItems[3] set from storage dt.custom_block:in temp.south
execute if score $x_rot dt.tmp matches -90 if score $y_rot dt.tmp matches 0 run data modify entity @s ArmorItems[3] set from storage dt.custom_block:in temp.east
execute if score $x_rot dt.tmp matches 90 if score $y_rot dt.tmp matches 0 run data modify entity @s ArmorItems[3] set from storage dt.custom_block:in temp.west
execute if score $x_rot dt.tmp matches 0 if score $y_rot dt.tmp matches -90 run data modify entity @s ArmorItems[3] set from storage dt.custom_block:in temp.up
execute if score $x_rot dt.tmp matches 0 if score $y_rot dt.tmp matches 90 run data modify entity @s ArmorItems[3] set from storage dt.custom_block:in temp.down

data remove storage dt.custom_block:internal temp

data remove storage dt.custom_block:in item
data remove storage dt.custom_block:in tag
data remove storage dt.custom_block:in overrides