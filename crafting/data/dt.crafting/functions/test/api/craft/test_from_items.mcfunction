# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test from_items"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test Shaped Axe"

data modify storage call_stack: call.arg0 set value [{Slot: 1b, id: "minecraft:cobblestone", Count: 2b}, {Slot: 2b, id: "minecraft:cobblestone", Count: 2b}, {Slot: 10b, id: "minecraft:cobblestone", Count: 2b}, {Slot: 11b, id: "minecraft:stick", Count: 2b}, {Slot: 20b, id: "minecraft:stick", Count: 2b}]
function dt.crafting:api/craft/from_items
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [[{Slot: 1b, id: "minecraft:cobblestone", Count: 1b}, {Slot: 2b, id: "minecraft:cobblestone", Count: 1b}, {Slot: 10b, id: "minecraft:cobblestone", Count: 1b}, {Slot: 11b, id: "minecraft:stick", Count: 1b}, {Slot: 20b, id: "minecraft:stick", Count: 1b}],[{Count:1b,id:"minecraft:stone_axe"}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test Shaped Iron Door"

data modify storage call_stack: call.arg0 set value [{Slot: 1b, id: "minecraft:iron_ingot", Count: 2b}, {Slot: 2b, id: "minecraft:iron_ingot", Count: 2b}, {Slot: 10b, id: "minecraft:iron_ingot", Count: 2b}, {Slot: 11b, id: "minecraft:iron_ingot", Count: 2b}, {Slot: 19b, id: "minecraft:iron_ingot", Count: 2b},{Slot: 20b, id: "minecraft:iron_ingot", Count: 2b}]
function dt.crafting:api/craft/from_items
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [[{Slot: 1b, id: "minecraft:iron_ingot", Count: 1b}, {Slot: 2b, id: "minecraft:iron_ingot", Count: 1b}, {Slot: 10b, id: "minecraft:iron_ingot", Count: 1b}, {Slot: 11b, id: "minecraft:iron_ingot", Count: 1b}, {Slot: 19b, id: "minecraft:iron_ingot", Count: 1b},{Slot: 20b, id: "minecraft:iron_ingot", Count: 1b}],[{Count:3b,id:"minecraft:iron_door"}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test Shaped Chest"

data modify storage call_stack: call.arg0 set value [{Slot: 1b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 2b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 3b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 10b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 12b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 19b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 20b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 21b, id: "minecraft:oak_planks", Count: 1b}]
function dt.crafting:api/craft/from_items
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [[],[{Count:1b,id:"minecraft:chest"}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test Shaped Chest, extra items in stack"

data modify storage call_stack: call.arg0 set value [{Slot: 1b, id: "minecraft:oak_planks", Count: 2b}, {Slot: 2b, id: "minecraft:oak_planks", Count: 2b}, {Slot: 3b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 10b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 12b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 19b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 20b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 21b, id: "minecraft:oak_planks", Count: 1b}]
function dt.crafting:api/craft/from_items
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [[{Slot: 1b, id: "minecraft:oak_planks", Count: 1b}, {Slot: 2b, id: "minecraft:oak_planks", Count: 1b}],[{Count:1b,id:"minecraft:chest"}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test Shapeless red_bed"
data modify storage call_stack: call.arg0 set value [{Slot: 10b, id: "minecraft:white_bed", Count: 1b}, {Slot: 20b, id: "minecraft:red_dye", Count: 1b}]
function dt.crafting:api/craft/from_items
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[],[{Count:1b,id:"minecraft:red_bed"}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test Shapeless red_bed, extra items in stack"
data modify storage call_stack: call.arg0 set value [{Slot: 10b, id: "minecraft:white_bed", Count: 2b}, {Slot: 20b, id: "minecraft:red_dye", Count: 3b}]
function dt.crafting:api/craft/from_items
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[{Slot: 10b, id: "minecraft:white_bed", Count: 1b}, {Slot: 20b, id: "minecraft:red_dye", Count: 2b}],[{Count:1b,id:"minecraft:red_bed"}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test bad recipe"

data modify storage call_stack: call.arg0 set value [{Slot:0b,id:"minecraft:apple",Count:1b},{Slot:24b,id:"minecraft:apple",Count:1b},{Slot: 1b, id: "minecraft:cobblestone", Count: 2b}, {Slot: 2b, id: "minecraft:cobblestone", Count: 2b}, {Slot: 10b, id: "minecraft:cobblestone", Count: 2b}, {Slot: 11b, id: "minecraft:stick", Count: 2b}, {Slot: 20b, id: "minecraft:stick", Count: 2b}]
function dt.crafting:api/craft/from_items
data modify storage call_stack: call.actual set from storage call_stack: call.return

function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown