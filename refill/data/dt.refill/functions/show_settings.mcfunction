function call_stack:push

#gamerule sendCommandFeedback false

execute if data storage dt.refill: settings[0] run function dt.refill:settings/clear_chat
execute if data storage dt.refill: settings[0] run data modify storage call_stack: call.arg0 set from storage dt.refill: settings
execute if data storage dt.refill: settings[0] run data modify storage call_stack: call.arg1 set value 0
execute if data storage dt.refill: settings[0] run function dt.refill:show_settings_loop

function call_stack:pop
