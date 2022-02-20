function dt.callback:internal/memory/ptr/move_to_start
# reset command block output if after finished
data modify storage call_stack: global.dt.callback.cmd_queue insert 0 value 'execute store result score $output dt.callback run gamerule commandBlockOutput'
data modify storage call_stack: global.dt.callback.cmd_queue insert 1 value 'gamerule commandBlockOutput false'
data modify storage call_stack: global.dt.callback.cmd_queue append value 'execute if score $output dt.callback matches 1 run gamerule commandBlockOutput true'
execute as @e[type=armor_stand,tag=dt_callback,tag=ptr,limit=1] at @s run function dt.callback:internal/dequeue_as_ptr