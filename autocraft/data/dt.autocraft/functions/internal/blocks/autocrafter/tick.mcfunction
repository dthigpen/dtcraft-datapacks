data merge entity @s {Fire:10s}
execute unless block ~ ~ ~ minecraft:dropper run function dt.autocraft:internal/blocks/autocrafter/remove
execute if block ~ ~ ~ minecraft:dropper run function dt.autocraft:internal/blocks/autocrafter/state/set
execute if block ~ ~ ~ minecraft:dropper run function dt.autocraft:internal/blocks/autocrafter/state/handle