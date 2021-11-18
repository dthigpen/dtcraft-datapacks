function call_stack:push

data modify block ~ ~ ~ Items set from block ~ ~ ~ Items

function dt.gui:internal/database/fetch_or_init
data modify storage call_stack: this.gui_data set from storage call_stack: call.return

# if the slot is not in the whitelist and the slot in the items is not a placeholder add it to the items
data modify storage call_stack: this.items_to_drop set value []
#[[[cog
#   from datapack_utils import *
#   for slot in range(0,27):
#       cog.outl(f'execute unless data storage call_stack: this.gui_data.whitelist[{{Slot:{slot}b}}] unless data block ~ ~ ~ Items[{{Slot:{slot}b,tag:{{dt_gui:{{placeholder:true}}}}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{{Slot:{slot}b}}]')
#       cog.outl(f'execute unless data storage call_stack: this.gui_data.whitelist[{{Slot:{slot}b}}] unless data block ~ ~ ~ Items[{{Slot:{slot}b,tag:{{dt_gui:{{placeholder:true}}}}}}] run data remove block ~ ~ ~ Items[{{Slot:{slot}b}}]')
#       cog.outl(f'execute unless data storage call_stack: this.gui_data.whitelist[{{Slot:{slot}b}}] unless data block ~ ~ ~ Items[{{Slot:{slot}b}}] run data modify block ~ ~ ~ Items append value {{Slot:{slot}b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{{dt_gui:{{placeholder:true}}}}}}')
#]]]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:0b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:0b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b}] run data modify block ~ ~ ~ Items append value {Slot:0b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:1b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:1b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b}] run data modify block ~ ~ ~ Items append value {Slot:1b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:2b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:2b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b}] run data modify block ~ ~ ~ Items append value {Slot:2b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:3b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:3b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b}] run data modify block ~ ~ ~ Items append value {Slot:3b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:4b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:4b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b}] run data modify block ~ ~ ~ Items append value {Slot:4b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:5b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:5b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:5b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:5b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:5b}] run data modify block ~ ~ ~ Items append value {Slot:5b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:6b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:6b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:6b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:6b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:6b}] run data modify block ~ ~ ~ Items append value {Slot:6b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:7b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:7b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b}] run data modify block ~ ~ ~ Items append value {Slot:7b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:8b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:8b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:8b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:8b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:8b}] run data modify block ~ ~ ~ Items append value {Slot:8b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:9b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:9b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b}] run data modify block ~ ~ ~ Items append value {Slot:9b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:10b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:10b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b}] run data modify block ~ ~ ~ Items append value {Slot:10b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:11b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:11b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b}] run data modify block ~ ~ ~ Items append value {Slot:11b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:12b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:12b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b}] run data modify block ~ ~ ~ Items append value {Slot:12b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:13b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:13b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b}] run data modify block ~ ~ ~ Items append value {Slot:13b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:14b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:14b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:14b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:14b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:14b}] run data modify block ~ ~ ~ Items append value {Slot:14b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:15b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:15b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b}] run data modify block ~ ~ ~ Items append value {Slot:15b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:16b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:16b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b}] run data modify block ~ ~ ~ Items append value {Slot:16b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:17b}] unless data block ~ ~ ~ Items[{Slot:17b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:17b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:17b}] unless data block ~ ~ ~ Items[{Slot:17b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:17b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:17b}] unless data block ~ ~ ~ Items[{Slot:17b}] run data modify block ~ ~ ~ Items append value {Slot:17b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:18b}] unless data block ~ ~ ~ Items[{Slot:18b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:18b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:18b}] unless data block ~ ~ ~ Items[{Slot:18b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:18b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:18b}] unless data block ~ ~ ~ Items[{Slot:18b}] run data modify block ~ ~ ~ Items append value {Slot:18b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:19b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:19b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b}] run data modify block ~ ~ ~ Items append value {Slot:19b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:20b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:20b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b}] run data modify block ~ ~ ~ Items append value {Slot:20b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:21b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:21b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b}] run data modify block ~ ~ ~ Items append value {Slot:21b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:22b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:22b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b}] run data modify block ~ ~ ~ Items append value {Slot:22b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:23b}] unless data block ~ ~ ~ Items[{Slot:23b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:23b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:23b}] unless data block ~ ~ ~ Items[{Slot:23b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:23b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:23b}] unless data block ~ ~ ~ Items[{Slot:23b}] run data modify block ~ ~ ~ Items append value {Slot:23b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:24b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:24b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b}] run data modify block ~ ~ ~ Items append value {Slot:24b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:25b}] unless data block ~ ~ ~ Items[{Slot:25b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:25b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:25b}] unless data block ~ ~ ~ Items[{Slot:25b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:25b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:25b}] unless data block ~ ~ ~ Items[{Slot:25b}] run data modify block ~ ~ ~ Items append value {Slot:25b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b,tag:{dt_gui:{placeholder:true}}}] run data modify storage call_stack: this.items_to_drop append from block ~ ~ ~ Items[{Slot:26b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b,tag:{dt_gui:{placeholder:true}}}] run data remove block ~ ~ ~ Items[{Slot:26b}]
execute unless data storage call_stack: this.gui_data.whitelist[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b}] run data modify block ~ ~ ~ Items append value {Slot:26b, id:"minecraft:gray_stained_glass_pane", Count:1b,tag:{dt_gui:{placeholder:true}}}
#[[[end]]]


# tellraw @p ["refresh this.final_items: ",{"nbt":"this.final_items","storage":"call_stack:"}]
execute if data storage call_stack: this.items_to_drop[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items_to_drop
execute if data storage call_stack: this.items_to_drop[0] run function dt.inventory:api/items/summon2

# data modify block ~ ~ ~ Items set from storage call_stack: this.final_items

function dt.gui:internal/clear_placeholders_unsafe


function call_stack:pop