# say crafted_autocrafter
#[[[cog
#   from datapack_utils import autocraft
#   cog.outl(autocraft.create_on_adv_granted_function_str())
#]]]

advancement revoke @s only dt.autocraft:autocrafter
scoreboard players set #has_recipe dt.tmp 0
scoreboard players set #num_loot dt.tmp 0
execute store result score #num_loot dt.tmp run clear @s minecraft:knowledge_book

# autocrafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:autocrafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"Autocrafter"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# beacon_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:beacon_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:beacon"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# nether_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:nether_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_quartz_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_quartz_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_quartz_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_weathered_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_weathered_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_weathered_cut_copper_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# andesite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:andesite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:andesite_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# wooden_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:wooden_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# sandstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:sandstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sandstone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cooked_cod_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cooked_cod_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cooked_cod"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cut_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cut_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stick_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stick_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stick"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oxidized_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oxidized_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oxidized_cut_copper_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# beetroot_soup_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:beetroot_soup_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:beetroot_soup"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# activator_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:activator_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:activator_rail"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chiseled_polished_blackstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chiseled_polished_blackstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_polished_blackstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blackstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blackstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blackstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# granite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:granite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:granite_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# sea_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:sea_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sea_lantern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# redstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:redstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:redstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# item_frame_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:item_frame_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:item_frame"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mossy_stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mossy_stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_stone_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_copper_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# wooden_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:wooden_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diorite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diorite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diorite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cooked_salmon_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cooked_salmon_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cooked_salmon"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_red_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# leather_horse_armor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:leather_horse_armor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_horse_armor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# weathered_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:weathered_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:weathered_cut_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# prismarine_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:prismarine_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lantern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# end_stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:end_stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_stone_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_bars_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_bars_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_bars"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# melon_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:melon_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:melon"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crafting_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crafting_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crafting_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# prismarine_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:prismarine_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dried_kelp_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dried_kelp_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dried_kelp"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_weathered_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_weathered_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_weathered_cut_copper_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_exposed_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_exposed_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_exposed_cut_copper_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# granite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:granite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:granite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lapis_lazuli_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lapis_lazuli_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lapis_lazuli"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_cut_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dropper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dropper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dropper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_ingot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cobblestone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cobblestone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cobblestone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_granite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_granite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_granite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_stone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_stone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_stone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# exposed_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:exposed_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:exposed_cut_copper_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crossbow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crossbow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crossbow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# tinted_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:tinted_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:tinted_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jukebox_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jukebox_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jukebox"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cobblestone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cobblestone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cobblestone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# deepslate_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:deepslate_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:deepslate_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_nether_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_nether_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_nether_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# creeper_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:creeper_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:creeper_banner_pattern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# raw_gold_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:raw_gold_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:raw_gold_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dispenser_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dispenser_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dispenser"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cracked_deepslate_tiles_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cracked_deepslate_tiles_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cracked_deepslate_tiles"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# slime_ball_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:slime_ball_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:slime_ball"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mossy_stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mossy_stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_stone_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cut_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cut_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_red_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chain_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chain_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chain"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_cut_copper_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brick_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brick_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brick"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# bucket_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:bucket_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bucket"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cooked_porkchop_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cooked_porkchop_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cooked_porkchop"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_deepslate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_deepslate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_deepslate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# beehive_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:beehive_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:beehive"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gold_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gold_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gold_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# deepslate_tile_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:deepslate_tile_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:deepslate_tile_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lightning_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lightning_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lightning_rod"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# note_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:note_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:note_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# sponge_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:sponge_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sponge"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_copper_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# deepslate_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:deepslate_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:deepslate_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_fungus_on_a_stick_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_fungus_on_a_stick_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_fungus_on_a_stick"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blackstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blackstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blackstone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_oxidized_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_oxidized_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_oxidized_cut_copper_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# glistering_melon_slice_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:glistering_melon_slice_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glistering_melon_slice"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oxidized_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oxidized_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oxidized_cut_copper_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# weathered_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:weathered_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:weathered_cut_copper_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_basalt_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_basalt_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_basalt"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_oxidized_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_oxidized_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_oxidized_cut_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_oxidized_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_oxidized_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_oxidized_cut_copper_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chiseled_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chiseled_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_nether_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purpur_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purpur_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purpur_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# honeycomb_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:honeycomb_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:honeycomb_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_hyphae"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# nether_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:nether_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cut_red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cut_red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_red_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# copper_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:copper_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:copper_ingot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# andesite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:andesite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:andesite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mossy_cobblestone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mossy_cobblestone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_cobblestone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gold_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gold_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gold_ingot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# quartz_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:quartz_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_granite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_granite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_granite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cooked_beef_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cooked_beef_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cooked_beef"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chiseled_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chiseled_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_stone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_cut_copper_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cracked_deepslate_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cracked_deepslate_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cracked_deepslate_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cooked_mutton_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cooked_mutton_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cooked_mutton"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# end_stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:end_stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_stone_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# tripwire_hook_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:tripwire_hook_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:tripwire_hook"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_red_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_red_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_red_sandstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# nether_brick_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:nether_brick_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_brick"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_exposed_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_exposed_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_exposed_cut_copper_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# observer_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:observer_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:observer"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# baked_potato_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:baked_potato_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:baked_potato"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# deepslate_tiles_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:deepslate_tiles_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:deepslate_tiles"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# fletching_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:fletching_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:fletching_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stonecutter_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stonecutter_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stonecutter"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chiseled_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chiseled_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mossy_cobblestone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mossy_cobblestone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_cobblestone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# deepslate_tile_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:deepslate_tile_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:deepslate_tile_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# end_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:end_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_stone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cartography_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cartography_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cartography_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# writable_book_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:writable_book_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:writable_book"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# nether_wart_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:nether_wart_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_wart_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# tnt_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:tnt_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:tnt_minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# deepslate_tile_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:deepslate_tile_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:deepslate_tile_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chiseled_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chiseled_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_red_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_andesite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_andesite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_andesite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# ender_eye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:ender_eye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:ender_eye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# wooden_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:wooden_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lodestone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lodestone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lodestone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cracked_polished_blackstone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cracked_polished_blackstone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cracked_polished_blackstone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_leggings"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# exposed_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:exposed_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:exposed_cut_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# snow_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:snow_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:snow_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# grindstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:grindstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:grindstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# soul_campfire_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:soul_campfire_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:soul_campfire"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# glowstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:glowstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glowstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# furnace_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:furnace_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:furnace"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# flower_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:flower_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:flower_banner_pattern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chiseled_deepslate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chiseled_deepslate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_deepslate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# end_stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:end_stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_stone_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stripped_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stripped_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_oak_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# rabbit_stew_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:rabbit_stew_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:rabbit_stew"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_scrap_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_scrap_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_scrap"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diorite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diorite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diorite_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cooked_chicken_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cooked_chicken_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cooked_chicken"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_andesite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_andesite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_andesite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pumpkin_pie_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pumpkin_pie_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pumpkin_pie"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_nether_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_nether_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_nether_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mossy_stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mossy_stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_stone_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magma_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magma_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magma_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sandstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_ingot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_red_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# prismarine_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:prismarine_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cobbled_deepslate_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cobbled_deepslate_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cobbled_deepslate_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gold_nugget_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gold_nugget_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gold_nugget"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mossy_cobblestone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mossy_cobblestone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_cobblestone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smithing_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smithing_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smithing_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# heavy_weighted_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:heavy_weighted_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:heavy_weighted_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_nether_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_nether_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_nether_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# deepslate_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:deepslate_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:deepslate_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_exposed_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_exposed_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_exposed_cut_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# wheat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:wheat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wheat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_deepslate_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_deepslate_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_deepslate_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# carrot_on_a_stick_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:carrot_on_a_stick_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:carrot_on_a_stick"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_boots"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stripped_spruce_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stripped_spruce_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_spruce_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# andesite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:andesite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:andesite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# glass_bottle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:glass_bottle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glass_bottle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# exposed_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:exposed_cut_copper_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:exposed_cut_copper_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# emerald_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:emerald_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:emerald"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cooked_rabbit_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cooked_rabbit_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cooked_rabbit"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# shulker_box_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:shulker_box_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:shulker_box"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stripped_dark_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stripped_dark_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_dark_oak_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mossy_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mossy_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_stone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# redstone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:redstone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:redstone_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_hyphae"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_diorite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_diorite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_diorite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# enchanting_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:enchanting_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:enchanting_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# torch_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:torch_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:torch"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# prismarine_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:prismarine_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# prismarine_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:prismarine_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# honey_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:honey_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:honey_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_quartz_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_quartz_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_quartz_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# paper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:paper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:paper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# campfire_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:campfire_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:campfire"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_chestplate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chiseled_quartz_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chiseled_quartz_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_quartz_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# redstone_lamp_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:redstone_lamp_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:redstone_lamp"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_prismarine_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_prismarine_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_prismarine_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_deepslate_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_deepslate_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_deepslate_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_weathered_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_weathered_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_weathered_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spectral_arrow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spectral_arrow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spectral_arrow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# deepslate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:deepslate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:deepslate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# moss_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:moss_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:moss_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# bowl_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:bowl_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bowl"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_diorite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_diorite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_diorite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_oxidized_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_oxidized_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_oxidized_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_diorite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_diorite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_diorite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# deepslate_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:deepslate_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:deepslate_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_stone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_stone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_stone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_leggings"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# coal_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:coal_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:coal"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# raw_gold_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:raw_gold_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:raw_gold"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# nether_brick_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:nether_brick_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_brick_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# leather_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:leather_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_boots"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# repeater_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:repeater_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:repeater"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smoker_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smoker_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smoker"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# firework_rocket_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:firework_rocket_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:firework_rocket"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_boots"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# clock_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:clock_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:clock"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# granite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:granite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:granite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# emerald_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:emerald_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:emerald_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# weathered_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:weathered_cut_copper_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:weathered_cut_copper_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dried_kelp_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dried_kelp_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dried_kelp_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_boots"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brewing_stand_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brewing_stand_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brewing_stand"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# ladder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:ladder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:ladder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stripped_warped_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stripped_warped_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_warped_hyphae"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_chestplate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_prismarine_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_prismarine_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_prismarine_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blackstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blackstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blackstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# granite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:granite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:granite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_sandstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_sandstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_sandstone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# end_crystal_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:end_crystal_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_crystal"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# copper_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:copper_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:copper_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cut_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cut_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# coal_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:coal_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:coal_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_carrot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_carrot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_carrot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# fishing_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:fishing_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:fishing_rod"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# sugar_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:sugar_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sugar"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purpur_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purpur_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purpur_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# scaffolding_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:scaffolding_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:scaffolding"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# flint_and_steel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:flint_and_steel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:flint_and_steel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diorite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diorite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diorite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# quartz_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:quartz_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lever_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lever_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lever"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# comparator_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:comparator_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:comparator"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# furnace_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:furnace_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:furnace_minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dripstone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dripstone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dripstone_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_sandstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# andesite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:andesite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:andesite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_deepslate_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_deepslate_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_deepslate_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cobblestone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cobblestone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cobblestone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_weathered_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_weathered_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_weathered_cut_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# shears_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:shears_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:shears"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cake_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cake_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cake"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# clay_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:clay_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:clay"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oxidized_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oxidized_cut_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oxidized_cut_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# bone_meal_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:bone_meal_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bone_meal"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# popped_chorus_fruit_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:popped_chorus_fruit_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:popped_chorus_fruit"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cobbled_deepslate_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cobbled_deepslate_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cobbled_deepslate_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mojang_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mojang_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mojang_banner_pattern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chest_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chest_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chest_minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# honey_bottle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:honey_bottle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:honey_bottle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# bow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:bow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# wooden_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:wooden_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_nugget_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_nugget_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_nugget"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# glow_item_frame_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:glow_item_frame_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glow_item_frame"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# armor_stand_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:armor_stand_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:armor_stand"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# fermented_spider_eye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:fermented_spider_eye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:fermented_spider_eye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stripped_jungle_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stripped_jungle_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_jungle_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# map_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:map_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:map"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# raw_iron_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:raw_iron_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:raw_iron_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jack_o_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jack_o_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jack_o_lantern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stripped_crimson_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stripped_crimson_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_crimson_hyphae"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# shield_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:shield_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:shield"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# quartz_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:quartz_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# fire_charge_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:fire_charge_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:fire_charge"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_ice_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_ice_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_ice"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# ender_chest_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:ender_chest_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:ender_chest"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_weighted_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_weighted_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_weighted_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# loom_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:loom_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:loom"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# barrel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:barrel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:barrel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# prismarine_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:prismarine_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_prismarine_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_prismarine_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_prismarine"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_nether_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# raw_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:raw_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:raw_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magenta_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magenta_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# target_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:target_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:target"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diorite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diorite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diorite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_quartz_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_quartz_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_quartz"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# leather_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:leather_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# arrow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:arrow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:arrow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# rail_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:rail_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:rail"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# slime_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:slime_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:slime_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purpur_pillar_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purpur_pillar_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purpur_pillar"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# wooden_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:wooden_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# end_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:end_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_rod"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# powered_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:powered_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:powered_rail"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_boots"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# leather_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:leather_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_leggings"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# magma_cream_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:magma_cream_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magma_cream"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# quartz_pillar_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:quartz_pillar_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_pillar"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_exposed_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_exposed_copper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_exposed_copper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# hopper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:hopper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:hopper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_andesite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_andesite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_andesite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# coarse_dirt_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:coarse_dirt_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:coarse_dirt"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# quartz_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:quartz_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# painting_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:painting_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:painting"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_granite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_granite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_granite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# respawn_anchor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:respawn_anchor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:respawn_anchor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lectern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lectern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lectern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# soul_torch_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:soul_torch_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:soul_torch"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# trapped_chest_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:trapped_chest_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:trapped_chest"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# tnt_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:tnt_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:tnt"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# hopper_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:hopper_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:hopper_minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mossy_cobblestone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mossy_cobblestone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_cobblestone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# redstone_torch_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:redstone_torch_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:redstone_torch"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cookie_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cookie_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cookie"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# nether_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:nether_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# sticky_piston_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:sticky_piston_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sticky_piston"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# leather_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:leather_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_chestplate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# hay_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:hay_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:hay_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# raw_iron_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:raw_iron_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:raw_iron"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_blue_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_blue_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# flower_pot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:flower_pot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:flower_pot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# charcoal_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:charcoal_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:charcoal"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blast_furnace_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blast_furnace_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blast_furnace"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stripped_acacia_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stripped_acacia_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_acacia_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# skull_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:skull_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:skull_banner_pattern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# mushroom_stew_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:mushroom_stew_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mushroom_stew"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purpur_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purpur_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purpur_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# black_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:black_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# green_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:green_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cracked_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cracked_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cracked_nether_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# smooth_basalt_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:smooth_basalt_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_basalt"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# composter_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:composter_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:composter"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# book_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:book_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:book"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_chestplate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# detector_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:detector_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:detector_rail"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# leather_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:leather_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# waxed_copper_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:waxed_copper_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:waxed_copper_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# turtle_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:turtle_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:turtle_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# raw_copper_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:raw_copper_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:raw_copper_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# iron_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:iron_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# bread_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:bread_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bread"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# packed_ice_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:packed_ice_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:packed_ice"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_leggings"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lime_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lime_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# white_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:white_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cobbled_deepslate_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cobbled_deepslate_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cobbled_deepslate_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lead_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lead_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lead"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cyan_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cyan_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cracked_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cracked_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cracked_stone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# light_gray_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:light_gray_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# yellow_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:yellow_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# bookshelf_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:bookshelf_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bookshelf"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_sandstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# dark_oak_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:dark_oak_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# melon_seeds_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:melon_seeds_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:melon_seeds"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# piston_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:piston_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:piston"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# birch_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:birch_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# quartz_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:quartz_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# compass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:compass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:compass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# daylight_detector_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:daylight_detector_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:daylight_detector"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# amethyst_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:amethyst_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:amethyst_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# anvil_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:anvil_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:anvil"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blaze_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blaze_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blaze_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# warped_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:warped_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# polished_blackstone_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:polished_blackstone_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# jungle_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:jungle_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_leggings"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# prismarine_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:prismarine_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# soul_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:soul_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:soul_lantern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# acacia_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:acacia_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_candle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_candle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# oak_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:oak_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_apple_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_apple_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_apple"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# bone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:bone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bone_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spruce_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spruce_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stone_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stone_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pumpkin_seeds_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pumpkin_seeds_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pumpkin_seeds"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# spyglass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:spyglass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spyglass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# cauldron_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:cauldron_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cauldron"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_chestplate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# chest_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:chest_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chest"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# purple_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:purple_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# golden_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:golden_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# pink_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:pink_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# diamond_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:diamond_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# snow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:snow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:snow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# lapis_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:lapis_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lapis_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# brown_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:brown_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# crimson_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:crimson_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# stripped_birch_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:stripped_birch_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_birch_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# blue_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:blue_glazed_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_glazed_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# orange_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:orange_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# gray_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:gray_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# conduit_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:conduit_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:conduit"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

# netherite_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:netherite_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

#tellraw @a[distance=..5] [{"text":"has_Recipe: "},{"score":{"name":"#has_recipe","objective":"dt.tmp"}}]
#tellraw @a[distance=..5] [{"text":"loot: "},{"score":{"name":"#num_loot","objective":"dt.tmp"}}]
execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{dt_autocrafter:1b}}}] store result entity @s Item.Count byte 1 run scoreboard players get #num_loot dt.tmp

#[[[end]]]