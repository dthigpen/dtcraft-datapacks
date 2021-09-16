data modify storage unittest:in name set value "Test api/player/items/replace"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Single item out of range slot -99"
function unittest:api/test_case/setup
function call_stack:push
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:-99b}]
function dt.inventory:api/player/items/replace
data modify storage unittest:in actual set from entity @s Inventory[{id:"minecraft:feather"}]
clear @s feather
function call_stack:pop
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Single item out of range slot -107"
function unittest:api/test_case/setup
function call_stack:push
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:-107b}]
function dt.inventory:api/player/items/replace
data modify storage unittest:in actual set from entity @s Inventory[{id:"minecraft:feather"}]
clear @s feather
function call_stack:pop
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Single item out of range slot 36"
function unittest:api/test_case/setup
function call_stack:push
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:36b}]
function dt.inventory:api/player/items/replace
data modify storage unittest:in actual set from entity @s Inventory[{id:"minecraft:feather"}]
clear @s feather
function call_stack:pop
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Single item hotbar slot 8"
function unittest:api/test_case/setup
function call_stack:push
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:8b}]
function dt.inventory:api/player/items/replace
data modify storage unittest:in actual set from entity @s Inventory[{id:"minecraft:feather",Slot:8b}]
clear @s feather
function call_stack:pop
function unittest:api/assert/is_set
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown

data modify storage unittest:in name set value "Multiple items slots 0 35 -106"
function unittest:api/test_case/setup
function call_stack:push
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:0b},{id:"minecraft:feather", Count:1b, Slot:35b}, {id:"minecraft:feather", Count:1b, Slot:-106b}]
function dt.inventory:api/player/items/replace
data remove storage unittest:in actual
data modify storage unittest:in actual set from entity @s Inventory[{id:"minecraft:feather",Slot:0b}]
function unittest:api/assert/is_set
data remove storage unittest:in actual
data modify storage unittest:in actual set from entity @s Inventory[{id:"minecraft:feather",Slot:35b}]
function unittest:api/assert/is_set
data remove storage unittest:in actual
data modify storage unittest:in actual set from entity @s Inventory[{id:"minecraft:feather",Slot:-106b}]
function unittest:api/assert/is_set

clear @s feather
function call_stack:pop
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown