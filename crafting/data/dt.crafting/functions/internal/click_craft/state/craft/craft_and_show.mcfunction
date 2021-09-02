function call_stack:push

execute store result storage call_stack: call.arg0 int 1 run scoreboard players get @s dt.craft
function dt.crafting:internal/click_craft/id_to_item
data modify storage call_stack: this.item set from storage call_stack: call.result
tellraw @p ["Crafting ",{"nbt":"this.item.displayName","storage":"call_stack:"}, "..."]
function call_stack:pop