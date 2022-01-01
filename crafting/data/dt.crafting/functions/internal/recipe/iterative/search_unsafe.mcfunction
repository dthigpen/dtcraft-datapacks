# tellraw @p ["search_unsafe global.dt.recipes[-1].name: ",{"nbt":"global.dt.recipes[-1].name","storage":"call_stack:"}]

scoreboard players reset #shapeless dt.crafting.tmp
scoreboard players reset #slots_match dt.crafting.tmp
scoreboard players reset #items_match dt.crafting.tmp

execute store result score #shapeless dt.crafting.tmp run data get storage call_stack: global.dt.recipes[-1].shapeless
execute if score #shapeless dt.crafting.tmp matches 0 run data modify storage call_stack: call.arg0 set from storage call_stack: global.dt.recipes[-1].items
execute if score #shapeless dt.crafting.tmp matches 0 run function dt.crafting:internal/recipe/iterative/slots/get_shaped_slots3
execute if score #shapeless dt.crafting.tmp matches 0 run function dt.crafting:internal/recipe/iterative/slots/compare_shaped
execute if score #shapeless dt.crafting.tmp matches 1 run scoreboard players set #slots_match dt.tmp 0
execute if score #slots_match dt.crafting.tmp matches 1 run tellraw @p ["Found matching slots with: ",{"nbt":"global.dt.recipes[-1].name","storage":"call_stack:"}]
# for now just test with row 1
execute if score #slots_match dt.crafting.tmp matches 1 if score #shapeless dt.crafting.tmp matches 0 run data modify storage call_stack: call.arg0 set from storage call_stack: global.dt.compressed_item_ids_shaped
execute if score #slots_match dt.crafting.tmp matches 1 if score #shapeless dt.crafting.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage call_stack: global.dt.compressed_item_ids_shapeless
execute if score #slots_match dt.crafting.tmp matches 1 run data modify storage call_stack: call.arg1 set from storage call_stack: global.dt.recipes[-1].items
execute if score #slots_match dt.crafting.tmp matches 1 run function dt.crafting:internal/recipe/iterative/match/items_shaped
execute if score #items_match dt.crafting.tmp matches 1 run data modify storage call_stack: global.dt.crafting.result set from storage call_stack: global.dt.recipes[-1]
execute unless score #items_match dt.crafting.tmp matches 1 run data remove storage call_stack: global.dt.recipes[-1]
execute unless score #items_match dt.crafting.tmp matches 1 if data storage call_stack: global.dt.recipes[-1] run function dt.crafting:internal/recipe/iterative/search_unsafe