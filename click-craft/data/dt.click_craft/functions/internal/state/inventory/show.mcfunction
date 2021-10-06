function call_stack:push
function dt.click_craft:internal/print/clear
function dt.click_craft:internal/print/selected_items_loop
tellraw @s "Click items to view recipes for:"

data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from entity @s Inventory[].id
function dt.array:api/unique
data modify storage call_stack: this.unique_ids set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.unique_ids
data modify storage call_stack: call.arg1 set value []
function dt.click_craft:internal/state/select/items_to_display_items
data modify storage call_stack: this.display_items set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.display_items
function dt.click_craft:internal/print/display_items_loop

# References to /trigger dt.click_craft set -2 and trigger dt.click_craft set -3
tellraw @p ["",{"text":" < Reset","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger dt.click_craft set -3"},"hoverEvent":{"action":"show_text","contents":["Clear Ingredient Selection"]}}," | ",{"text":"Recipes >","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger dt.click_craft set -2"}}]
function call_stack:pop