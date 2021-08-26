# say autocraft tick
execute if entity @s[tag=dt.ac.init] run function dt.autocraft:internal/blocks/autocrafter/setup/block
execute unless block ~ ~ ~ minecraft:dropper run function dt.autocraft:internal/blocks/autocrafter/remove

execute if block ~ ~ ~ minecraft:dropper run function dt.autocraft:internal/blocks/autocrafter/state/set
execute if block ~ ~ ~ minecraft:dropper run function dt.autocraft:internal/blocks/autocrafter/state/handle