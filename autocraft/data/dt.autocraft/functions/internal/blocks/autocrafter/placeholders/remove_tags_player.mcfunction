function call_stack:push
#say removing tags from player inventory

data modify storage call_stack: call.arg0 set from entity @s Inventory
data modify storage call_stack: call.arg1 set value {tag:{dt_placeholder:{}}}
function dt.array_util:api/split_by_key
data modify storage call_stack: this.placeholders set from storage call_stack: call.result[0]
execute store result score a test run data get storage call_stack: this.placeholders

execute if data storage call_stack: this.placeholders[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.placeholders
execute if data storage call_stack: this.placeholders[0] run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_player_tags_loop

function call_stack:pop