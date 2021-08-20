#say tick custom_block

execute as @a[scores={dt.cb.placed=1..,dt.cb.curblock=1..}] run function dt.raycast:api/cast
execute as @a[scores={dt.cb.placed=1..,dt.cb.curblock=1..}] as @e[type=marker, tag=dt.raycast.hit] if score @s dt.raycast = $hit_id dt.raycast at @s run function dt.custom_block:internal/make_custom
execute as @a store result score @s dt.cb.curblock run data get entity @s SelectedItem.tag.custom_block
execute as @a unless score @s dt.cb.curblock matches 1.. store result score @s dt.cb.curblock run data get entity @s Inventory[{Slot:-106b}].tag.custom_block
execute as @a[scores={dt.cb.placed=1..}] run scoreboard players set @s dt.cb.placed 0

execute as @e[type=armor_stand,tag=dt.cb.block_entity] at @s run function dt.custom_block:internal/block_entity/tick

schedule function dt.custom_block:tick 1t replace