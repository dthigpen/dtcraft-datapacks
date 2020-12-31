function call_stack:push

data modify storage call_stack: this.callback set from storage call_stack: this.arg0
data modify storage call_stack: this.data set from storage call_stack: this.arg1

# do a data get so that the player will be recorded in the database if not already
function rx.playerdb:api/get_self
data modify storage call_stack: this.callback_info set value {player_uuid:[-1,-1,-1,-1],rx_uid:-1b,data:{}}
data modify storage call_stack: this.callback_info.data set from storage call_stack: this.data
data modify storage call_stack: this.callback_info.player_uuid set from entity @s UUID
execute store result storage call_stack: this.callback_info.rx_uid byte 1 run scoreboard players get @s rx.uid

# initialize command block at current loc
execute at @e[tag=callback_ptr,limit=1] run setblock ~ ~ ~ minecraft:repeating_command_block{auto:1b,Command:"help"} destroy
execute at @e[tag=callback_ptr,limit=1] run data modify block ~ ~ ~ Command set from storage call_stack: this.callback
execute at @e[tag=callback_ptr,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["callback_loc","init"],NoGravity:true}
execute as @e[tag=callback_loc,tag=init,limit=1] run function rx.playerdb:api/get_self
execute as @e[tag=callback_loc,tag=init,limit=1] run data modify storage rx:io playerdb.player.data.dt.callback set from storage call_stack: this.callback_info
execute as @e[tag=callback_loc,tag=init,limit=1] run function rx.playerdb:api/save_self

tag @e[tag=callback_loc,tag=init] remove init

function dt.callback:internal/ptr/find_next_free
data modify storage call_stack: this.result set from storage call_stack: call.result
execute if data storage call_stack: {this:{result:false}} run say No free memory, failed to add callback!

function call_stack:pop