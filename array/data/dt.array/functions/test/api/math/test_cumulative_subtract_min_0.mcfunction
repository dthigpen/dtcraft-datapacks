data modify storage unittest:in name set value "Test Cumulative Subtract Min 0"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "On single value"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value {values:[3,3,3], remainder:0}

function call_stack:push
data modify storage call_stack: call.arg0 set value [5,3,3]
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/math/cumulative_subtract_min_0
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown


data modify storage unittest:in name set value "On multiple values"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value {values:[0,0,2], remainder:0}

function call_stack:push
data modify storage call_stack: call.arg0 set value [5,3,3]
data modify storage call_stack: call.arg1 set value 9
function dt.array:api/math/cumulative_subtract_min_0
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Has remainder"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value {values: [0,0,0], remainder: 88}

function call_stack:push
data modify storage call_stack: call.arg0 set value [5,3,3]
data modify storage call_stack: call.arg1 set value 99
function dt.array:api/math/cumulative_subtract_min_0
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown
