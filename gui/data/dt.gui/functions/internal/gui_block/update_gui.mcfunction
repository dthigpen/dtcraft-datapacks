function call_stack:push
data modify storage call_stack: this.gui_data set from storage call_stack: this.arg0

# if the slot is not in the whitelist and the slot in the items is not a placeholder add it to the items
data modify storage call_stack: this.items_to_drop set value []
#[[[cog
#   from datapack_utils import *
#   for slot in range(0,27):
#       # first three executes are for setting or resetting placeholder slots, forth execute is for initing data
#       cog.outl(f'execute unless data storage call_stack: this.gui_data.whitelist[{{Slot:{slot}b}}] unless data block ~ ~ ~ Items[{{Slot:{slot}b,tag:{{dt:{{gui:{{placeholder:true}}}}}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{{Slot:{slot}b}}]')
#       cog.outl(f'execute unless data storage call_stack: this.gui_data.whitelist[{{Slot:{slot}b}}] unless data block ~ ~ ~ Items[{{Slot:{slot}b,tag:{{dt:{{gui:{{placeholder:true}}}}}}}}] run data remove block ~ ~ ~ Items[{{Slot:{slot}b}}]')
#       cog.outl(f'execute unless data storage call_stack: this.gui_data.whitelist[{{Slot:{slot}b}}] unless data block ~ ~ ~ Items[{{Slot:{slot}b}}] run data modify block ~ ~ ~ Items append value {{Slot:{slot}b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{{dt:{{gui:{{placeholder:true}}}}}}}}')
#       cog.outl(f'execute if data storage call_stack: this.gui_data.data[{{Slot:{slot}b}}] run data modify block ~ ~ ~ Items[{{Slot:{slot}b}}] merge from storage call_stack: this.gui_data.data[{{Slot:{slot}b}}]')
#]]]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:0b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:0b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b}] run data modify block ~ ~ ~ Items append value {Slot:0b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:0b}] run data modify block ~ ~ ~ Items[{Slot:0b}] merge from storage call_stack: this.gui_data.data[{Slot:0b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:1b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:1b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b}] run data modify block ~ ~ ~ Items append value {Slot:1b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:1b}] run data modify block ~ ~ ~ Items[{Slot:1b}] merge from storage call_stack: this.gui_data.data[{Slot:1b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:2b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:2b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b}] run data modify block ~ ~ ~ Items append value {Slot:2b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:2b}] run data modify block ~ ~ ~ Items[{Slot:2b}] merge from storage call_stack: this.gui_data.data[{Slot:2b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:3b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:3b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b}] run data modify block ~ ~ ~ Items append value {Slot:3b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:3b}] run data modify block ~ ~ ~ Items[{Slot:3b}] merge from storage call_stack: this.gui_data.data[{Slot:3b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:4b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:4b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b}] run data modify block ~ ~ ~ Items append value {Slot:4b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:4b}] run data modify block ~ ~ ~ Items[{Slot:4b}] merge from storage call_stack: this.gui_data.data[{Slot:4b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:5b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:5b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:5b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:5b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:5b}] run data modify block ~ ~ ~ Items append value {Slot:5b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:5b}] run data modify block ~ ~ ~ Items[{Slot:5b}] merge from storage call_stack: this.gui_data.data[{Slot:5b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:6b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:6b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:6b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:6b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:6b}] run data modify block ~ ~ ~ Items append value {Slot:6b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:6b}] run data modify block ~ ~ ~ Items[{Slot:6b}] merge from storage call_stack: this.gui_data.data[{Slot:6b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:7b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:7b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b}] run data modify block ~ ~ ~ Items append value {Slot:7b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:7b}] run data modify block ~ ~ ~ Items[{Slot:7b}] merge from storage call_stack: this.gui_data.data[{Slot:7b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:8b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:8b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:8b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:8b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:8b}] run data modify block ~ ~ ~ Items append value {Slot:8b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:8b}] run data modify block ~ ~ ~ Items[{Slot:8b}] merge from storage call_stack: this.gui_data.data[{Slot:8b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:9b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:9b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b}] run data modify block ~ ~ ~ Items append value {Slot:9b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:9b}] run data modify block ~ ~ ~ Items[{Slot:9b}] merge from storage call_stack: this.gui_data.data[{Slot:9b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:10b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:10b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b}] run data modify block ~ ~ ~ Items append value {Slot:10b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:10b}] run data modify block ~ ~ ~ Items[{Slot:10b}] merge from storage call_stack: this.gui_data.data[{Slot:10b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:11b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:11b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b}] run data modify block ~ ~ ~ Items append value {Slot:11b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:11b}] run data modify block ~ ~ ~ Items[{Slot:11b}] merge from storage call_stack: this.gui_data.data[{Slot:11b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:12b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:12b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b}] run data modify block ~ ~ ~ Items append value {Slot:12b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:12b}] run data modify block ~ ~ ~ Items[{Slot:12b}] merge from storage call_stack: this.gui_data.data[{Slot:12b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:13b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:13b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b}] run data modify block ~ ~ ~ Items append value {Slot:13b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:13b}] run data modify block ~ ~ ~ Items[{Slot:13b}] merge from storage call_stack: this.gui_data.data[{Slot:13b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:14b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:14b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:14b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:14b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:14b}] run data modify block ~ ~ ~ Items append value {Slot:14b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:14b}] run data modify block ~ ~ ~ Items[{Slot:14b}] merge from storage call_stack: this.gui_data.data[{Slot:14b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:15b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:15b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b}] run data modify block ~ ~ ~ Items append value {Slot:15b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:15b}] run data modify block ~ ~ ~ Items[{Slot:15b}] merge from storage call_stack: this.gui_data.data[{Slot:15b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:16b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:16b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b}] run data modify block ~ ~ ~ Items append value {Slot:16b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:16b}] run data modify block ~ ~ ~ Items[{Slot:16b}] merge from storage call_stack: this.gui_data.data[{Slot:16b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:17b}] unless data block ~ ~ ~ Items[{Slot:17b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:17b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:17b}] unless data block ~ ~ ~ Items[{Slot:17b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:17b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:17b}] unless data block ~ ~ ~ Items[{Slot:17b}] run data modify block ~ ~ ~ Items append value {Slot:17b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:17b}] run data modify block ~ ~ ~ Items[{Slot:17b}] merge from storage call_stack: this.gui_data.data[{Slot:17b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:18b}] unless data block ~ ~ ~ Items[{Slot:18b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:18b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:18b}] unless data block ~ ~ ~ Items[{Slot:18b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:18b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:18b}] unless data block ~ ~ ~ Items[{Slot:18b}] run data modify block ~ ~ ~ Items append value {Slot:18b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:18b}] run data modify block ~ ~ ~ Items[{Slot:18b}] merge from storage call_stack: this.gui_data.data[{Slot:18b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:19b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:19b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b}] run data modify block ~ ~ ~ Items append value {Slot:19b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:19b}] run data modify block ~ ~ ~ Items[{Slot:19b}] merge from storage call_stack: this.gui_data.data[{Slot:19b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:20b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:20b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b}] run data modify block ~ ~ ~ Items append value {Slot:20b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:20b}] run data modify block ~ ~ ~ Items[{Slot:20b}] merge from storage call_stack: this.gui_data.data[{Slot:20b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:21b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:21b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b}] run data modify block ~ ~ ~ Items append value {Slot:21b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:21b}] run data modify block ~ ~ ~ Items[{Slot:21b}] merge from storage call_stack: this.gui_data.data[{Slot:21b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:22b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:22b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b}] run data modify block ~ ~ ~ Items append value {Slot:22b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:22b}] run data modify block ~ ~ ~ Items[{Slot:22b}] merge from storage call_stack: this.gui_data.data[{Slot:22b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:23b}] unless data block ~ ~ ~ Items[{Slot:23b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:23b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:23b}] unless data block ~ ~ ~ Items[{Slot:23b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:23b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:23b}] unless data block ~ ~ ~ Items[{Slot:23b}] run data modify block ~ ~ ~ Items append value {Slot:23b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:23b}] run data modify block ~ ~ ~ Items[{Slot:23b}] merge from storage call_stack: this.gui_data.data[{Slot:23b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:24b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:24b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b}] run data modify block ~ ~ ~ Items append value {Slot:24b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:24b}] run data modify block ~ ~ ~ Items[{Slot:24b}] merge from storage call_stack: this.gui_data.data[{Slot:24b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:25b}] unless data block ~ ~ ~ Items[{Slot:25b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:25b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:25b}] unless data block ~ ~ ~ Items[{Slot:25b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:25b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:25b}] unless data block ~ ~ ~ Items[{Slot:25b}] run data modify block ~ ~ ~ Items append value {Slot:25b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:25b}] run data modify block ~ ~ ~ Items[{Slot:25b}] merge from storage call_stack: this.gui_data.data[{Slot:25b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b,tag:{dt:{gui:{placeholder:true}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:26b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b,tag:{dt:{gui:{placeholder:true}}}}] run data remove block ~ ~ ~ Items[{Slot:26b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b}] run data modify block ~ ~ ~ Items append value {Slot:26b, id:"minecraft:black_stained_glass_pane", Count:1b,tag:{dt:{gui:{placeholder:true}}}}
execute if data storage call_stack: this.gui_data.data[{Slot:26b}] run data modify block ~ ~ ~ Items[{Slot:26b}] merge from storage call_stack: this.gui_data.data[{Slot:26b}]
#[[[end]]]
# execute unless data storage call_stack: this.gui_data.whitelist[{Slot:26b}] run data modify block ~ ~ ~ Items[{Slot:26b}].tag.CustomModelData set value 2

execute if data storage call_stack: this.items_to_drop[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items_to_drop
execute if data storage call_stack: this.items_to_drop[0] run function dt.inventory:api/items/summon2

scoreboard players reset $success dt.tmp
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper store success score $success dt.tmp run data remove block ~ ~ ~ Items[{tag:{dt:{gui:{placeholder:1b}}}}]
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper if score $success dt.tmp matches 1 run data modify block ~ ~ ~ TransferCooldown set value 0

function call_stack:pop