function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test values in set unique"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"

data modify storage call_stack: call.expected set value [[{Slot:1b, id:"foo"},{Slot:3b, id:"thing"}],[{Slot:1b, id:"foo2"},{Slot:2b, id:"bar"}]]

data modify storage call_stack: this.data set value [{Slot:1b, id:"foo"},{Slot:1b, id:"foo2"},{Slot:2b, id:"bar"},{Slot:3b, id:"thing"}]
data modify storage call_stack: call.arg0 set from storage call_stack: this.data
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg1 append from storage call_stack: this.data[].Slot
data modify storage call_stack: call.arg2 set value [1b, 3b]
function dt.array:api/split/in_set_unique
data modify storage call_stack: call.actual set from storage call_stack: call.return
function unittest:api/assert/equal
function unittest:api/test_case/teardown
function unittest:api/test_suite/teardown