function call_stack:push

execute as @a[sort=nearest, distance=0..7] if data entity @s Inventory[{tag:{dt:{type:"result_placeholder"}}}] run function dt.autocraft:internal/autocrafter/placeholder/player/replace
execute positioned ~ ~-1 ~ run function dt.autocraft:internal/autocrafter/placeholder/block/replace
execute as @e[sort=nearest, distance=0..7,type=item,nbt={Item:{tag:{dt:{type:"result_placeholder"}}}}] run data remove entity @s Item.tag.dt
# tellraw @p ["replace_all SelectedItem.tag: ",{"nbt":"SelectedItem.tag","entity":"@s"}]

function call_stack:pop