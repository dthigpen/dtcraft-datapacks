function call_stack:push
data modify storage call_stack: this.placeholders set from storage call_stack: this.arg0

data modify storage call_stack: this.item set from storage call_stack: this.placeholders[0]
function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_item_tag_unsafe

#execute store result score #has_tags dt.tmp run data get storage call_stack: this.placeholders[0].tag
#execute if score #has_tags dt.tmp matches 0 run data remove storage call_stack: this.placeholders[0].tag

# Remove the tagged item at the old slot
data modify storage call_stack: call.arg0 set from storage call_stack: this.item.Slot
function dt.inventory:api/player/item/slot/remove
# Loot back to the player so that it will stack on existing slots
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 insert 0 from storage call_stack: this.item
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/loot/give/player

data remove storage call_stack: this.placeholders[0]
execute if data storage call_stack: this.placeholders[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.placeholders
execute if data storage call_stack: this.placeholders[0] run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_player_tags_loop

function call_stack:pop