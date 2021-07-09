execute as @a[scores={dt.ac.placed=1..,dt.ac.curblock=1..}] run function dt.autocraft:internal/raycast/cast
execute as @a store result score @s dt.ac.curblock run data get entity @s SelectedItem.tag.dt_autocrafter
execute as @a unless score @s dt.ac.curblock matches 1.. store result score @s dt.ac.curblock run data get entity @s Inventory[{Slot:-106b}].tag.dt_autocrafter
execute as @a[scores={dt.ac.placed=1..}] run scoreboard players set @s dt.ac.placed 0