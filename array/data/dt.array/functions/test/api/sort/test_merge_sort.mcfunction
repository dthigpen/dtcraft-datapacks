data modify storage unittest:in name set value "array merge_sort"
function unittest:api/v1/test_suite/setup


data modify storage unittest:in name set value "empty list"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value []
function call_stack:push
data modify storage call_stack: call.arg0 set value []
function dt.array:api/sort/merge_sort
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


data modify storage unittest:in name set value "list of 1"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value [{key:1,value:"foo"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{key:1,value:"foo"}]
function dt.array:api/sort/merge_sort
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


data modify storage unittest:in name set value "list of 2 unsorted"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value [{key:1,value:"foo"},{key:2,value:"bar"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{key:2,value:"bar"}, {key:1,value:"foo"}]
function dt.array:api/sort/merge_sort
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


data modify storage unittest:in name set value "list of 3 unsorted"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value [{key:1,value:"foo"}, {key:2,value:"bar"}, {key:3,value:"!!!"}]
function call_stack:push
data modify storage call_stack: call.arg0 set value [{key:3,value:"!!!"},{key:2,value:"bar"}, {key:1,value:"foo"}]
function dt.array:api/sort/merge_sort
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown



function unittest:api/v1/test_suite/teardown