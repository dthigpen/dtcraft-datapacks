advancement revoke @s only autocraft:autocrafter

scoreboard players set #has_recipe dt.tmp 0
scoreboard players set #num_loot dt.tmp 0
execute store result score #num_loot dt.tmp run clear @s minecraft:knowledge_book

# autocrafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:autocrafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"Autocrafter"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2


# acacia_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# acacia_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:acacia_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:acacia_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# activator_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:activator_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:activator_rail"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# andesite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:andesite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:andesite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# andesite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:andesite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:andesite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# andesite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:andesite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:andesite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# andesite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:andesite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:andesite_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# anvil_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:anvil_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:anvil"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# armor_stand_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:armor_stand_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:armor_stand"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# arrow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:arrow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:arrow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# barrel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:barrel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:barrel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# beacon_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:beacon_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:beacon"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# beehive_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:beehive_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:beehive"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# beetroot_soup_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:beetroot_soup_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:beetroot_soup"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# birch_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:birch_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:birch_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blackstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blackstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blackstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blackstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blackstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blackstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blackstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blackstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blackstone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# black_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:black_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# black_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:black_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# black_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:black_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# black_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:black_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# black_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:black_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# black_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:black_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# black_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:black_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# black_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:black_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# black_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:black_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:black_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blast_furnace_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blast_furnace_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blast_furnace"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blaze_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blaze_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blaze_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_ice_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_ice_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_ice"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# blue_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:blue_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:blue_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# bone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:bone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bone_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# bone_meal_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:bone_meal_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bone_meal"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# book_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:book_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:book"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# bookshelf_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:bookshelf_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bookshelf"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# bow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:bow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# bowl_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:bowl_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bowl"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# bread_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:bread_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bread"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brewing_stand_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brewing_stand_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brewing_stand"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brown_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brown_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brown_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brown_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brown_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brown_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brown_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brown_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brown_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brown_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brown_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brown_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brown_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brown_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brown_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brown_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# brown_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:brown_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:brown_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# bucket_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:bucket_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:bucket"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cake_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cake_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cake"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# campfire_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:campfire_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:campfire"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# carrot_on_a_stick_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:carrot_on_a_stick_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:carrot_on_a_stick"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cartography_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cartography_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cartography_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cauldron_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cauldron_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cauldron"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# chain_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:chain_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chain"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# chest_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:chest_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chest"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# chest_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:chest_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chest_minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# chiseled_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:chiseled_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_nether_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# chiseled_polished_blackstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:chiseled_polished_blackstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_polished_blackstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# chiseled_quartz_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:chiseled_quartz_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_quartz_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# chiseled_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:chiseled_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_red_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# chiseled_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:chiseled_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# chiseled_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:chiseled_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:chiseled_stone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# clay_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:clay_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:clay"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# clock_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:clock_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:clock"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# coal_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:coal_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:coal"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# coal_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:coal_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:coal_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# coarse_dirt_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:coarse_dirt_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:coarse_dirt"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cobblestone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cobblestone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cobblestone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cobblestone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cobblestone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cobblestone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cobblestone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cobblestone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cobblestone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# comparator_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:comparator_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:comparator"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# compass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:compass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:compass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# composter_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:composter_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:composter"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# conduit_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:conduit_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:conduit"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cookie_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cookie_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cookie"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crafting_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crafting_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crafting_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# creeper_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:creeper_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:creeper_banner_pattern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_hyphae"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crimson_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crimson_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crimson_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# crossbow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:crossbow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:crossbow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cut_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cut_red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_red_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cut_red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cut_red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_red_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cut_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cut_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cut_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cut_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cut_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cyan_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cyan_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cyan_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cyan_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cyan_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cyan_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cyan_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cyan_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cyan_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cyan_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cyan_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cyan_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cyan_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cyan_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cyan_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cyan_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# cyan_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:cyan_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:cyan_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_oak_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_prismarine_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_prismarine_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_prismarine"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_prismarine_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_prismarine_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_prismarine_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dark_prismarine_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dark_prismarine_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dark_prismarine_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# daylight_detector_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:daylight_detector_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:daylight_detector"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# detector_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:detector_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:detector_rail"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_boots"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_chestplate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_leggings"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diamond_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diamond_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diamond_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diorite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diorite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diorite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diorite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diorite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diorite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diorite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diorite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diorite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# diorite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:diorite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:diorite_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dispenser_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dispenser_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dispenser"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dried_kelp_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dried_kelp_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dried_kelp"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dried_kelp_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dried_kelp_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dried_kelp_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# dropper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:dropper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:dropper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# emerald_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:emerald_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:emerald"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# emerald_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:emerald_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:emerald_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# enchanting_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:enchanting_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:enchanting_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# ender_chest_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:ender_chest_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:ender_chest"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# ender_eye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:ender_eye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:ender_eye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# end_crystal_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:end_crystal_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_crystal"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# end_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:end_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_rod"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# end_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:end_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_stone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# end_stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:end_stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_stone_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# end_stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:end_stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_stone_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# end_stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:end_stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:end_stone_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# fermented_spider_eye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:fermented_spider_eye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:fermented_spider_eye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# fire_charge_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:fire_charge_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:fire_charge"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# fishing_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:fishing_rod_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:fishing_rod"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# fletching_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:fletching_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:fletching_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# flint_and_steel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:flint_and_steel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:flint_and_steel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# flower_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:flower_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:flower_banner_pattern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# flower_pot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:flower_pot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:flower_pot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# furnace_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:furnace_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:furnace"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# furnace_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:furnace_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:furnace_minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# glass_bottle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:glass_bottle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glass_bottle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# glistering_melon_slice_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:glistering_melon_slice_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glistering_melon_slice"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# glowstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:glowstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:glowstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_apple_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_apple_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_apple"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_boots"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_carrot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_carrot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_carrot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_chestplate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_leggings"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# golden_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:golden_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:golden_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gold_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gold_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gold_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gold_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gold_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gold_ingot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gold_nugget_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gold_nugget_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gold_nugget"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# granite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:granite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:granite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# granite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:granite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:granite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# granite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:granite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:granite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# granite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:granite_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:granite_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gray_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gray_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gray_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gray_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gray_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gray_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gray_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gray_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gray_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gray_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gray_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gray_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gray_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gray_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gray_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gray_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# gray_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:gray_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:gray_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# green_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:green_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# green_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:green_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# green_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:green_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# green_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:green_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# green_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:green_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# green_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:green_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# green_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:green_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# green_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:green_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:green_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# grindstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:grindstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:grindstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# hay_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:hay_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:hay_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# heavy_weighted_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:heavy_weighted_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:heavy_weighted_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# honeycomb_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:honeycomb_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:honeycomb_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# honey_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:honey_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:honey_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# honey_bottle_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:honey_bottle_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:honey_bottle"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# hopper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:hopper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:hopper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# hopper_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:hopper_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:hopper_minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_bars_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_bars_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_bars"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_boots"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_chestplate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_ingot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_leggings"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_nugget_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_nugget_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_nugget"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# iron_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:iron_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:iron_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# item_frame_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:item_frame_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:item_frame"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jack_o_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jack_o_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jack_o_lantern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jukebox_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jukebox_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jukebox"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# jungle_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:jungle_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:jungle_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# ladder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:ladder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:ladder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lantern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lapis_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lapis_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lapis_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lapis_lazuli_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lapis_lazuli_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lapis_lazuli"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lead_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lead_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lead"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# leather_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:leather_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# leather_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:leather_boots_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_boots"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# leather_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:leather_chestplate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_chestplate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# leather_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:leather_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# leather_horse_armor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:leather_horse_armor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_horse_armor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# leather_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:leather_leggings_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:leather_leggings"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lectern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lectern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lectern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lever_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lever_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lever"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_blue_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_blue_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_blue_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_blue_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_blue_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_blue_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_blue_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_blue_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_blue_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_blue_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_blue_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_blue_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_blue_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_blue_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_blue_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_blue_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_blue_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_blue_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_blue_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_gray_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_gray_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_gray_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_gray_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_gray_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_gray_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_gray_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_gray_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_gray_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_gray_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_gray_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_gray_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_gray_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_gray_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_gray_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_gray_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_gray_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_gray_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_gray_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# light_weighted_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:light_weighted_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:light_weighted_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lime_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lime_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lime_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lime_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lime_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lime_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lime_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lime_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lime_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lime_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lime_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lime_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lime_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lime_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lime_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lime_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lime_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lime_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lime_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# lodestone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:lodestone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:lodestone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# loom_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:loom_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:loom"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magenta_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magenta_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magenta_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magenta_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magenta_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magenta_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magenta_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magenta_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magenta_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magenta_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magenta_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magenta_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magenta_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magenta_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magenta_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magenta_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magenta_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magenta_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magenta_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magma_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magma_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magma_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# magma_cream_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:magma_cream_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:magma_cream"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# map_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:map_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:map"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# melon_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:melon_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:melon"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# melon_seeds_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:melon_seeds_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:melon_seeds"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mojang_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mojang_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mojang_banner_pattern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mossy_cobblestone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mossy_cobblestone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_cobblestone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mossy_cobblestone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mossy_cobblestone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_cobblestone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mossy_cobblestone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mossy_cobblestone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_cobblestone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mossy_cobblestone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mossy_cobblestone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_cobblestone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mossy_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mossy_stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_stone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mossy_stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mossy_stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_stone_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mossy_stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mossy_stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_stone_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mossy_stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mossy_stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mossy_stone_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# mushroom_stew_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:mushroom_stew_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:mushroom_stew"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# netherite_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:netherite_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# netherite_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:netherite_ingot_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:netherite_ingot"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# nether_brick_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:nether_brick_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_brick_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# nether_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:nether_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# nether_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:nether_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# nether_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:nether_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# nether_wart_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:nether_wart_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:nether_wart_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# note_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:note_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:note_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:oak_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# observer_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:observer_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:observer"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# orange_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:orange_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# orange_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:orange_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# orange_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:orange_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# orange_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:orange_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# orange_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:orange_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# orange_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:orange_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# orange_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:orange_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# orange_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:orange_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# orange_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:orange_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:orange_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# packed_ice_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:packed_ice_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:packed_ice"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# painting_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:painting_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:painting"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# paper_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:paper_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:paper"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pink_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pink_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pink_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pink_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pink_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pink_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pink_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pink_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pink_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pink_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pink_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pink_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pink_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pink_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pink_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pink_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pink_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pink_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pink_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# piston_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:piston_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:piston"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_andesite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_andesite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_andesite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_andesite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_andesite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_andesite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_andesite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_andesite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_andesite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_basalt_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_basalt_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_basalt"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_blackstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_blackstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_blackstone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_diorite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_diorite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_diorite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_diorite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_diorite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_diorite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_diorite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_diorite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_diorite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_granite_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_granite_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_granite"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_granite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_granite_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_granite_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# polished_granite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:polished_granite_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:polished_granite_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# powered_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:powered_rail_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:powered_rail"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# prismarine_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:prismarine_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# prismarine_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:prismarine_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# prismarine_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:prismarine_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# prismarine_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:prismarine_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# prismarine_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:prismarine_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# prismarine_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:prismarine_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# prismarine_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:prismarine_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:prismarine_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pumpkin_pie_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pumpkin_pie_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pumpkin_pie"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# pumpkin_seeds_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:pumpkin_seeds_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:pumpkin_seeds"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purple_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purple_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purple_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purple_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purple_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purple_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purple_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purple_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purple_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purple_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purple_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purple_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purple_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purple_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purple_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purple_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purple_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purple_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purple_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purpur_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purpur_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purpur_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purpur_pillar_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purpur_pillar_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purpur_pillar"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purpur_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purpur_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purpur_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# purpur_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:purpur_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:purpur_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# quartz_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:quartz_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# quartz_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:quartz_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# quartz_pillar_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:quartz_pillar_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_pillar"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# quartz_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:quartz_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# quartz_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:quartz_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:quartz_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# rabbit_stew_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:rabbit_stew_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:rabbit_stew"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# rail_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:rail_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:rail"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# redstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:redstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:redstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# redstone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:redstone_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:redstone_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# redstone_lamp_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:redstone_lamp_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:redstone_lamp"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# redstone_torch_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:redstone_torch_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:redstone_torch"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_nether_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_nether_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_nether_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_nether_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_nether_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_nether_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_nether_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_nether_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_nether_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_nether_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_nether_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_sandstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_sandstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_sandstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_sandstone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# red_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:red_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:red_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# repeater_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:repeater_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:repeater"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# respawn_anchor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:respawn_anchor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:respawn_anchor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:sandstone_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sandstone"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sandstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# sandstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:sandstone_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sandstone_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# scaffolding_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:scaffolding_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:scaffolding"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# sea_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:sea_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sea_lantern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# shears_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:shears_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:shears"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# shield_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:shield_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:shield"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# shulker_box_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:shulker_box_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:shulker_box"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# skull_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:skull_banner_pattern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:skull_banner_pattern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# slime_ball_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:slime_ball_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:slime_ball"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# slime_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:slime_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:slime_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# smithing_table_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:smithing_table_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smithing_table"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# smoker_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:smoker_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smoker"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# smooth_quartz_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:smooth_quartz_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_quartz_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# smooth_quartz_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:smooth_quartz_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_quartz_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# smooth_red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:smooth_red_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_red_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# smooth_red_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:smooth_red_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_red_sandstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# smooth_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:smooth_sandstone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_sandstone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# smooth_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:smooth_sandstone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_sandstone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# smooth_stone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:smooth_stone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:smooth_stone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# snow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:snow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:snow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# snow_block_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:snow_block_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:snow_block"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# soul_campfire_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:soul_campfire_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:soul_campfire"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# soul_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:soul_lantern_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:soul_lantern"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# soul_torch_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:soul_torch_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:soul_torch"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spectral_arrow_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spectral_arrow_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spectral_arrow"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_boat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_boat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# spruce_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:spruce_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:spruce_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stick_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stick_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stick"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# sticky_piston_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:sticky_piston_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sticky_piston"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stonecutter_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stonecutter_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stonecutter"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_bricks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_bricks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_brick_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_brick_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_brick_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_brick_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_brick_wall_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_brick_wall"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stone_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stone_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stone_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stripped_acacia_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stripped_acacia_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_acacia_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stripped_birch_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stripped_birch_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_birch_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stripped_crimson_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stripped_crimson_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_crimson_hyphae"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stripped_dark_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stripped_dark_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_dark_oak_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stripped_jungle_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stripped_jungle_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_jungle_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stripped_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stripped_oak_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_oak_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stripped_spruce_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stripped_spruce_wood_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_spruce_wood"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# stripped_warped_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:stripped_warped_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:stripped_warped_hyphae"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# sugar_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:sugar_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:sugar"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# target_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:target_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:target"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# tnt_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:tnt_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:tnt"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# tnt_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:tnt_minecart_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:tnt_minecart"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# torch_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:torch_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:torch"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# trapped_chest_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:trapped_chest_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:trapped_chest"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# tripwire_hook_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:tripwire_hook_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:tripwire_hook"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# turtle_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:turtle_helmet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:turtle_helmet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_button_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_button_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_button"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_door_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_door_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_door"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_fence_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_fence"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_fence_gate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_fence_gate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_fungus_on_a_stick_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_fungus_on_a_stick_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_fungus_on_a_stick"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_hyphae_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_hyphae"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_planks_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_planks"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_pressure_plate_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_pressure_plate"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_sign_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_sign"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_slab_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_slab"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_stairs_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_stairs"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# warped_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:warped_trapdoor_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:warped_trapdoor"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# wheat_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:wheat_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wheat"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# white_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:white_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# white_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:white_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# white_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:white_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# white_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:white_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# white_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:white_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# white_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:white_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# white_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:white_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# white_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:white_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# white_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:white_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:white_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# wooden_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:wooden_axe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_axe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# wooden_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:wooden_hoe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_hoe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# wooden_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:wooden_pickaxe_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_pickaxe"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# wooden_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:wooden_shovel_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_shovel"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# wooden_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:wooden_sword_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:wooden_sword"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# writable_book_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:writable_book_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:writable_book"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# yellow_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:yellow_banner_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_banner"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# yellow_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:yellow_bed_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_bed"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# yellow_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:yellow_carpet_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_carpet"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# yellow_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:yellow_concrete_powder_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_concrete_powder"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# yellow_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:yellow_dye_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_dye"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# yellow_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:yellow_stained_glass_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_stained_glass"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# yellow_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:yellow_stained_glass_pane_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_stained_glass_pane"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# yellow_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:yellow_terracotta_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_terracotta"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2
        
# yellow_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s autocraft:yellow_wool_crafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"minecraft:yellow_wool"}'},CustomModelData:777777,dt_autocrafter:1b,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2


#tellraw @a[distance=..5] [{"text":"has_Recipe: "},{"score":{"name":"#has_recipe","objective":"dt.tmp"}}]
#tellraw @a[distance=..5] [{"text":"loot: "},{"score":{"name":"#num_loot","objective":"dt.tmp"}}]
execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{dt_autocrafter:1b}}}] store result entity @s Item.Count byte 1 run scoreboard players get #num_loot dt.tmp