#say tick gui
schedule function dt.gui:tick 1t replace


execute as @e[tag=dt_gui,tag=!dt_gui_no_tick] at @s run function dt.gui:api/self/tick


clear @a minecraft:gray_stained_glass_pane{dt:{gui:{placeholder:1b}}}
kill @e[type=item,nbt={Item:{tag:{dt:{gui:{placeholder:1b}}}}}]
