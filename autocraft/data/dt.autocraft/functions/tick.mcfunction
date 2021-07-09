#say autocraft tick!
schedule function dt.autocraft:tick 1t replace

function dt.autocraft:internal/blocks/autocrafter/placeholders/revert_items
function dt.autocraft:internal/custom_block_placement/tick
execute as @e[type=armor_stand, tag=dt.ac] at @s run function dt.autocraft:internal/blocks/autocrafter/tick