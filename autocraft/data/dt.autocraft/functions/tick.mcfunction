#say autocraft tick!
schedule function dt.autocraft:tick 1t replace

# Tick autocrafter blocks
execute as @e[type=glow_item_frame, tag=dt.ac.block_entity] at @s run function dt.autocraft:internal/autocrafter/tick
# Remove placeholder tagged results from player inventories
execute as @a if data entity @s Inventory[{tag:{dt:{type:"result_placeholder"}}}] run function dt.autocraft:internal/autocrafter/placeholder/player/replace