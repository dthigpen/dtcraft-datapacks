function call_stack:push
# say on_craft
# try to craft
# First update tags to reflect new positions
execute positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/update_existing_placeholders
# Get placeholders from hopper below
# Get the tagged items from the block below then remove those items
execute positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/get_tagged_items
execute run data modify storage call_stack: this.tagged_items_from_below set from storage call_stack: call.result
execute positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tagged_items

execute run data modify storage call_stack: call.arg0 set from storage call_stack: this.tagged_items_from_below
execute positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/add_back_tagged_items
execute positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
execute positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/crafting/try

function call_stack:pop

