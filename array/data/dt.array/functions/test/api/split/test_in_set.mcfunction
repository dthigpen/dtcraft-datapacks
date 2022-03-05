data modify storage unittest:in name set value "Test values in set"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "Test 1"
function unittest:api/v1/test_case/setup

data modify storage unittest:in expected set value [[{Slot:1b, id:"foo"},{Slot:3b, id:"thing"}],[{Slot:2b, id:"bar"}]]

function call_stack:push
data modify storage call_stack: this.data set value [{Slot:1b, id:"foo"},{Slot:2b, id:"bar"},{Slot:3b, id:"thing"}]
data modify storage call_stack: call.arg0 set from storage call_stack: this.data
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg1 append from storage call_stack: this.data[].Slot
data modify storage call_stack: call.arg2 set value [1b, 3b]
function dt.array:api/split/in_set
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown
function unittest:api/v1/test_suite/teardown