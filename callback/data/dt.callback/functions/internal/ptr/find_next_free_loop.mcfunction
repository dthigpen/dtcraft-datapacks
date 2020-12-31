function call_stack:push

execute as @s at @s run function dt.callback:internal/ptr/do_next

data modify storage call_stack: this.is_free set value false
data modify storage call_stack: this.has_looped set value false
execute at @s run execute unless block ~ ~ ~ repeating_command_block run data modify storage call_stack: this.is_free set value true
execute at @s if score $ptr_x dt.callback = $ptr_x_tmp dt.callback if score $ptr_y dt.callback = $ptr_y_tmp dt.callback if score $ptr_z dt.callback = $ptr_z_tmp dt.callback run data modify storage call_stack: this.has_looped set value true

data modify storage call_stack: this.result set from storage call_stack: this.is_free

#tellraw @p [{"text":"is_free: "},{"nbt":"this.is_free","storage":"call_stack:"},{"text":" has_looped: "},{"nbt":"this.has_looped","storage":"call_stack:"}]
execute if data storage call_stack: {this:{is_free:false}} if data storage call_stack: {this:{has_looped:false}} at @s run function dt.callback:internal/ptr/find_next_free_loop
execute if data storage call_stack: {this:{is_free:false}} if data storage call_stack: {this:{has_looped:false}} at @s run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop