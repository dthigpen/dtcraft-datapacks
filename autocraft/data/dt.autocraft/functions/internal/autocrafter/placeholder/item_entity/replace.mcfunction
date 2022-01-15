# Remove tag from nearby result_placeholder entities 
execute as @e[sort=nearest, distance=0..7,type=item,nbt={Item:{tag:{dt:{type:"result_placeholder"}}}}] run data remove entity @s Item.tag.dt