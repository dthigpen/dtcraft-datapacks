#say load_shulker

execute in overworld run forceload add 2999999 2999999
execute in overworld run setblock 2999999 255 2999999 pink_shulker_box replace
execute in overworld run setblock 2999999 254 2999999 pink_shulker_box replace
execute in overworld run setblock 2999999 253 2999999 chest[type=right, facing=north] replace
execute in overworld run setblock 2999998 253 2999999 chest[type=left, facing=north] replace


execute in the_nether run forceload add 2999999 2999999
execute in the_nether run setblock 2999999 253 2999999 chest[type=right, facing=north] replace
execute in the_nether run setblock 2999998 253 2999999 chest[type=left, facing=north] replace