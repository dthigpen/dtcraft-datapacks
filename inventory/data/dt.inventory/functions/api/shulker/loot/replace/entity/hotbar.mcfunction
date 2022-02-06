#> dt.inventory:api/shulker/loot/replace/entity/hotbar
# replace the current player's hotbar items with items in the shulker
execute in overworld run loot replace entity @s hotbar.0 9 mine 2999999 255 2999999 minecraft:air{drop_contents:true}