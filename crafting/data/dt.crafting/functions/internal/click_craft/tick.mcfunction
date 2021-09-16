
scoreboard players reset @a dt.cc.tmp
scoreboard players enable @a dt.cc.tmp
# tellraw @p ["tick.mcfunction: ",{"score":{"name":"@s","objective":"dt.click_craft"}}]
# execute as @p run tellraw @p ["tick.mcfunction: ",{"score":{"name":"@s","objective":"dt.cc.select"}}]
execute as @a[scores={dt.click_craft=1..}] run scoreboard players operation @s dt.click_craft = #inventory dt.craft.state
execute as @a[scores={dt.click_craft=..-1}] run scoreboard players operation @s dt.cc.tmp = @s dt.click_craft
execute as @a[scores={dt.click_craft=..-1}] run scoreboard players reset @s dt.click_craft
scoreboard players enable @a dt.click_craft

# set state variable
execute as @a[scores={dt.cc.tmp=..-1}] run scoreboard players operation @s dt.craft.state = @s dt.click_craft
# tellraw @p ["tick.mcfunction: ",{"score":{"name":"@s","objective":"dt.cc.tmp"}}]
# Show gui for current state
# tellraw @p ["tick.mcfunction: ",{"score":{"name":"@s","objective":"dt.craft.state"}}]
execute as @a if score @s dt.cc.tmp = #inventory dt.craft.state run function dt.crafting:internal/click_craft/state/inventory/set
execute as @a if score @s dt.cc.tmp = #inventory_reset dt.craft.state run function dt.crafting:internal/click_craft/state/inventory/reset
execute as @a if score @s dt.cc.tmp = #recipes dt.craft.state run function dt.crafting:internal/click_craft/state/recipes/set
scoreboard players reset @a dt.cc.tmp
scoreboard players enable @a dt.cc.tmp


# Handle an item selection for each state
execute as @a[scores={dt.cc.select=1..}] run function dt.crafting:internal/click_craft/state/handle_selection
execute as @a[scores={dt.cc.select=1..}] run scoreboard players reset @s dt.cc.select
scoreboard players enable @a dt.cc.select


