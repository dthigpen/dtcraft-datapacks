
# ptr location 3333312 255 3333312

# increment y or z if at max
scoreboard players add $ptr_x dt.callback 1
execute if score $ptr_x dt.callback = $ptr_x_max dt.callback run scoreboard players add $ptr_z dt.callback 1
execute if score $ptr_x dt.callback = $ptr_x_max dt.callback run tp @s ~ ~ ~1
execute if score $ptr_z dt.callback = $ptr_z_max dt.callback run scoreboard players add $ptr_y dt.callback 1
execute if score $ptr_z dt.callback = $ptr_z_max dt.callback run tp @s ~ ~-1 ~

# reset or increment x position
execute at @s if score $ptr_x dt.callback = $ptr_x_max dt.callback run tp @s 3333312 ~ ~
execute at @s if score $ptr_z dt.callback = $ptr_z_max dt.callback run tp @s ~ ~ 3333312
execute at @s if score $ptr_y dt.callback = $ptr_y_max dt.callback run tp @s ~ 255 ~
execute at @s if score $ptr_x dt.callback < $ptr_x_max dt.callback run tp @s ~1 ~ ~

# wrap position counters
scoreboard players operation $ptr_x dt.callback %= $ptr_x_max dt.callback
scoreboard players operation $ptr_z dt.callback %= $ptr_z_max dt.callback
execute if score $ptr_y dt.callback = $ptr_y_max dt.callback run tellraw @p [{"text":"No slots available!"}]
