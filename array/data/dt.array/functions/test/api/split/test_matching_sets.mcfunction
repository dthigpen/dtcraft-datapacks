function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "matching_sets"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "test 1"
data modify storage call_stack: call.arg0 set value 111
data modify storage call_stack: call.arg1 set value [[1,2,3],[111,222,333],[],[111]]
function dt.array:api/split/matching_sets
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [ [[111,222,333],[111]],[[1,2,3],[] ]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "test 1 limit one"
data modify storage call_stack: call.arg0 set value 1
data modify storage call_stack: call.arg1 set value [[444,44,4],[22,2],[111,11,1],[333,3,33]]
data modify storage call_stack: call.arg2 set value true
function dt.array:api/split/matching_sets
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [ [[111,11,1]],[[444,44,4],[22,2],[333,3,33] ]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown



function unittest:api/test_suite/teardown