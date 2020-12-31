function call_stack:push

scoreboard players operation $ptr_x_tmp dt.callback = $ptr_x dt.callback
scoreboard players operation $ptr_y_tmp dt.callback = $ptr_y dt.callback
scoreboard players operation $ptr_z_tmp dt.callback = $ptr_z dt.callback

execute as @e[tag=callback_ptr,limit=1] at @s run function dt.callback:internal/ptr/find_next_free_loop
data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop