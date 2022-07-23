#function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "can_map_values_to_sets"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "test true"

data modify storage call_stack: call.arg0 set value [1,2,3,4]
data modify storage call_stack: call.arg1 set value [1,2,3,4]
data modify storage call_stack: call.arg2 set value [[444,44,4],[22,2],[111,11,1],[333,3,33]]
function dt.array:api/split/can_map_values_to_sets
data modify storage call_stack: call.actual set from storage call_stack: call.return

function unittest:api/assert/is_set
function unittest:api/test_case/teardown





function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "test false"

data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value [[444,44,4],[22,2],[111,11,1],[333,3,33]]
function dt.array:api/split/can_map_values_to_sets
data modify storage call_stack: call.actual set from storage call_stack: call.return

function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown






function unittest:api/test_suite/teardown