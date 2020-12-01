
# remove tags from floating items
execute as @e[type=item,nbt={Item:{tag:{dt_placeholder:true}}}] run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_item_entity
execute as @a if data entity @s Inventory[{tag:{dt_placeholder:true}}] run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_player