#say autocraft tick!
schedule function dt.autocraft:tick 1t replace


execute as @a[scores={dt.ac.placed=1..}] run function dt.autocraft:internal/raycast/cast
execute as @a store result score @s dt.ac.curblock run data get entity @s SelectedItem.tag.dt_autocrafter
execute as @a store result score @s dt.ac.offblock run data get entity @s Inventory[{Slot:-106b}].tag.dt_autocrafter
execute as @a[scores={dt.ac.placed=1..}] run scoreboard players set @s dt.ac.placed 0

execute as @e[tag=dt.ac] at @s run function dt.autocraft:internal/blocks/autocrafter/tick


execute as @e[type=item,nbt={Item:{id:"minecraft:dropper",tag:{dt_autocrafter:1b}}}] at @s run function dt.autocraft:internal/blocks/floor_craft/search_nearby