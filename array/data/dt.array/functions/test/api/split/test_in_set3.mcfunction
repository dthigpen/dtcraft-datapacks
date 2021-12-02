function unittest:api/config/enable/detailed_results

data modify storage unittest:in name set value "Test values in set"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/test_case/setup


function call_stack:push
data modify storage call_stack: this.data set value [{Slot:1b, id:"foo"},{Slot:2b, id:"bar"},{Slot:3b, id:"thing"}]
data modify storage call_stack: call.arg0 set from storage call_stack: this.data
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg1 append from storage call_stack: this.data[].Slot
data modify storage call_stack: call.arg2 set value [[1b, 11b], [22b, 23b], [3b]]
function dt.array:api/split/in_set3
data modify storage unittest:in actual set from storage call_stack: call.return
tellraw @p ["test_in_set3 call.return: ",{"nbt":"call.return","storage":"call_stack:"}]
function call_stack:pop

data modify storage unittest:in expected set value [[{Slot:1b, id:"foo"},{Slot:3b, id:"thing"}],[{Slot:2b, id:"bar"}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown
function unittest:api/test_suite/teardown