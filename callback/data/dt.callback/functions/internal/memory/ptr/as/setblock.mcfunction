function dt.callback:internal/memory/ptr/as/set_rotation

execute if score $rot1 dt.callback.mem matches 0 if score $rot2 dt.callback.mem matches 90 run setblock ~ ~ ~ chain_command_block[facing=down]
execute if score $rot1 dt.callback.mem matches 0 if score $rot2 dt.callback.mem matches -90 run setblock ~ ~ ~ chain_command_block[facing=up]
execute if score $rot1 dt.callback.mem matches 0 if score $rot2 dt.callback.mem matches 0 run setblock ~ ~ ~ chain_command_block[facing=south]
execute if score $rot1 dt.callback.mem matches -90 if score $rot2 dt.callback.mem matches 0 run setblock ~ ~ ~ chain_command_block[facing=east]
execute if score $rot1 dt.callback.mem matches 90 if score $rot2 dt.callback.mem matches 0 run setblock ~ ~ ~ chain_command_block[facing=west]

execute if score $cur_x dt.callback.mem = $start_x dt.callback.mem if score $cur_y dt.callback.mem = $start_y dt.callback.mem if score $cur_z dt.callback.mem = $start_z dt.callback.mem run setblock ~ ~ ~ command_block[facing=down]{auto:true}
