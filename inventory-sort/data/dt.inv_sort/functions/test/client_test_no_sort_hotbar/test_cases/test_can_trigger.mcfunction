function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test can trigger"
# test player is tagged
execute if entity @a[tag=dt.tester,limit=1] run data modify storage call_stack: call.actual set value true
function unittest:api/assert/is_set 

# SETUP
# Replace items with test items
# inventory
execute as @a[tag=dt.tester,limit=1] run clear
execute as @a[tag=dt.tester,limit=1] run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:10b,Slot:27b}
execute as @a[tag=dt.tester,limit=1] run function dt.inventory:api/player/item/replace
execute as @a[tag=dt.tester,limit=1] run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:5b,Slot:28b}
execute as @a[tag=dt.tester,limit=1] run function dt.inventory:api/player/item/replace
# hotbar
execute as @a[tag=dt.tester,limit=1] run data modify storage call_stack: call.arg0 set value {id:"minecraft:dirt", Count:5b,Slot:3b}
execute as @a[tag=dt.tester,limit=1] run function dt.inventory:api/player/item/replace

# trigger sort
data remove storage call_stack: call.actual
execute as @a[tag=dt.tester,limit=1] store success storage call_stack: call.actual int 1 run trigger dt.sort
function unittest:api/assert/cmd_success

function unittest:api/test_case/teardown