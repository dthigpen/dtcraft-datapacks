function call_stack:push

execute store result storage call_stack: call.arg0 byte 1 run scoreboard players get @s dt.refill.setup
function dt.refill:settings/translate_setting_trigger
data modify storage call_stack: this.changed_setting set from storage call_stack: call.result

tellraw @p [{"text":"changed_setting: "},{"nbt":"this.changed_setting","storage":"call_stack:"}]

data modify storage call_stack: call.arg0 set from storage dt.refill: settings
data modify storage call_stack: call.arg1 set from storage call_stack: this.changed_setting.index
function dt.array_util:api/split_at_index
data modify storage call_stack: this.modified set from storage call_stack: call.result.at
data modify storage call_stack: this.modified.value set from storage call_stack: this.changed_setting.value
data modify storage call_stack: this.before set from storage call_stack: call.result.before
data modify storage call_stack: this.after set from storage call_stack: call.result.after

data modify storage call_stack: call.arg0 set from storage call_stack: this.before
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg1 append from storage call_stack: this.modified
function dt.array_util:api/concat
data modify storage call_stack: call.arg0 set from storage call_stack: call.result
data modify storage call_stack: call.arg1 set from storage call_stack: this.after
function dt.array_util:api/concat
#data modify storage call_stack: this.new_settings set from storage call_stack: call.result

data modify storage dt.refill: settings set from storage call_stack: call.result

function call_stack:pop