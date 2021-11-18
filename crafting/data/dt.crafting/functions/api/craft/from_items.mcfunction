function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.crafting:internal/model/ingredients/from_items
data modify storage call_stack: this.item_id_grid set from storage call_stack: call.return[0]
data modify storage call_stack: this.item_count_grid set from storage call_stack: call.return[1]

# compress
data modify storage call_stack: call.arg0 set from storage call_stack: this.item_id_grid
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_count_grid
function dt.crafting:internal/recipe/compress_shaped
data modify storage call_stack: this.compressed_item_ids set from storage call_stack: call.return[0]
data modify storage call_stack: this.item_counts set from storage call_stack: call.return[1]
#> algorithm
# try shaped search tree
# if no recipes
# try shapeless search tree

# get all item ids
data modify storage call_stack: global.dt.item_ids set value []
data modify storage call_stack: global.dt.item_ids append from storage call_stack: this.compressed_item_ids[0][]
data modify storage call_stack: global.dt.item_ids append value -2
data modify storage call_stack: global.dt.item_ids append from storage call_stack: this.compressed_item_ids[1][]
data modify storage call_stack: global.dt.item_ids append value -2
data modify storage call_stack: global.dt.item_ids append from storage call_stack: this.compressed_item_ids[2][]
data modify storage call_stack: global.dt.item_ids prepend value 0
data modify storage call_stack: global.dt.recipes set value []
function dt.crafting:internal/recipe/shaped/search_tree/ing0_start
execute if data storage call_stack: global.dt.recipes[0] run data modify storage call_stack: this.found_shaped set value true

# if not found in shaped check shapeless
execute unless data storage call_stack: this.found_shaped run data modify storage call_stack: call.arg0 set from storage call_stack: this.item_id_grid
execute unless data storage call_stack: this.found_shaped run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_count_grid
execute unless data storage call_stack: this.found_shaped run function dt.crafting:internal/recipe/compress_shapeless
execute unless data storage call_stack: this.found_shaped run data modify storage call_stack: this.item_counts set from storage call_stack: call.return[1]
execute unless data storage call_stack: this.found_shaped run data modify storage call_stack: global.dt.item_ids set from storage call_stack: call.return[0][0]
execute unless data storage call_stack: this.found_shaped run data modify storage call_stack: global.dt.item_ids prepend value 0
execute unless data storage call_stack: this.found_shaped run data modify storage call_stack: global.dt.recipes set value []
execute unless data storage call_stack: this.found_shaped run function dt.crafting:internal/recipe/shapeless/search_tree/ing0_start
execute unless data storage call_stack: this.found_shaped if data storage call_stack: global.dt.recipes[0] run data modify storage call_stack: this.found_shapeless set value true

execute if data storage call_stack: this.found_shaped run function dt.crafting:internal/craft/from_items/return_for_shaped_or_shapeless_unsafe
execute if data storage call_stack: this.found_shapeless run function dt.crafting:internal/craft/from_items/return_for_shaped_or_shapeless_unsafe

function call_stack:pop