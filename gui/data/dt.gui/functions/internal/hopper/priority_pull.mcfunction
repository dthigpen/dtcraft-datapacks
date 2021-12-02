function call_stack:push
data modify storage call_stack: this.priority_slots set from storage call_stack: this.arg0
data modify storage call_stack: this.whitelist_slots set from storage call_stack: this.arg1

data remove storage call_stack: this.item_to_pull

# Get the next item to be pulled into the hopper
#[[[cog
#   from datapack_utils import *
#   for slot in range(0,27):
#       cog.outl(f'execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{{Slot:{slot}b}}] if data block ~ ~1 ~ Items[{{Slot:{slot}b}}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{{Slot:{slot}b}}]')
#   cog.outl('# Now check the whitelist slots if a priority slot did not have any items')
#   for slot in range(0,27):
#       cog.outl(f'execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{{Slot:{slot}b}}] if data block ~ ~1 ~ Items[{{Slot:{slot}b}}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{{Slot:{slot}b}}]')
#]]]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:0b}] if data block ~ ~1 ~ Items[{Slot:0b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:0b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:1b}] if data block ~ ~1 ~ Items[{Slot:1b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:1b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:2b}] if data block ~ ~1 ~ Items[{Slot:2b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:2b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:3b}] if data block ~ ~1 ~ Items[{Slot:3b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:3b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:4b}] if data block ~ ~1 ~ Items[{Slot:4b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:4b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:5b}] if data block ~ ~1 ~ Items[{Slot:5b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:5b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:6b}] if data block ~ ~1 ~ Items[{Slot:6b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:6b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:7b}] if data block ~ ~1 ~ Items[{Slot:7b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:7b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:8b}] if data block ~ ~1 ~ Items[{Slot:8b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:8b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:9b}] if data block ~ ~1 ~ Items[{Slot:9b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:9b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:10b}] if data block ~ ~1 ~ Items[{Slot:10b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:10b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:11b}] if data block ~ ~1 ~ Items[{Slot:11b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:11b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:12b}] if data block ~ ~1 ~ Items[{Slot:12b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:12b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:13b}] if data block ~ ~1 ~ Items[{Slot:13b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:13b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:14b}] if data block ~ ~1 ~ Items[{Slot:14b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:14b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:15b}] if data block ~ ~1 ~ Items[{Slot:15b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:15b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:16b}] if data block ~ ~1 ~ Items[{Slot:16b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:16b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:17b}] if data block ~ ~1 ~ Items[{Slot:17b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:17b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:18b}] if data block ~ ~1 ~ Items[{Slot:18b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:18b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:19b}] if data block ~ ~1 ~ Items[{Slot:19b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:19b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:20b}] if data block ~ ~1 ~ Items[{Slot:20b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:20b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:21b}] if data block ~ ~1 ~ Items[{Slot:21b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:21b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:22b}] if data block ~ ~1 ~ Items[{Slot:22b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:22b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:23b}] if data block ~ ~1 ~ Items[{Slot:23b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:23b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:24b}] if data block ~ ~1 ~ Items[{Slot:24b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:24b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:25b}] if data block ~ ~1 ~ Items[{Slot:25b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:25b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: this.priority_slots[{Slot:26b}] if data block ~ ~1 ~ Items[{Slot:26b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:26b}]
# Now check the whitelist slots if a priority slot did not have any items
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:0b}] if data block ~ ~1 ~ Items[{Slot:0b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:0b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:1b}] if data block ~ ~1 ~ Items[{Slot:1b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:1b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:2b}] if data block ~ ~1 ~ Items[{Slot:2b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:2b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:3b}] if data block ~ ~1 ~ Items[{Slot:3b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:3b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:4b}] if data block ~ ~1 ~ Items[{Slot:4b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:4b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:5b}] if data block ~ ~1 ~ Items[{Slot:5b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:5b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:6b}] if data block ~ ~1 ~ Items[{Slot:6b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:6b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:7b}] if data block ~ ~1 ~ Items[{Slot:7b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:7b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:8b}] if data block ~ ~1 ~ Items[{Slot:8b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:8b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:9b}] if data block ~ ~1 ~ Items[{Slot:9b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:9b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:10b}] if data block ~ ~1 ~ Items[{Slot:10b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:10b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:11b}] if data block ~ ~1 ~ Items[{Slot:11b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:11b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:12b}] if data block ~ ~1 ~ Items[{Slot:12b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:12b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:13b}] if data block ~ ~1 ~ Items[{Slot:13b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:13b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:14b}] if data block ~ ~1 ~ Items[{Slot:14b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:14b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:15b}] if data block ~ ~1 ~ Items[{Slot:15b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:15b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:16b}] if data block ~ ~1 ~ Items[{Slot:16b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:16b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:17b}] if data block ~ ~1 ~ Items[{Slot:17b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:17b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:18b}] if data block ~ ~1 ~ Items[{Slot:18b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:18b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:19b}] if data block ~ ~1 ~ Items[{Slot:19b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:19b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:20b}] if data block ~ ~1 ~ Items[{Slot:20b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:20b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:21b}] if data block ~ ~1 ~ Items[{Slot:21b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:21b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:22b}] if data block ~ ~1 ~ Items[{Slot:22b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:22b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:23b}] if data block ~ ~1 ~ Items[{Slot:23b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:23b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:24b}] if data block ~ ~1 ~ Items[{Slot:24b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:24b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:25b}] if data block ~ ~1 ~ Items[{Slot:25b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:25b}]
execute unless data storage call_stack: this.item_to_pull if data storage call_stack: whitelist_slots[{Slot:26b}] if data block ~ ~1 ~ Items[{Slot:26b}] run data modify storage call_stack: this.item_to_pull set from block ~ ~1 ~ Items[{Slot:26b}]
#[[[end]]]

execute if data storage call_stack: this.item_to_pull run tellraw @p ["priority_pull_unsafe this.item_to_pull: ",{"nbt":"this.item_to_pull","storage":"call_stack:"}]
execute if data storage call_stack: this.item_to_pull run data modify storage call_stack: call.arg0 set from storage call_stack: this.item_to_pull
execute if data storage call_stack: this.item_to_pull run function dt.gui:internal/hopper/pull_item
execute if data storage call_stack: this.item_to_pull run data modify storage call_stack: this.successful_pull set from storage call_stack: call.return
execute if data storage call_stack: this.successful_pull run data modify block ~ ~ ~ TransferCooldown set value 4
data modify storage call_stack: this.return set from storage call_stack: this.successful_pull

function call_stack:pop