# function unittest:api/config/enable/detailed_results
data modify storage unittest:in name set value "Test iter array"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "init"
function unittest:api/test_case/setup
function call_stack:push
function dt.array:api/iter/array/init
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {readonly:{size:0, index: -1}, prev:[], next:[]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "get index"
function unittest:api/test_case/setup
function call_stack:push
function dt.array:api/iter/array/init
function call_stack:pipe
function dt.array:api/iter/array/get_index
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value -1
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "init with value"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
function dt.array:api/iter/array/init
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {readonly:{size:3, index: 0, value: 1}, prev:[1], next:[2,3]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "get value"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
function dt.array:api/iter/array/init
function call_stack:pipe
function dt.array:api/iter/array/next
function call_stack:pipe
function dt.array:api/iter/array/get_value
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value 2
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "has next true"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
function dt.array:api/iter/array/init
function call_stack:pipe
function dt.array:api/iter/array/has_next
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/is_set
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "has next false"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value []
function dt.array:api/iter/array/init
function call_stack:pipe
function dt.array:api/iter/array/has_next
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "next"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
function dt.array:api/iter/array/init
function call_stack:pipe
function dt.array:api/iter/array/next
function call_stack:pipe
function dt.array:api/iter/array/next
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {readonly:{size:3, index: 2, value: 3}, prev:[1,2,3], next:[]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "next no value"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
function dt.array:api/iter/array/init
function call_stack:pipe
function dt.array:api/iter/array/next
function call_stack:pipe
function dt.array:api/iter/array/next
function call_stack:pipe
function dt.array:api/iter/array/next
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "prev"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
function dt.array:api/iter/array/init
function call_stack:pipe
function dt.array:api/iter/array/next
function call_stack:pipe
function dt.array:api/iter/array/prev
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {readonly:{size:3, index: 0, value: 1}, prev:[1], next:[2,3]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "prev no value"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
function dt.array:api/iter/array/init
function call_stack:pipe
function dt.array:api/iter/array/prev
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown



data modify storage unittest:in name set value "insert from empty"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value []
function dt.array:api/iter/array/init
function call_stack:pipe
data modify storage call_stack: call.arg1 set value 99
function dt.array:api/iter/array/insert
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {readonly:{size:1, index: -1}, prev:[], next:[99]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "insert from non-empty"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
function dt.array:api/iter/array/init
function call_stack:pipe
data modify storage call_stack: call.arg1 set value 99
function dt.array:api/iter/array/insert
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {readonly:{size:4, index: 0, value: 1}, prev:[1], next:[99,2,3]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "reset"
function unittest:api/test_case/setup
function call_stack:push
data modify storage call_stack: call.arg0 set value [1,2,3]
function dt.array:api/iter/array/init
function call_stack:pipe
function dt.array:api/iter/array/next
function call_stack:pipe
function dt.array:api/iter/array/next
function call_stack:pipe
function dt.array:api/iter/array/reset
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
data modify storage unittest:in expected set value {readonly:{size:3, index: 0, value: 1}, prev:[1], next:[2,3]}
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown