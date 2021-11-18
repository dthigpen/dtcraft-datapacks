#say tick gui
schedule function dt.gui:tick 1t replace


execute as @e[tag=dt_gui] at @s run function dt.gui:internal/container_3_9/refresh
clear @a minecraft:gray_stained_glass_pane{dt_gui:{placeholder:1b}}
kill @e[type=item,nbt={Item:{tag:{dt_gui:{placeholder:1b}}}}]
