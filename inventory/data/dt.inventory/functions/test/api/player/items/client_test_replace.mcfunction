# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test api/player/items/replace"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Single item out of range slot -99"
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:-99b}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.actual set from entity @s Inventory[{id:"minecraft:feather"}]
clear @s feather
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Single item out of range slot -107"
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:-107b}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.actual set from entity @s Inventory[{id:"minecraft:feather"}]
clear @s feather
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Single item out of range slot 36"
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:36b}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.actual set from entity @s Inventory[{id:"minecraft:feather"}]
clear @s feather
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Single item hotbar slot 8"
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:8b}]
function dt.inventory:api/player/items/replace
data modify storage call_stack: call.actual set from entity @s Inventory[{id:"minecraft:feather",Slot:8b}]
clear @s feather
function unittest:api/assert/is_set
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Multiple items slots 0 35 -106"
clear @s feather
data modify storage call_stack: call.arg0 set value [{id:"minecraft:feather", Count:1b, Slot:0b},{id:"minecraft:feather", Count:1b, Slot:35b}, {id:"minecraft:feather", Count:1b, Slot:-106b}]
function dt.inventory:api/player/items/replace
data remove storage unittest:in actual
data modify storage call_stack: call.actual set from entity @s Inventory[{id:"minecraft:feather",Slot:0b}]
function unittest:api/assert/is_set
data remove storage unittest:in actual
data modify storage call_stack: call.actual set from entity @s Inventory[{id:"minecraft:feather",Slot:35b}]
function unittest:api/assert/is_set
data remove storage unittest:in actual
data modify storage call_stack: call.actual set from entity @s Inventory[{id:"minecraft:feather",Slot:-106b}]
function unittest:api/assert/is_set

clear @s feather
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown