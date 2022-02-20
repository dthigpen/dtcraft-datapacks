scoreboard objectives add dt.callback.mem dummy
forceload add 8999999 8999999
scoreboard players set $start_x dt.callback.mem 8999984
scoreboard players set $start_y dt.callback.mem 319
scoreboard players set $start_z dt.callback.mem 8999984
scoreboard players set $length_x dt.callback.mem 15
scoreboard players set $length_y dt.callback.mem 320
scoreboard players set $length_z dt.callback.mem 15

scoreboard players operation $end_x dt.callback.mem = $start_x dt.callback.mem
scoreboard players operation $end_x dt.callback.mem += $length_x dt.callback.mem
scoreboard players operation $end_y dt.callback.mem = $start_y dt.callback.mem
scoreboard players operation $end_y dt.callback.mem -= $length_y dt.callback.mem
scoreboard players operation $end_z dt.callback.mem = $start_z dt.callback.mem
scoreboard players operation $end_z dt.callback.mem += $length_z dt.callback.mem

kill @e[type=armor_stand,tag=dt_callback]
execute in overworld run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0.0f,90.0f],Invulnerable:1b,NoGravity:1b,Invisible:0b,Tags:["dt_callback","ptr"]}
function dt.callback:internal/memory/ptr/move_to_start
