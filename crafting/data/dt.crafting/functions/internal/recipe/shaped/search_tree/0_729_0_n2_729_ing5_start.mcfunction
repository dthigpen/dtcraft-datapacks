data remove storage call_stack: global.dt.item_ids[0]
scoreboard players set $id dt.tmp -999999
execute if data storage call_stack: global.dt.item_ids[0] store result score $id dt.tmp run data get storage call_stack: global.dt.item_ids[0]

execute if score $id dt.tmp matches 269 run function dt.crafting:internal/recipe/shaped/search_tree/0_729_0_n2_729_269_ing6_start
execute if score $id dt.tmp matches 270 run function dt.crafting:internal/recipe/shaped/search_tree/0_729_0_n2_729_270_ing6_start
execute if score $id dt.tmp matches 684 run function dt.crafting:internal/recipe/shaped/search_tree/0_729_0_n2_729_684_ing6_start
execute if score $id dt.tmp matches 685 run function dt.crafting:internal/recipe/shaped/search_tree/0_729_0_n2_729_685_ing6_start
