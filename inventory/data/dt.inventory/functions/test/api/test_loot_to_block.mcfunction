
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test loot_to_block"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"

# Set some container block with items
execute in overworld run setblock 2999999 250 2999999 hopper
execute in overworld run data modify block 2999999 250 2999999 Items set value [{Slot:0b,id:"minecraft:feather",Count:1b},{Slot:3b,id:"minecraft:feather",Count:1b}]

data modify storage call_stack: call.arg0 set value [{Slot:99b,id:"minecraft:slime_ball",Count:1b}]
function dt.inventory:api/shulker/items/set
execute in overworld run execute positioned 2999999 250 2999999 run function dt.inventory:api/shulker/loot/insert/block

execute in overworld run data modify storage call_stack: call.actual set from block 2999999 250 2999999 Items
data modify storage call_stack: call.expected set value [{Slot:0b,id:"minecraft:feather",Count:1b},{Slot:1b,id:"minecraft:slime_ball",Count:1b},{Slot:3b,id:"minecraft:feather",Count:1b}]
function unittest:api/assert/equal
function unittest:api/test_case/teardown
function unittest:api/test_suite/teardown


