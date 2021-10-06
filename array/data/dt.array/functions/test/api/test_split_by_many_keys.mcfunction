data modify storage unittest:in name set value "split_by_many_keys"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "good"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:feather",Slot:9b,Count:1b}],[{id:"minecraft:slime_ball",Slot:3b,Count:1b}]]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:feather",Slot:9b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: call.arg1 set value [{id:"minecraft:cobblestone"},{id:"minecraft:feather"}]
function dt.array:api/split_by_many_keys
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown
