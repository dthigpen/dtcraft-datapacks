scoreboard players reset $at_top dt.callback.mem
scoreboard players reset $at_bottom dt.callback.mem

execute store result score $cur_x dt.callback.mem run data get entity @s Pos[0]
execute store result score $cur_y dt.callback.mem run data get entity @s Pos[1]
execute store result score $cur_z dt.callback.mem run data get entity @s Pos[2]

scoreboard players set $one dt.callback.mem 1
scoreboard players set $two dt.callback.mem 2
scoreboard players operation $mod_x dt.callback.mem = $cur_x dt.callback.mem
scoreboard players operation $mod_x dt.callback.mem %= $two dt.callback.mem
scoreboard players operation $mod_z dt.callback.mem = $cur_z dt.callback.mem
scoreboard players operation $mod_z dt.callback.mem %= $two dt.callback.mem


execute if score $cur_y dt.callback.mem = $start_y dt.callback.mem run scoreboard players set $at_top dt.callback.mem 1
execute if score $cur_y dt.callback.mem = $end_y dt.callback.mem run scoreboard players set $at_bottom dt.callback.mem 1