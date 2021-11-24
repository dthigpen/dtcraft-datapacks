# say autocraft tick
# setup a newly created autocrafter
execute if entity @s[tag=dt.ac.init] run function dt.autocraft:internal/autocrafter/setup/block
# remove an autocrafter that was just destroyed
execute unless block ~ ~ ~ minecraft:barrel run function dt.autocraft:internal/autocrafter/remove
# update the gui
execute if block ~ ~ ~ minecraft:barrel run function dt.gui:api/self/tick
# handle the new state
execute if block ~ ~ ~ minecraft:barrel run function dt.autocraft:internal/autocrafter/state/handle
# manually handle hopper interactions with the gui
execute if block ~ ~ ~ minecraft:barrel run function dt.gui:api/self/tick_hopper
