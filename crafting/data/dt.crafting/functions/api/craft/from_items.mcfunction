#> dt.crafting:api/craft/from_items
# Craft a result and remaining items from the given input items
# @params
#   storage call_stack: call.arg0
#       array of items to try to craft with
# @output
#   storage call_stack: this.return
#       array such that the first element is the remaining items and the second element is the crafted result
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.crafting:internal/model/ingredients/from_items
data modify storage call_stack: this.item_id_grid set from storage call_stack: call.return.grid[0]
data modify storage call_stack: this.item_count_grid set from storage call_stack: call.return.grid[1]
data modify storage call_stack: this.crafting_items set from storage call_stack: call.return.items.crafting
data modify storage call_stack: this.extras set from storage call_stack: call.return.items.extras

# tellraw @p ["search this.item_id_grid: ",{"nbt":"this.item_id_grid","storage":"call_stack:"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.item_id_grid
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_count_grid
function dt.crafting:internal/craft/compress_shaped
data modify storage call_stack: this.compressed_item_ids_shaped set from storage call_stack: call.return[0]
data modify storage call_stack: this.item_counts set from storage call_stack: call.return[1]

data modify storage call_stack: call.arg0 set from storage call_stack: this.item_id_grid
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_count_grid
function dt.crafting:internal/craft/compress_shapeless
data modify storage call_stack: this.compressed_item_ids_shapeless set from storage call_stack: call.return[0]
data modify storage call_stack: this.item_counts set from storage call_stack: call.return[1]

# tellraw @p ["search this.compressed_item_ids_shaped: ",{"nbt":"this.compressed_item_ids_shaped","storage":"call_stack:"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.compressed_item_ids_shaped
function dt.crafting:internal/craft/iterative/slots/get_shaped_slots1

# tellraw @p ["start this.compressed_item_ids_shapeless: ",{"nbt":"this.compressed_item_ids_shapeless","storage":"call_stack:"}]
data modify storage call_stack: call.arg0 set from storage call_stack: this.compressed_item_ids_shapeless
function dt.crafting:internal/craft/iterative/slots/get_shapeless_slots2

data modify storage call_stack: global.dt.compressed_item_ids_shaped set from storage call_stack: this.compressed_item_ids_shaped
data modify storage call_stack: global.dt.compressed_item_ids_shapeless set from storage call_stack: this.compressed_item_ids_shapeless
data modify storage call_stack: global.dt.recipes set value []
execute store result score #count dt.tmp run data get storage call_stack: this.items
execute if score #count dt.tmp matches 1 run data modify storage call_stack: global.dt.recipes set from storage dt.crafting: recipes_by_count.1
execute if score #count dt.tmp matches 2 run data modify storage call_stack: global.dt.recipes set from storage dt.crafting: recipes_by_count.2
execute if score #count dt.tmp matches 3 run data modify storage call_stack: global.dt.recipes set from storage dt.crafting: recipes_by_count.3
execute if score #count dt.tmp matches 4 run data modify storage call_stack: global.dt.recipes set from storage dt.crafting: recipes_by_count.4
execute if score #count dt.tmp matches 5 run data modify storage call_stack: global.dt.recipes set from storage dt.crafting: recipes_by_count.5
execute if score #count dt.tmp matches 6 run data modify storage call_stack: global.dt.recipes set from storage dt.crafting: recipes_by_count.6
execute if score #count dt.tmp matches 7 run data modify storage call_stack: global.dt.recipes set from storage dt.crafting: recipes_by_count.7
execute if score #count dt.tmp matches 8 run data modify storage call_stack: global.dt.recipes set from storage dt.crafting: recipes_by_count.8
execute if score #count dt.tmp matches 9 run data modify storage call_stack: global.dt.recipes set from storage dt.crafting: recipes_by_count.9

data remove storage call_stack: global.dt.crafting.result
data modify storage call_stack: call.recipes set from storage call_stack: global.dt.recipes
function call_stack:push
function dt.crafting:internal/craft/iterative/search_unsafe2
function call_stack:pop
execute if data storage call_stack: global.dt.crafting.result run function dt.crafting:internal/craft/from_items/return_for_shaped_or_shapeless_unsafe
function call_stack:pop