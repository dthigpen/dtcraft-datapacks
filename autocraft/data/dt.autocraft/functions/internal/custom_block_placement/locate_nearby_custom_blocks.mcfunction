# Locate nearby Autocrafter blocks to continue setup

#[[[cog
#   import datapack_utils.utils as utils
#   for x,y,z in utils.coordinate_range((-1,-1,-1),(1,1,1)):
#       cog.outl(f'execute positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:dropper{{Lock:"dt_autocrafter"}} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand')
#]]]
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~0 ~0 ~0 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~0 ~0 ~1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~0 ~1 ~0 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~0 ~1 ~1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~1 ~0 ~0 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~1 ~0 ~1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~1 ~1 ~0 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:dropper{Lock:"dt_autocrafter"} align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/setup/place_armorstand
#[[[end]]]