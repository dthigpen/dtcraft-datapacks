data modify storage unittest:in name set value "split_by_key"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "good"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b}],[{id:"minecraft:slime_ball",Slot:3b,Count:1b}]]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: call.arg1 set value {id:"minecraft:cobblestone"}
function dt.array:api/split_by_key
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "last_item"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[{id:"minecraft:slime_ball",Slot:3b,Count:1b}],[{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b}]]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: call.arg1 set value {id:"minecraft:slime_ball"}
function dt.array:api/split_by_key
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "bad_key"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[],[{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: call.arg1 set value {id:"minecraft:aaaaa"}
function dt.array:api/split_by_key
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "empty_list"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[],[]]
function call_stack:push
data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg1 set value {id:"minecraft:cobblestone"}
function dt.array:api/split_by_key
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown


data modify storage unittest:in name set value "numeric"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[3],[1,2,4,5,6,7,8,9]]
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5,6,7,8,9]
data modify storage call_stack: call.arg1 set value 3
function dt.array:api/split_by_key
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "string"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [["cccc"],["aa","bbb"]]
function call_stack:push
data modify storage call_stack: call.arg0 set value ["aa","bbb","cccc"]
data modify storage call_stack: call.arg1 set value "cccc"
function dt.array:api/split_by_key
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "split_by_key_limit_n"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "limit_0"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[],[]]
function call_stack:push
data modify storage call_stack: call.arg0 set value ["aa","bbb","cccc"]
data modify storage call_stack: call.arg1 set value "cccc"
data modify storage call_stack: call.arg2 set value 0
function dt.array:api/split_by_key_limit_n
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "limit_-10"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [[],[]]
function call_stack:push
data modify storage call_stack: call.arg0 set value ["aa","bbb","cccc"]
data modify storage call_stack: call.arg1 set value "cccc"
data modify storage call_stack: call.arg2 set value -1
function dt.array:api/split_by_key_limit_n
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "limit_100"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value [["cccc"],["aa","bbb"]]
function call_stack:push
data modify storage call_stack: call.arg0 set value ["aa","bbb","cccc"]
data modify storage call_stack: call.arg1 set value "cccc"
data modify storage call_stack: call.arg2 set value 100
function dt.array:api/split_by_key_limit_n
data modify storage unittest:in actual set from storage call_stack: call.result
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown
