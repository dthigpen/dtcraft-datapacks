function call_stack:push
data modify storage call_stack: this.item set from storage call_stack: this.arg0
# strip out dt tags
data remove storage call_stack: this.item.tag.dt
data modify storage call_stack: this.items_before set from block ~ ~ ~ Items
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append from storage call_stack: this.item
data modify storage call_stack: call.arg0[0].Count set value 1b
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/loot/insert/block
data modify storage call_stack: this.items_after set from block ~ ~ ~ Items
execute store success score $looted dt.tmp run data modify storage call_stack: this.items_after set from storage call_stack: this.items_before
execute if score $looted dt.tmp matches 1 run data modify storage call_stack: this.return set value true
execute if score $looted dt.tmp matches 1 store result score $count dt.tmp run data get storage call_stack: this.item.Count
execute if score $looted dt.tmp matches 1 run scoreboard players remove $count dt.tmp 1
execute if score $looted dt.tmp matches 1 store result score $slot dt.tmp run data get storage call_stack: this.item.Slot
# tellraw @p ["attempt_pull $looted:",{"score":{"name":"$looted","objective":"dt.tmp"}}]
#[[[cog
#   from datapack_utils import *
#   for slot in range(0,27):
#       cog.outl(f'execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches {slot} store result block ~ ~1 ~ Items[{{Slot:{slot}b}}].Count byte 1 run scoreboard players get $count dt.tmp')
#       cog.outl(f'execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {{this:{{item:{{Slot:{slot}b}}}}}} run say removing empty stack from Slot:{slot}b')
#       cog.outl(f'execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {{this:{{item:{{Slot:{slot}b}}}}}} run data remove block ~ ~1 ~ Items[{{Slot:{slot}b}}]')
#]]]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 0 store result block ~ ~1 ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:0b}}} run say removing empty stack from Slot:0b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:0b}}} run data remove block ~ ~1 ~ Items[{Slot:0b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 1 store result block ~ ~1 ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:1b}}} run say removing empty stack from Slot:1b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:1b}}} run data remove block ~ ~1 ~ Items[{Slot:1b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 2 store result block ~ ~1 ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:2b}}} run say removing empty stack from Slot:2b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:2b}}} run data remove block ~ ~1 ~ Items[{Slot:2b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 3 store result block ~ ~1 ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:3b}}} run say removing empty stack from Slot:3b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:3b}}} run data remove block ~ ~1 ~ Items[{Slot:3b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 4 store result block ~ ~1 ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:4b}}} run say removing empty stack from Slot:4b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:4b}}} run data remove block ~ ~1 ~ Items[{Slot:4b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 5 store result block ~ ~1 ~ Items[{Slot:5b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:5b}}} run say removing empty stack from Slot:5b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:5b}}} run data remove block ~ ~1 ~ Items[{Slot:5b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 6 store result block ~ ~1 ~ Items[{Slot:6b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:6b}}} run say removing empty stack from Slot:6b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:6b}}} run data remove block ~ ~1 ~ Items[{Slot:6b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 7 store result block ~ ~1 ~ Items[{Slot:7b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:7b}}} run say removing empty stack from Slot:7b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:7b}}} run data remove block ~ ~1 ~ Items[{Slot:7b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 8 store result block ~ ~1 ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:8b}}} run say removing empty stack from Slot:8b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:8b}}} run data remove block ~ ~1 ~ Items[{Slot:8b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 9 store result block ~ ~1 ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:9b}}} run say removing empty stack from Slot:9b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:9b}}} run data remove block ~ ~1 ~ Items[{Slot:9b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 10 store result block ~ ~1 ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:10b}}} run say removing empty stack from Slot:10b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:10b}}} run data remove block ~ ~1 ~ Items[{Slot:10b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 11 store result block ~ ~1 ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:11b}}} run say removing empty stack from Slot:11b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:11b}}} run data remove block ~ ~1 ~ Items[{Slot:11b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 12 store result block ~ ~1 ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:12b}}} run say removing empty stack from Slot:12b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:12b}}} run data remove block ~ ~1 ~ Items[{Slot:12b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 13 store result block ~ ~1 ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:13b}}} run say removing empty stack from Slot:13b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:13b}}} run data remove block ~ ~1 ~ Items[{Slot:13b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 14 store result block ~ ~1 ~ Items[{Slot:14b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:14b}}} run say removing empty stack from Slot:14b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:14b}}} run data remove block ~ ~1 ~ Items[{Slot:14b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 15 store result block ~ ~1 ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:15b}}} run say removing empty stack from Slot:15b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:15b}}} run data remove block ~ ~1 ~ Items[{Slot:15b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 16 store result block ~ ~1 ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:16b}}} run say removing empty stack from Slot:16b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:16b}}} run data remove block ~ ~1 ~ Items[{Slot:16b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 17 store result block ~ ~1 ~ Items[{Slot:17b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:17b}}} run say removing empty stack from Slot:17b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:17b}}} run data remove block ~ ~1 ~ Items[{Slot:17b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 18 store result block ~ ~1 ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:18b}}} run say removing empty stack from Slot:18b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:18b}}} run data remove block ~ ~1 ~ Items[{Slot:18b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 19 store result block ~ ~1 ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:19b}}} run say removing empty stack from Slot:19b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:19b}}} run data remove block ~ ~1 ~ Items[{Slot:19b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 20 store result block ~ ~1 ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:20b}}} run say removing empty stack from Slot:20b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:20b}}} run data remove block ~ ~1 ~ Items[{Slot:20b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 21 store result block ~ ~1 ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:21b}}} run say removing empty stack from Slot:21b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:21b}}} run data remove block ~ ~1 ~ Items[{Slot:21b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 22 store result block ~ ~1 ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:22b}}} run say removing empty stack from Slot:22b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:22b}}} run data remove block ~ ~1 ~ Items[{Slot:22b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 23 store result block ~ ~1 ~ Items[{Slot:23b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:23b}}} run say removing empty stack from Slot:23b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:23b}}} run data remove block ~ ~1 ~ Items[{Slot:23b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 24 store result block ~ ~1 ~ Items[{Slot:24b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:24b}}} run say removing empty stack from Slot:24b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:24b}}} run data remove block ~ ~1 ~ Items[{Slot:24b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 25 store result block ~ ~1 ~ Items[{Slot:25b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:25b}}} run say removing empty stack from Slot:25b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:25b}}} run data remove block ~ ~1 ~ Items[{Slot:25b}]
execute if score $looted dt.tmp matches 1 if score $slot dt.tmp matches 26 store result block ~ ~1 ~ Items[{Slot:26b}].Count byte 1 run scoreboard players get $count dt.tmp
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:26b}}} run say removing empty stack from Slot:26b
execute if score $looted dt.tmp matches 1 if score $count dt.tmp matches ..0 if data storage call_stack: {this:{item:{Slot:26b}}} run data remove block ~ ~1 ~ Items[{Slot:26b}]
#[[[end]]]
function call_stack:pop