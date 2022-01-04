#say tick custom_block

execute as @a[scores={dt.cb.placed=1..,dt.cb.curblock=1..}] run tag @s add dt.cb.placed
execute as @a[scores={dt.cb.placed1=1..,dt.cb.curblock=1..}] run tag @s add dt.cb.placed
execute as @a[scores={dt.cb.placed=1..,dt.cb.curblock=1..}] at @s as @e[type=glow_item_frame,tag=unset,distance=..7] at @s run function dt.custom_block:internal/setblock
execute as @a[scores={dt.cb.placed1=1..,dt.cb.curblock=1..}] at @s as @e[type=item_frame,tag=unset,distance=..7] at @s run function dt.custom_block:internal/setblock
execute as @a[tag=dt.cb.placed] run tag @s remove dt.cb.placed

# handle item in main and off hand
execute as @a store result score @s dt.cb.curblock run data get entity @s SelectedItem.tag.custom_block
execute as @a unless score @s dt.cb.curblock matches 1.. store result score @s dt.cb.curblock run data get entity @s Inventory[{Slot:-106b}].tag.custom_block
# reset scores
execute as @a[scores={dt.cb.placed=1..}] run scoreboard players set @s dt.cb.placed 0
execute as @a[scores={dt.cb.placed1=1..}] run scoreboard players set @s dt.cb.placed1 0

execute as @e[type=glow_item_frame,tag=custom_block, tag=!unset] at @s if block ~ ~ ~ air run function dt.custom_block:internal/on_remove
execute as @e[type=item_frame,tag=custom_block, tag=!unset] at @s if block ~ ~ ~ air run function dt.custom_block:internal/on_remove

schedule function dt.custom_block:tick 1t replace