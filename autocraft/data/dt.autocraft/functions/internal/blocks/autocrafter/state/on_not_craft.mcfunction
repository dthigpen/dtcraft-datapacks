# Add tags when in a locked state and remove tags from items below
execute positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/add_tags_to_block_items
execute positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
# execute if block ~ ~ ~ dropper[facing=up] positioned ~ ~1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
# execute if block ~ ~ ~ dropper[facing=west] positioned ~-1 ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
# execute if block ~ ~ ~ dropper[facing=east] positioned ~1 ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
# execute if block ~ ~ ~ dropper[facing=south] positioned ~ ~ ~1 run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
# execute if block ~ ~ ~ dropper[facing=north] positioned ~ ~ ~-1 run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items