function call_stack:push
data modify storage call_stack: this.settings set from storage call_stack: this.arg0
data modify storage call_stack: this.index set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.settings[0]
data modify storage call_stack: call.arg1 set from storage call_stack: this.index
function dt.refill:settings/show_boolean_setting

data remove storage call_stack: this.settings[0]
execute store result score #index dt.tmp run data get storage call_stack: this.index
scoreboard players add #index dt.tmp 1
execute store result storage call_stack: this.index int 1 run scoreboard players get #index dt.tmp

execute if data storage call_stack: this.settings[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.settings
execute if data storage call_stack: this.settings[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.index
execute if data storage call_stack: this.settings[0] run function dt.refill:show_settings_loop

function call_stack:pop
