# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test items/chest/get"
function unittest:api/test_suite/setup


execute in overworld run setblock 2999999 250 2999999 chest[type=right, facing=north] replace
execute in overworld run setblock 2999998 250 2999999 chest[type=left, facing=north] replace

data modify storage unittest:in name set value "Test set and get, right side"
function unittest:api/test_case/setup
execute in overworld run data modify block 2999999 250 2999999 Items set value []
execute in overworld run data modify block 2999998 250 2999999 Items set value []
function call_stack:push
#[[[cog
#   from datapack_utils import *
#   double_chest_items = 'data modify storage call_stack: this.double_chest_items set value [{Slot: 0b, id: "minecraft:apple", Count: 1b}'
#   right_chest_items = 'data modify storage call_stack: this.right_chest_items set value [{Slot: 0b, id: "minecraft:apple", Count: 1b}'
#   left_chest_items = 'data modify storage call_stack: this.left_chest_items set value ['
#   for slot in range(1,54):
#       double_chest_items += f', {{Slot: {slot}b, id: "minecraft:granite", Count: 64b}}'
#       if slot <= 26:
#           right_chest_items += f', {{Slot: {slot}b, id: "minecraft:granite", Count: 64b}}'
#       if slot > 26:
#           left_chest_items += f'{{Slot: {slot}b, id: "minecraft:granite", Count: 64b}},'
#           if slot == 53:
#               left_chest_items = left_chest_items[:-1]
#      # cog.out(f', {{Slot: {slot}b, id: "minecraft:granite", Count: 64b}}')
#   double_chest_items += ']'
#   left_chest_items += ']'
#   right_chest_items += ']'
#   cog.outl(double_chest_items)
#   cog.outl(left_chest_items)
#   cog.outl(right_chest_items)
#]]]
data modify storage call_stack: this.double_chest_items set value [{Slot: 0b, id: "minecraft:apple", Count: 1b}, {Slot: 1b, id: "minecraft:granite", Count: 64b}, {Slot: 2b, id: "minecraft:granite", Count: 64b}, {Slot: 3b, id: "minecraft:granite", Count: 64b}, {Slot: 4b, id: "minecraft:granite", Count: 64b}, {Slot: 5b, id: "minecraft:granite", Count: 64b}, {Slot: 6b, id: "minecraft:granite", Count: 64b}, {Slot: 7b, id: "minecraft:granite", Count: 64b}, {Slot: 8b, id: "minecraft:granite", Count: 64b}, {Slot: 9b, id: "minecraft:granite", Count: 64b}, {Slot: 10b, id: "minecraft:granite", Count: 64b}, {Slot: 11b, id: "minecraft:granite", Count: 64b}, {Slot: 12b, id: "minecraft:granite", Count: 64b}, {Slot: 13b, id: "minecraft:granite", Count: 64b}, {Slot: 14b, id: "minecraft:granite", Count: 64b}, {Slot: 15b, id: "minecraft:granite", Count: 64b}, {Slot: 16b, id: "minecraft:granite", Count: 64b}, {Slot: 17b, id: "minecraft:granite", Count: 64b}, {Slot: 18b, id: "minecraft:granite", Count: 64b}, {Slot: 19b, id: "minecraft:granite", Count: 64b}, {Slot: 20b, id: "minecraft:granite", Count: 64b}, {Slot: 21b, id: "minecraft:granite", Count: 64b}, {Slot: 22b, id: "minecraft:granite", Count: 64b}, {Slot: 23b, id: "minecraft:granite", Count: 64b}, {Slot: 24b, id: "minecraft:granite", Count: 64b}, {Slot: 25b, id: "minecraft:granite", Count: 64b}, {Slot: 26b, id: "minecraft:granite", Count: 64b}, {Slot: 27b, id: "minecraft:granite", Count: 64b}, {Slot: 28b, id: "minecraft:granite", Count: 64b}, {Slot: 29b, id: "minecraft:granite", Count: 64b}, {Slot: 30b, id: "minecraft:granite", Count: 64b}, {Slot: 31b, id: "minecraft:granite", Count: 64b}, {Slot: 32b, id: "minecraft:granite", Count: 64b}, {Slot: 33b, id: "minecraft:granite", Count: 64b}, {Slot: 34b, id: "minecraft:granite", Count: 64b}, {Slot: 35b, id: "minecraft:granite", Count: 64b}, {Slot: 36b, id: "minecraft:granite", Count: 64b}, {Slot: 37b, id: "minecraft:granite", Count: 64b}, {Slot: 38b, id: "minecraft:granite", Count: 64b}, {Slot: 39b, id: "minecraft:granite", Count: 64b}, {Slot: 40b, id: "minecraft:granite", Count: 64b}, {Slot: 41b, id: "minecraft:granite", Count: 64b}, {Slot: 42b, id: "minecraft:granite", Count: 64b}, {Slot: 43b, id: "minecraft:granite", Count: 64b}, {Slot: 44b, id: "minecraft:granite", Count: 64b}, {Slot: 45b, id: "minecraft:granite", Count: 64b}, {Slot: 46b, id: "minecraft:granite", Count: 64b}, {Slot: 47b, id: "minecraft:granite", Count: 64b}, {Slot: 48b, id: "minecraft:granite", Count: 64b}, {Slot: 49b, id: "minecraft:granite", Count: 64b}, {Slot: 50b, id: "minecraft:granite", Count: 64b}, {Slot: 51b, id: "minecraft:granite", Count: 64b}, {Slot: 52b, id: "minecraft:granite", Count: 64b}, {Slot: 53b, id: "minecraft:granite", Count: 64b}]
data modify storage call_stack: this.left_chest_items set value [{Slot: 27b, id: "minecraft:granite", Count: 64b},{Slot: 28b, id: "minecraft:granite", Count: 64b},{Slot: 29b, id: "minecraft:granite", Count: 64b},{Slot: 30b, id: "minecraft:granite", Count: 64b},{Slot: 31b, id: "minecraft:granite", Count: 64b},{Slot: 32b, id: "minecraft:granite", Count: 64b},{Slot: 33b, id: "minecraft:granite", Count: 64b},{Slot: 34b, id: "minecraft:granite", Count: 64b},{Slot: 35b, id: "minecraft:granite", Count: 64b},{Slot: 36b, id: "minecraft:granite", Count: 64b},{Slot: 37b, id: "minecraft:granite", Count: 64b},{Slot: 38b, id: "minecraft:granite", Count: 64b},{Slot: 39b, id: "minecraft:granite", Count: 64b},{Slot: 40b, id: "minecraft:granite", Count: 64b},{Slot: 41b, id: "minecraft:granite", Count: 64b},{Slot: 42b, id: "minecraft:granite", Count: 64b},{Slot: 43b, id: "minecraft:granite", Count: 64b},{Slot: 44b, id: "minecraft:granite", Count: 64b},{Slot: 45b, id: "minecraft:granite", Count: 64b},{Slot: 46b, id: "minecraft:granite", Count: 64b},{Slot: 47b, id: "minecraft:granite", Count: 64b},{Slot: 48b, id: "minecraft:granite", Count: 64b},{Slot: 49b, id: "minecraft:granite", Count: 64b},{Slot: 50b, id: "minecraft:granite", Count: 64b},{Slot: 51b, id: "minecraft:granite", Count: 64b},{Slot: 52b, id: "minecraft:granite", Count: 64b},{Slot: 53b, id: "minecraft:granite", Count: 64b}]
data modify storage call_stack: this.right_chest_items set value [{Slot: 0b, id: "minecraft:apple", Count: 1b}, {Slot: 1b, id: "minecraft:granite", Count: 64b}, {Slot: 2b, id: "minecraft:granite", Count: 64b}, {Slot: 3b, id: "minecraft:granite", Count: 64b}, {Slot: 4b, id: "minecraft:granite", Count: 64b}, {Slot: 5b, id: "minecraft:granite", Count: 64b}, {Slot: 6b, id: "minecraft:granite", Count: 64b}, {Slot: 7b, id: "minecraft:granite", Count: 64b}, {Slot: 8b, id: "minecraft:granite", Count: 64b}, {Slot: 9b, id: "minecraft:granite", Count: 64b}, {Slot: 10b, id: "minecraft:granite", Count: 64b}, {Slot: 11b, id: "minecraft:granite", Count: 64b}, {Slot: 12b, id: "minecraft:granite", Count: 64b}, {Slot: 13b, id: "minecraft:granite", Count: 64b}, {Slot: 14b, id: "minecraft:granite", Count: 64b}, {Slot: 15b, id: "minecraft:granite", Count: 64b}, {Slot: 16b, id: "minecraft:granite", Count: 64b}, {Slot: 17b, id: "minecraft:granite", Count: 64b}, {Slot: 18b, id: "minecraft:granite", Count: 64b}, {Slot: 19b, id: "minecraft:granite", Count: 64b}, {Slot: 20b, id: "minecraft:granite", Count: 64b}, {Slot: 21b, id: "minecraft:granite", Count: 64b}, {Slot: 22b, id: "minecraft:granite", Count: 64b}, {Slot: 23b, id: "minecraft:granite", Count: 64b}, {Slot: 24b, id: "minecraft:granite", Count: 64b}, {Slot: 25b, id: "minecraft:granite", Count: 64b}, {Slot: 26b, id: "minecraft:granite", Count: 64b}]
#[[[end]]]
data modify storage call_stack: call.arg0 set from storage call_stack: this.double_chest_items
execute in overworld positioned 2999999 250 2999999 run function dt.inventory:api/items/chest/set
execute in overworld positioned 2999999 250 2999999 run data modify storage unittest:in actual set from block ~ ~ ~ Items
data modify storage unittest:in expected set from storage call_stack: this.right_chest_items
function unittest:api/assert/equal
# strip slots since those will be different
execute in overworld run data modify storage unittest:in actual set from block 2999998 250 2999999 Items
data remove storage unittest:in actual[].Slot
data modify storage unittest:in expected set from storage call_stack: this.left_chest_items
data remove storage unittest:in expected[].Slot
function unittest:api/assert/equal

