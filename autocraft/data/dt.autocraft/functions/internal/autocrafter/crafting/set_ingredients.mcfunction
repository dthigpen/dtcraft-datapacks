function call_stack:push
data modify storage call_stack: this.ingredients set from storage call_stack: this.arg0
# tellraw @p ["set_ingredients this.ingredients: ",{"nbt":"this.ingredients","storage":"call_stack:"}]
#[[[cog
#   from datapack_utils import *
#   for slot in [1,2,3,10,11,12,19,20,21]:
#       cog.outl(f'execute if data storage call_stack: this.ingredients[{{Slot:{slot}b}}] run data modify block ~ ~ ~ Items[{{Slot:{slot}b}}] set from storage call_stack: this.ingredients[{{Slot:{slot}b}}]')
#       cog.outl(f'execute unless data storage call_stack: this.ingredients[{{Slot:{slot}b}}] run data remove block ~ ~ ~ Items[{{Slot:{slot}b}}]')
#       #cog.outl(f'execute if data storage call_stack: this.ingredients[{{Slot:{slot}b}}] run tellraw @p ["set_ingredients this.ingredients[{{Slot:{slot}b}}]: ",{{"nbt":"this.ingredients[{{Slot:{slot}b}}]","storage":"call_stack:"}}]')
#]]]
execute if data storage call_stack: this.ingredients[{Slot:1b}] run data modify block ~ ~ ~ Items[{Slot:1b}] set from storage call_stack: this.ingredients[{Slot:1b}]
execute unless data storage call_stack: this.ingredients[{Slot:1b}] run data remove block ~ ~ ~ Items[{Slot:1b}]
execute if data storage call_stack: this.ingredients[{Slot:2b}] run data modify block ~ ~ ~ Items[{Slot:2b}] set from storage call_stack: this.ingredients[{Slot:2b}]
execute unless data storage call_stack: this.ingredients[{Slot:2b}] run data remove block ~ ~ ~ Items[{Slot:2b}]
execute if data storage call_stack: this.ingredients[{Slot:3b}] run data modify block ~ ~ ~ Items[{Slot:3b}] set from storage call_stack: this.ingredients[{Slot:3b}]
execute unless data storage call_stack: this.ingredients[{Slot:3b}] run data remove block ~ ~ ~ Items[{Slot:3b}]
execute if data storage call_stack: this.ingredients[{Slot:10b}] run data modify block ~ ~ ~ Items[{Slot:10b}] set from storage call_stack: this.ingredients[{Slot:10b}]
execute unless data storage call_stack: this.ingredients[{Slot:10b}] run data remove block ~ ~ ~ Items[{Slot:10b}]
execute if data storage call_stack: this.ingredients[{Slot:11b}] run data modify block ~ ~ ~ Items[{Slot:11b}] set from storage call_stack: this.ingredients[{Slot:11b}]
execute unless data storage call_stack: this.ingredients[{Slot:11b}] run data remove block ~ ~ ~ Items[{Slot:11b}]
execute if data storage call_stack: this.ingredients[{Slot:12b}] run data modify block ~ ~ ~ Items[{Slot:12b}] set from storage call_stack: this.ingredients[{Slot:12b}]
execute unless data storage call_stack: this.ingredients[{Slot:12b}] run data remove block ~ ~ ~ Items[{Slot:12b}]
execute if data storage call_stack: this.ingredients[{Slot:19b}] run data modify block ~ ~ ~ Items[{Slot:19b}] set from storage call_stack: this.ingredients[{Slot:19b}]
execute unless data storage call_stack: this.ingredients[{Slot:19b}] run data remove block ~ ~ ~ Items[{Slot:19b}]
execute if data storage call_stack: this.ingredients[{Slot:20b}] run data modify block ~ ~ ~ Items[{Slot:20b}] set from storage call_stack: this.ingredients[{Slot:20b}]
execute unless data storage call_stack: this.ingredients[{Slot:20b}] run data remove block ~ ~ ~ Items[{Slot:20b}]
execute if data storage call_stack: this.ingredients[{Slot:21b}] run data modify block ~ ~ ~ Items[{Slot:21b}] set from storage call_stack: this.ingredients[{Slot:21b}]
execute unless data storage call_stack: this.ingredients[{Slot:21b}] run data remove block ~ ~ ~ Items[{Slot:21b}]
#[[[end]]]


function call_stack:pop