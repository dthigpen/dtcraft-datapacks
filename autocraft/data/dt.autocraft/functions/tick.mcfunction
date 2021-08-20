#say autocraft tick!
schedule function dt.autocraft:tick 1t replace

function dt.autocraft:internal/blocks/autocrafter/placeholders/revert_items
execute as @e[type=armor_stand, tag=dt.ac] at @s run function dt.autocraft:internal/blocks/autocrafter/tick