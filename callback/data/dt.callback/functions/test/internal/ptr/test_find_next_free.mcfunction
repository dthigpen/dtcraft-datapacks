
execute at @e[tag=callback_ptr,limit=1] run setblock ~ ~ ~ repeating_command_block
function dt.callback:internal/ptr/find_next_free
tellraw @p [{"text":"is_free: "},{"nbt":"call.result","storage":"call_stack:"}]