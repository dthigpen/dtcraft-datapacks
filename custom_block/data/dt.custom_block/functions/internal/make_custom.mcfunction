# say make_custom
#[[[cog
#   import datapack_utils.utils as utils
#   for x,y,z in utils.coordinate_range((-1,-1,-1),(1,1,1)):
#       cog.outl(f'execute positioned ~{x} ~{y} ~{z} if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{{Lock:""}} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place')
#]]]
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~0 ~0 ~0 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~0 ~0 ~1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~0 ~1 ~0 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~0 ~1 ~1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~1 ~0 ~0 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~1 ~0 ~1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~1 ~1 ~0 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Lock:""} align xyz positioned ~0.5 ~ ~0.5 run function dt.custom_block:internal/on_place
#[[[end]]]