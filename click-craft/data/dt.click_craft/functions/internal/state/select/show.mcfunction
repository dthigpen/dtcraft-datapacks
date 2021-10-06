function call_stack:push
function dt.click_craft:internal/print/clear
function dt.click_craft:internal/print/selected_items_loop
tellraw @s "Click items below to select:"

# data modify storage call_stack: this.items set value ['{"text":"Wooden Pickaxe"}']


data modify storage call_stack: call.arg0 set from entity @s Inventory
data modify storage call_stack: call.arg1 set value []
function dt.click_craft:internal/state/select/items_to_display_items
data modify storage call_stack: this.display_items set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.display_items
function dt.click_craft:internal/print/display_items_loop
tellraw @p ["",{"text":" < Reset","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger dt.craft.with set -1"},"hoverEvent":{"action":"show_text","contents":["Clear Ingredient Selection"]}}," | ",{"text":"Recipes >","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger dt.craft set -1"}}]
function call_stack:pop