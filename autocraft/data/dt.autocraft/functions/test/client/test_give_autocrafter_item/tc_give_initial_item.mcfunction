function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Give Player knowledge book"

# conditions for item to be given to Player
#> 1. Holding knowledge book
#> 2. Unlocked autocrafter recipe
clear @p knowledge_book
clear @p glow_item_frame

# check that the player does not already have the recipe unlocked
data modify storage call_stack: call.expected set value 0b
execute store success storage call_stack: call.actual byte 1 run recipe take @p dt.autocraft:autocrafter
function unittest:api/assert/equal

#> 1
give @p knowledge_book
data modify storage call_stack: call.actual set from entity @p Inventory[{id:"minecraft:knowledge_book"}]
function unittest:api/assert/is_set

#> 2
data modify storage call_stack: call.expected set value 1b
execute store success storage call_stack: call.actual byte 1 run recipe give @p dt.autocraft:autocrafter
function unittest:api/assert/equal


function unittest:api/test_case/teardown