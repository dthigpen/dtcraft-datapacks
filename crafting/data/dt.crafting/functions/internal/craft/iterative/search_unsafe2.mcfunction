# clear temp vars
data remove storage call_stack: this.is_shaped
data remove storage call_stack: this.is_shapeless
data remove storage call_stack: this.slots_match

execute store result score #shapeless dt.crafting.tmp run data get storage call_stack: this.recipes[-1].shapeless
execute if score #shapeless dt.crafting.tmp matches 1 run data modify storage call_stack: this.is_shapeless set value true
execute if score #shapeless dt.crafting.tmp matches 0 run data modify storage call_stack: this.is_shaped set value true
# tellraw @p ["search_unsafe2 this.recipes[-1]: ",{"nbt":"this.recipes[-1]","storage":"call_stack:"}]
execute if data storage call_stack: this.is_shaped run data modify storage call_stack: call.arg0 set from storage call_stack: this.recipes[-1].items
execute if data storage call_stack: this.is_shaped run function dt.crafting:internal/craft/iterative/slots/get_shaped_slots3
execute if data storage call_stack: this.is_shaped run function dt.crafting:internal/craft/iterative/slots/compare_shaped
execute if data storage call_stack: this.is_shaped if score #slots_match dt.crafting.tmp matches 1 run data modify storage call_stack: this.slots_match set value true

# if shaped and slots match then check items
execute if data storage call_stack: this.is_shaped if data storage call_stack: this.slots_match run data modify storage call_stack: call.arg0 set from storage call_stack: global.dt.compressed_item_ids_shaped
execute if data storage call_stack: this.is_shaped if data storage call_stack: this.slots_match run data modify storage call_stack: call.arg1 set from storage call_stack: this.recipes[-1].items
execute if data storage call_stack: this.is_shaped if data storage call_stack: this.slots_match run function dt.crafting:internal/craft/iterative/match/items_shaped
execute if data storage call_stack: this.is_shaped if data storage call_stack: this.slots_match if data storage call_stack: call.return run data modify storage call_stack: global.dt.crafting.result set from storage call_stack: this.recipes[-1]
execute if data storage call_stack: this.is_shapeless run data modify storage call_stack: call.arg0 set from storage call_stack: global.dt.compressed_item_ids_shapeless
execute if data storage call_stack: this.is_shapeless run data modify storage call_stack: call.arg1 set from storage call_stack: this.recipes[-1].items
execute if data storage call_stack: this.is_shapeless run function dt.crafting:internal/craft/iterative/match/items_shapeless
execute if data storage call_stack: this.is_shapeless if data storage call_stack: call.return run data modify storage call_stack: global.dt.crafting.result set from storage call_stack: this.recipes[-1]


execute unless data storage call_stack: global.dt.crafting.result run data remove storage call_stack: this.recipes[-1]
execute unless data storage call_stack: global.dt.crafting.result if data storage call_stack: this.recipes[-1] run function dt.crafting:internal/craft/iterative/search_unsafe2