execute in overworld positioned 2999999 250 2999999 run function dt.inventory:api/items/chest/get
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set from storage call_stack: this.double_chest_items
function unittest:api/assert/equal
function call_stack:pop
function unittest:api/test_case/teardown




data modify storage unittest:in name set value "Test set and get, left side"
function unittest:api/test_case/setup
execute in overworld run data modify block 2999999 250 2999999 Items set value []
execute in overworld run data modify block 2999998 250 2999999 Items set value []
function call_stack:push
#[[[cog
#   from datapack_utils import *
#   double_chest_items = 'data modify storage call_stack: this.double_chest_items set value [{Slot: 0b, id: "minecraft:apple", Count: 1b}'
#   right_chest_items = 'data modify storage call_stack: this.right_chest_items set value [{Slot: 0b, id: "minecraft:apple", Count: 1b}'
#   left_chest_items = 'data modify storage call_stack: this.left_chest_items set value ['
#   for slot in range(1,54):
#       double_chest_items += f', {{Slot: {slot}b, id: "minecraft:granite", Count: 64b}}'
#       if slot <= 26:
#           right_chest_items += f', {{Slot: {slot}b, id: "minecraft:granite", Count: 64b}}'
#       if slot > 26:
#           left_chest_items += f'{{Slot: {slot}b, id: "minecraft:granite", Count: 64b}},'
#           if slot == 53:
#               left_chest_items = left_chest_items[:-1]
#      # cog.out(f', {{Slot: {slot}b, id: "minecraft:granite", Count: 64b}}')
#   double_chest_items += ']'
#   left_chest_items += ']'
#   right_chest_items += ']'
#   cog.outl(double_chest_items)
#   cog.outl(left_chest_items)
#   cog.outl(right_chest_items)
#]]]
data modify storage call_stack: this.double_chest_items set value [{Slot: 0b, id: "minecraft:apple", Count: 1b}, {Slot: 1b, id: "minecraft:granite", Count: 64b}, {Slot: 2b, id: "minecraft:granite", Count: 64b}, {Slot: 3b, id: "minecraft:granite", Count: 64b}, {Slot: 4b, id: "minecraft:granite", Count: 64b}, {Slot: 5b, id: "minecraft:granite", Count: 64b}, {Slot: 6b, id: "minecraft:granite", Count: 64b}, {Slot: 7b, id: "minecraft:granite", Count: 64b}, {Slot: 8b, id: "minecraft:granite", Count: 64b}, {Slot: 9b, id: "minecraft:granite", Count: 64b}, {Slot: 10b, id: "minecraft:granite", Count: 64b}, {Slot: 11b, id: "minecraft:granite", Count: 64b}, {Slot: 12b, id: "minecraft:granite", Count: 64b}, {Slot: 13b, id: "minecraft:granite", Count: 64b}, {Slot: 14b, id: "minecraft:granite", Count: 64b}, {Slot: 15b, id: "minecraft:granite", Count: 64b}, {Slot: 16b, id: "minecraft:granite", Count: 64b}, {Slot: 17b, id: "minecraft:granite", Count: 64b}, {Slot: 18b, id: "minecraft:granite", Count: 64b}, {Slot: 19b, id: "minecraft:granite", Count: 64b}, {Slot: 20b, id: "minecraft:granite", Count: 64b}, {Slot: 21b, id: "minecraft:granite", Count: 64b}, {Slot: 22b, id: "minecraft:granite", Count: 64b}, {Slot: 23b, id: "minecraft:granite", Count: 64b}, {Slot: 24b, id: "minecraft:granite", Count: 64b}, {Slot: 25b, id: "minecraft:granite", Count: 64b}, {Slot: 26b, id: "minecraft:granite", Count: 64b}, {Slot: 27b, id: "minecraft:granite", Count: 64b}, {Slot: 28b, id: "minecraft:granite", Count: 64b}, {Slot: 29b, id: "minecraft:granite", Count: 64b}, {Slot: 30b, id: "minecraft:granite", Count: 64b}, {Slot: 31b, id: "minecraft:granite", Count: 64b}, {Slot: 32b, id: "minecraft:granite", Count: 64b}, {Slot: 33b, id: "minecraft:granite", Count: 64b}, {Slot: 34b, id: "minecraft:granite", Count: 64b}, {Slot: 35b, id: "minecraft:granite", Count: 64b}, {Slot: 36b, id: "minecraft:granite", Count: 64b}, {Slot: 37b, id: "minecraft:granite", Count: 64b}, {Slot: 38b, id: "minecraft:granite", Count: 64b}, {Slot: 39b, id: "minecraft:granite", Count: 64b}, {Slot: 40b, id: "minecraft:granite", Count: 64b}, {Slot: 41b, id: "minecraft:granite", Count: 64b}, {Slot: 42b, id: "minecraft:granite", Count: 64b}, {Slot: 43b, id: "minecraft:granite", Count: 64b}, {Slot: 44b, id: "minecraft:granite", Count: 64b}, {Slot: 45b, id: "minecraft:granite", Count: 64b}, {Slot: 46b, id: "minecraft:granite", Count: 64b}, {Slot: 47b, id: "minecraft:granite", Count: 64b}, {Slot: 48b, id: "minecraft:granite", Count: 64b}, {Slot: 49b, id: "minecraft:granite", Count: 64b}, {Slot: 50b, id: "minecraft:granite", Count: 64b}, {Slot: 51b, id: "minecraft:granite", Count: 64b}, {Slot: 52b, id: "minecraft:granite", Count: 64b}, {Slot: 53b, id: "minecraft:granite", Count: 64b}]
data modify storage call_stack: this.left_chest_items set value [{Slot: 27b, id: "minecraft:granite", Count: 64b},{Slot: 28b, id: "minecraft:granite", Count: 64b},{Slot: 29b, id: "minecraft:granite", Count: 64b},{Slot: 30b, id: "minecraft:granite", Count: 64b},{Slot: 31b, id: "minecraft:granite", Count: 64b},{Slot: 32b, id: "minecraft:granite", Count: 64b},{Slot: 33b, id: "minecraft:granite", Count: 64b},{Slot: 34b, id: "minecraft:granite", Count: 64b},{Slot: 35b, id: "minecraft:granite", Count: 64b},{Slot: 36b, id: "minecraft:granite", Count: 64b},{Slot: 37b, id: "minecraft:granite", Count: 64b},{Slot: 38b, id: "minecraft:granite", Count: 64b},{Slot: 39b, id: "minecraft:granite", Count: 64b},{Slot: 40b, id: "minecraft:granite", Count: 64b},{Slot: 41b, id: "minecraft:granite", Count: 64b},{Slot: 42b, id: "minecraft:granite", Count: 64b},{Slot: 43b, id: "minecraft:granite", Count: 64b},{Slot: 44b, id: "minecraft:granite", Count: 64b},{Slot: 45b, id: "minecraft:granite", Count: 64b},{Slot: 46b, id: "minecraft:granite", Count: 64b},{Slot: 47b, id: "minecraft:granite", Count: 64b},{Slot: 48b, id: "minecraft:granite", Count: 64b},{Slot: 49b, id: "minecraft:granite", Count: 64b},{Slot: 50b, id: "minecraft:granite", Count: 64b},{Slot: 51b, id: "minecraft:granite", Count: 64b},{Slot: 52b, id: "minecraft:granite", Count: 64b},{Slot: 53b, id: "minecraft:granite", Count: 64b}]
data modify storage call_stack: this.right_chest_items set value [{Slot: 0b, id: "minecraft:apple", Count: 1b}, {Slot: 1b, id: "minecraft:granite", Count: 64b}, {Slot: 2b, id: "minecraft:granite", Count: 64b}, {Slot: 3b, id: "minecraft:granite", Count: 64b}, {Slot: 4b, id: "minecraft:granite", Count: 64b}, {Slot: 5b, id: "minecraft:granite", Count: 64b}, {Slot: 6b, id: "minecraft:granite", Count: 64b}, {Slot: 7b, id: "minecraft:granite", Count: 64b}, {Slot: 8b, id: "minecraft:granite", Count: 64b}, {Slot: 9b, id: "minecraft:granite", Count: 64b}, {Slot: 10b, id: "minecraft:granite", Count: 64b}, {Slot: 11b, id: "minecraft:granite", Count: 64b}, {Slot: 12b, id: "minecraft:granite", Count: 64b}, {Slot: 13b, id: "minecraft:granite", Count: 64b}, {Slot: 14b, id: "minecraft:granite", Count: 64b}, {Slot: 15b, id: "minecraft:granite", Count: 64b}, {Slot: 16b, id: "minecraft:granite", Count: 64b}, {Slot: 17b, id: "minecraft:granite", Count: 64b}, {Slot: 18b, id: "minecraft:granite", Count: 64b}, {Slot: 19b, id: "minecraft:granite", Count: 64b}, {Slot: 20b, id: "minecraft:granite", Count: 64b}, {Slot: 21b, id: "minecraft:granite", Count: 64b}, {Slot: 22b, id: "minecraft:granite", Count: 64b}, {Slot: 23b, id: "minecraft:granite", Count: 64b}, {Slot: 24b, id: "minecraft:granite", Count: 64b}, {Slot: 25b, id: "minecraft:granite", Count: 64b}, {Slot: 26b, id: "minecraft:granite", Count: 64b}]
#[[[end]]]
data modify storage call_stack:zz call.arg0 set from storage call_stack: this.double_chest_items
execute in overworld positioned 2999998 250 2999999 run function dt.inventory:api/items/chest/set
execute in overworld positioned 2999999 250 2999999 run data modify storage unittest:in actual set from block ~ ~ ~ Items
data modify storage unittest:in expected set from storage call_stack: this.right_chest_items
function unittest:api/assert/equal
# strip slots since those will be different
execute in overworld run data modify storage unittest:in actual set from block 2999998 250 2999999 Items
data remove storage unittest:in actual[].Slot
data modify storage unittest:in expected set from storage call_stack: this.left_chest_items
data remove storage unittest:in expected[].Slot
function unittest:api/assert/equal

execute in overworld positioned 2999998 250 2999999 run function dt.inventory:api/items/chest/get
data modify storage unittest:in actual set from storage call_stack: call.return
data modify storage unittest:in expected set from storage call_stack: this.double_chest_items
function unittest:api/assert/equal
function call_stack:pop
function unittest:api/test_case/teardown



function unittest:api/test_suite/teardown


execute in overworld run setblock 2999999 250 2999999 air replace
execute in overworld run setblock 2999998 250 2999999 air replace