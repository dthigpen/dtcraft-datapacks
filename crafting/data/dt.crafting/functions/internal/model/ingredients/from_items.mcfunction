
function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0

data modify storage call_stack: this.temp_items set value []
data modify storage call_stack: this.return set value {grid:[[ [],[],[]],[[],[],[] ]],items:{crafting:[],extras:[]}}

#[[[cog
#   for slot in [1,2,3,10,11,12,19,20,21]:
#       cog.outl(f'execute if data storage call_stack: this.items[{{Slot:{slot}b}}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{{Slot:{slot}b}}]')
#       cog.outl(f'execute if data storage call_stack: this.items[{{Slot:{slot}b}}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{{Slot:{slot}b}}]')
#       cog.outl(f'execute unless data storage call_stack: this.items[{{Slot:{slot}b}}] run data modify storage call_stack: this.temp_items append value {{id:"minecraft:air",Count:0b,Slot:{slot}b}}')
#       cog.outl(f'execute if data storage call_stack: this.items[{{Slot:{slot}b}}] run data remove storage call_stack: this.items[{{Slot:{slot}b}}]')
#]]]
execute if data storage call_stack: this.items[{Slot:1b}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{Slot:1b}]
execute if data storage call_stack: this.items[{Slot:1b}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{Slot:1b}]
execute unless data storage call_stack: this.items[{Slot:1b}] run data modify storage call_stack: this.temp_items append value {id:"minecraft:air",Count:0b,Slot:1b}
execute if data storage call_stack: this.items[{Slot:1b}] run data remove storage call_stack: this.items[{Slot:1b}]
execute if data storage call_stack: this.items[{Slot:2b}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{Slot:2b}]
execute if data storage call_stack: this.items[{Slot:2b}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{Slot:2b}]
execute unless data storage call_stack: this.items[{Slot:2b}] run data modify storage call_stack: this.temp_items append value {id:"minecraft:air",Count:0b,Slot:2b}
execute if data storage call_stack: this.items[{Slot:2b}] run data remove storage call_stack: this.items[{Slot:2b}]
execute if data storage call_stack: this.items[{Slot:3b}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{Slot:3b}]
execute if data storage call_stack: this.items[{Slot:3b}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{Slot:3b}]
execute unless data storage call_stack: this.items[{Slot:3b}] run data modify storage call_stack: this.temp_items append value {id:"minecraft:air",Count:0b,Slot:3b}
execute if data storage call_stack: this.items[{Slot:3b}] run data remove storage call_stack: this.items[{Slot:3b}]
execute if data storage call_stack: this.items[{Slot:10b}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{Slot:10b}]
execute if data storage call_stack: this.items[{Slot:10b}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{Slot:10b}]
execute unless data storage call_stack: this.items[{Slot:10b}] run data modify storage call_stack: this.temp_items append value {id:"minecraft:air",Count:0b,Slot:10b}
execute if data storage call_stack: this.items[{Slot:10b}] run data remove storage call_stack: this.items[{Slot:10b}]
execute if data storage call_stack: this.items[{Slot:11b}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{Slot:11b}]
execute if data storage call_stack: this.items[{Slot:11b}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{Slot:11b}]
execute unless data storage call_stack: this.items[{Slot:11b}] run data modify storage call_stack: this.temp_items append value {id:"minecraft:air",Count:0b,Slot:11b}
execute if data storage call_stack: this.items[{Slot:11b}] run data remove storage call_stack: this.items[{Slot:11b}]
execute if data storage call_stack: this.items[{Slot:12b}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{Slot:12b}]
execute if data storage call_stack: this.items[{Slot:12b}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{Slot:12b}]
execute unless data storage call_stack: this.items[{Slot:12b}] run data modify storage call_stack: this.temp_items append value {id:"minecraft:air",Count:0b,Slot:12b}
execute if data storage call_stack: this.items[{Slot:12b}] run data remove storage call_stack: this.items[{Slot:12b}]
execute if data storage call_stack: this.items[{Slot:19b}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{Slot:19b}]
execute if data storage call_stack: this.items[{Slot:19b}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{Slot:19b}]
execute unless data storage call_stack: this.items[{Slot:19b}] run data modify storage call_stack: this.temp_items append value {id:"minecraft:air",Count:0b,Slot:19b}
execute if data storage call_stack: this.items[{Slot:19b}] run data remove storage call_stack: this.items[{Slot:19b}]
execute if data storage call_stack: this.items[{Slot:20b}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{Slot:20b}]
execute if data storage call_stack: this.items[{Slot:20b}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{Slot:20b}]
execute unless data storage call_stack: this.items[{Slot:20b}] run data modify storage call_stack: this.temp_items append value {id:"minecraft:air",Count:0b,Slot:20b}
execute if data storage call_stack: this.items[{Slot:20b}] run data remove storage call_stack: this.items[{Slot:20b}]
execute if data storage call_stack: this.items[{Slot:21b}] run data modify storage call_stack: this.temp_items append from storage call_stack: this.items[{Slot:21b}]
execute if data storage call_stack: this.items[{Slot:21b}] run data modify storage call_stack: this.return.items.crafting append from storage call_stack: this.items[{Slot:21b}]
execute unless data storage call_stack: this.items[{Slot:21b}] run data modify storage call_stack: this.temp_items append value {id:"minecraft:air",Count:0b,Slot:21b}
execute if data storage call_stack: this.items[{Slot:21b}] run data remove storage call_stack: this.items[{Slot:21b}]
#[[[end]]]

