function call_stack:push
data modify storage call_stack: this.placeholders set from storage call_stack: this.arg0

data remove storage call_stack: this.placeholders[0].tag.dt_placeholder
data remove storage call_stack: this.placeholders[0].tag.placeholder
execute store result score #has_tags dt.tmp run data get storage call_stack: this.placeholders[0].tag
execute if score #has_tags dt.tmp matches 0 run data remove storage call_stack: this.placeholders[0].tag

# Remove the tagged item at the old slot
data modify storage call_stack: call.arg0 set from storage call_stack: this.placeholders[0].Slot
function dt.inv_util:remove_slot
# Loot back to the player so that it will stack on existing slots
data modify storage call_stack: call.arg0 set from storage call_stack: this.placeholders[0]
function dt.inv_util:loot_to_player

data remove storage call_stack: this.placeholders[0]
execute if data storage call_stack: this.placeholders[0] run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_player_tags_loop

function call_stack:pop