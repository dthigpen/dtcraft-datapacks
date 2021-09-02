
# execute as @p run tellraw @p ["tick.mcfunction: ",{"score":{"name":"@s","objective":"dt.cc.select"}}]

# Show gui for current state
execute as @a[scores={dt.click_craft=1..}] run scoreboard players operation @s dt.click_craft = #inventory dt.craft.state
execute as @a if score @s dt.click_craft = #inventory dt.craft.state run function dt.crafting:internal/click_craft/state/inventory/set
execute as @a if score @s dt.click_craft = #inventory_reset dt.craft.state run function dt.crafting:internal/click_craft/state/inventory/reset
execute as @a if score @s dt.click_craft = #recipe dt.craft.state run function dt.crafting:internal/click_craft/state/recipes/set
execute as @a[scores={dt.click_craft=..-1}] run scoreboard players reset @s
scoreboard players enable @a dt.click_craft

# Handle an item selection for each state
execute as @a[scores={dt.cc.select=1..}] run function dt.crafting:internal/click_craft/state/handle_selection
execute as @a[scores={dt.cc.select=1..}] run scoreboard players reset @s
scoreboard players enable @a dt.cc.select