data modify storage call_stack: call.arg0 set from storage call_stack: this.temp_items
function dt.inventory:api/items/id/get
data modify storage call_stack: this.item_ids set from storage call_stack: call.return
data modify storage call_stack: this.return.items.extras set from storage call_stack: this.items
#[[[cog
#   for i in range(0,9):
#       cog.outl(f'data modify storage call_stack: this.return.grid[0][{i // 3}] append from storage call_stack: this.item_ids[{i}]')
#       cog.outl(f'data modify storage call_stack: this.return.grid[1][{i // 3}] append from storage call_stack: this.temp_items[{i}].Count')
#       
#]]]
data modify storage call_stack: this.return.grid[0][0] append from storage call_stack: this.item_ids[0]
data modify storage call_stack: this.return.grid[1][0] append from storage call_stack: this.temp_items[0].Count
data modify storage call_stack: this.return.grid[0][0] append from storage call_stack: this.item_ids[1]
data modify storage call_stack: this.return.grid[1][0] append from storage call_stack: this.temp_items[1].Count
data modify storage call_stack: this.return.grid[0][0] append from storage call_stack: this.item_ids[2]
data modify storage call_stack: this.return.grid[1][0] append from storage call_stack: this.temp_items[2].Count
data modify storage call_stack: this.return.grid[0][1] append from storage call_stack: this.item_ids[3]
data modify storage call_stack: this.return.grid[1][1] append from storage call_stack: this.temp_items[3].Count
data modify storage call_stack: this.return.grid[0][1] append from storage call_stack: this.item_ids[4]
data modify storage call_stack: this.return.grid[1][1] append from storage call_stack: this.temp_items[4].Count
data modify storage call_stack: this.return.grid[0][1] append from storage call_stack: this.item_ids[5]
data modify storage call_stack: this.return.grid[1][1] append from storage call_stack: this.temp_items[5].Count
data modify storage call_stack: this.return.grid[0][2] append from storage call_stack: this.item_ids[6]
data modify storage call_stack: this.return.grid[1][2] append from storage call_stack: this.temp_items[6].Count
data modify storage call_stack: this.return.grid[0][2] append from storage call_stack: this.item_ids[7]
data modify storage call_stack: this.return.grid[1][2] append from storage call_stack: this.temp_items[7].Count
data modify storage call_stack: this.return.grid[0][2] append from storage call_stack: this.item_ids[8]
data modify storage call_stack: this.return.grid[1][2] append from storage call_stack: this.temp_items[8].Count
#[[[end]]]
function call_stack:pop