function dt.callback:internal/memory/ptr/as/update_scores

# general case (up or down)
execute if score $mod_x dt.callback.mem matches 0 if score $mod_z dt.callback.mem matches 0 run data modify entity @s Rotation set value [0.0f, 90.0f]
execute if score $mod_x dt.callback.mem matches 1 if score $mod_z dt.callback.mem matches 1 run data modify entity @s Rotation set value [0.0f, 90.0f]
execute if score $mod_x dt.callback.mem matches 0 if score $mod_z dt.callback.mem matches 1 run data modify entity @s Rotation set value [0.0f, -90.0f]
execute if score $mod_x dt.callback.mem matches 1 if score $mod_z dt.callback.mem matches 0 run data modify entity @s Rotation set value [0.0f, -90.0f]

# top
execute if score $at_top dt.callback.mem matches 1 if score $cur_x dt.callback.mem = $start_x dt.callback.mem if score $mod_z dt.callback.mem matches 1 run data modify entity @s Rotation set value [0.0f, 0.0f]
execute if score $at_top dt.callback.mem matches 1 if score $cur_x dt.callback.mem = $end_x dt.callback.mem if score $mod_z dt.callback.mem matches 1 run data modify entity @s Rotation set value [90.0f, 0.0f]
execute if score $at_top dt.callback.mem matches 1 if score $mod_x dt.callback.mem matches 1 if score $mod_z dt.callback.mem matches 0 run data modify entity @s Rotation set value [-90.0f, 0.0f]

# bottom
execute if score $at_bottom dt.callback.mem matches 1 if score $cur_x dt.callback.mem = $start_x dt.callback.mem if score $mod_z dt.callback.mem matches 0 run data modify entity @s Rotation set value [-90.0f, 0.0f]
execute if score $at_bottom dt.callback.mem matches 1 if score $cur_x dt.callback.mem = $end_x dt.callback.mem if score $mod_z dt.callback.mem matches 0 run data modify entity @s Rotation set value [0.0f, 0.0f]
execute if score $at_bottom dt.callback.mem matches 1 if score $mod_x dt.callback.mem matches 1 if score $mod_z dt.callback.mem matches 1 run data modify entity @s Rotation set value [90.0f, 0.0f]

execute store result score $rot1 dt.callback.mem run data get entity @s Rotation[0]
execute store result score $rot2 dt.callback.mem run data get entity @s Rotation[1]
