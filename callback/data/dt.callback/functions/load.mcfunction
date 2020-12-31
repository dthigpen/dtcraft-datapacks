say callback loaded

scoreboard objectives add dt.tmp dummy
scoreboard players reset * dt.tmp
scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1


kill @e[type=armor_stand,tag=callback_ptr]
kill @e[type=armor_stand,tag=callback_loc]
summon minecraft:armor_stand 3333312 255 3333312 {Tags:["callback_ptr"],NoGravity:true}

scoreboard objectives add dt.callback dummy
scoreboard players set $ptr_x dt.callback 0
scoreboard players set $ptr_z dt.callback 0
scoreboard players set $ptr_y dt.callback 0

scoreboard players set $ptr_x_max dt.callback 3
scoreboard players set $ptr_z_max dt.callback 3
scoreboard players set $ptr_y_max dt.callback 255

# ptr location 3333312 255 3333312
forceload remove 3333312 3333312
forceload add 3333312 3333312

schedule clear dt.callback:tick
schedule function dt.callback:tick 1t replace