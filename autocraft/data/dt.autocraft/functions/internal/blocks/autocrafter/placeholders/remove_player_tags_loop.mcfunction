function call_stack:push
data modify storage call_stack: this.placeholders set from storage call_stack: this.arg0

data remove storage call_stack: this.placeholders[0].tag.dt_placeholder
data remove storage call_stack: this.placeholders[0].tag.placeholder
execute store result score #has_tags dt.tmp run data get storage call_stack: this.placeholders[0].tag
execute if score #has_tags dt.tmp matches 0 run data remove storage call_stack: this.placeholders[0].tag

data modify storage call_stack: call.arg0 set from storage call_stack: this.placeholders[0]
function dt.inv_util:replace_slot


data remove storage call_stack: this.placeholders[0]
execute if data storage call_stack: this.placeholders[0] run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_player_tags_loop

function call_stack:pop