#function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "can_map_values_to_sets"
function unittest:api/v1/test_suite/setup


data modify storage unittest:in name set value "test true"
function unittest:api/v1/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4]
data modify storage call_stack: call.arg1 set value [1,2,3,4]
data modify storage call_stack: call.arg2 set value [[444,44,4],[22,2],[111,11,1],[333,3,33]]
function dt.array:api/split/can_map_values_to_sets
data modify storage unittest:in actual set from storage call_stack: call.return

function call_stack:pop
function unittest:api/v1/assert/is_set
function unittest:api/v1/test_case/teardown





data modify storage unittest:in name set value "test false"
function unittest:api/v1/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3,4,5]
data modify storage call_stack: call.arg1 set value [[444,44,4],[22,2],[111,11,1],[333,3,33]]
function dt.array:api/split/can_map_values_to_sets
data modify storage unittest:in actual set from storage call_stack: call.return

function call_stack:pop
function unittest:api/v1/assert/is_not_set
function unittest:api/v1/test_case/teardown






function unittest:api/v1/test_suite/teardown