# setblock ~ ~ ~ barrel replace
function dt.gui:api/create/barrel
data modify block ~ ~ ~ CustomName set from entity @s Item.tag.hold.block.name
function dt.autocraft:internal/blocks/autocrafter/setup/set_recipe
tag @s remove dt.ac.init