function call_stack:push
data modify storage call_stack: this.command_sets set from storage call_stack: this.arg0
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value []

execute if data storage call_stack: this.command_sets[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.command_sets[0]
execute if data storage call_stack: this.continue run function dt.callback:internal/multi/wrap_commands
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return append from storage call_stack: call.return

execute if data storage call_stack: this.continue run data remove storage call_stack: this.command_sets[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.command_sets
execute if data storage call_stack: this.continue run data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.callback:internal/multi/wrap_commands_sets
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop