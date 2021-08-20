# say place_if_autocraft_block
execute if data block ~ ~ ~ {Lock:"dt_autocrafter"} run tag @s add dt.ac.block_entity
execute if data block ~ ~ ~ {Lock:"dt_autocrafter"} run data modify storage dt.custom_block:in item set value {id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777777}}
execute if data block ~ ~ ~ {Lock:"dt_autocrafter"} run data modify storage dt.custom_block:in overrides.up set value {id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777778}}
execute if data block ~ ~ ~ {Lock:"dt_autocrafter"} run data modify storage dt.custom_block:in overrides.down set value {id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777779}}
execute if data block ~ ~ ~ {Lock:"dt_autocrafter"} run function dt.custom_block:api/set_model
execute if data block ~ ~ ~ {Lock:"dt_autocrafter"} run function dt.autocraft:internal/blocks/autocrafter/setup/set_recipe
execute if data block ~ ~ ~ {Lock:"dt_autocrafter"} run data modify block ~ ~ ~ Lock set value ""