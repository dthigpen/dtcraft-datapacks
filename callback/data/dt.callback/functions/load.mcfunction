say callback loaded

# ptr location 3333312 255 3333312

kill @e[type=armor_stand,tag=callback_ptr]
kill @e[type=armor_stand,tag=callback_loc]
summon minecraft:armor_stand 3333312 255 3333312 {Tags:["callback_ptr"],NoGravity:true}

scoreboard objectives add dt.callback dummy
scoreboard players set $ptr_x dt.callback 0
scoreboard players set $ptr_z dt.callback 0
scoreboard players set $ptr_y dt.callback 0

scoreboard players set $ptr_x_max dt.callback 2
scoreboard players set $ptr_z_max dt.callback 2
scoreboard players set $ptr_y_max dt.callback 255

schedule clear dt.callback:tick
schedule function dt.callback:tick 1t replace