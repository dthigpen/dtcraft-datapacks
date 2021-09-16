say loading click_craft
scoreboard objectives add dt.craft.state dummy
scoreboard players set @a dt.craft.state 0
scoreboard players set #inventory dt.craft.state -1
scoreboard players set #recipes dt.craft.state -2
scoreboard players set #inventory_reset dt.craft.state -3


# todo change this to dt.craft for easier invokation
scoreboard objectives add dt.click_craft trigger
scoreboard players enable @a dt.click_craft

# Used for id item selection in the given state when clicking on buttons
scoreboard objectives add dt.cc.select trigger
scoreboard players enable @a dt.cc.select

# temp
scoreboard objectives add dt.cc.tmp dummy
scoreboard players reset * dt.cc.tmp

function dt.crafting:internal/click_craft/setup_items