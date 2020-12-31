function call_stack:push


execute store result storage call_stack: this.is_free byte 1 run execute unless block ~ ~ ~ repeating_command_block
execute store result storage call_stack: this.has_looped byte 1 run execute if score $ptr_x dt.callback = $ptr_x_tmp dt.callback if score $ptr_y dt.callback = $ptr_y_tmp dt.callback if score $ptr_z dt.callback = $ptr_z_tmp dt.callback

data modify storage call_stack: this.result set from storage call_stack: this.is_free


execute if data storage call_stack: {this:{is_free:false}} if data storage call_stack: {this:{has_looped:false}} at @s run function dt.callback:internal/ptr/do_next
execute if data storage call_stack: {this:{is_free:false}} if data storage call_stack: {this:{has_looped:false}} at @s run function dt.callback:internal/ptr/find_next_free_loop
execute if data storage call_stack: {this:{is_free:false}} if data storage call_stack: {this:{has_looped:false}} at @s run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop