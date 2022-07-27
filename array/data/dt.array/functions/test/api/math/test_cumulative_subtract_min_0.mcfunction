function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test Cumulative Subtract Min 0"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "On single value"

data modify storage call_stack: call.arg0 set value [5,3,3]
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/deprecated/math/cumulative_subtract_min_0
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value {values:[3,3,3], remainder:0}

function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "On multiple values"

data modify storage call_stack: call.arg0 set value [5,3,3]
data modify storage call_stack: call.arg1 set value 9
function dt.array:api/deprecated/math/cumulative_subtract_min_0
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value {values:[0,0,2], remainder:0}

function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Has remainder"

data modify storage call_stack: call.arg0 set value [5,3,3]
data modify storage call_stack: call.arg1 set value 99
function dt.array:api/deprecated/math/cumulative_subtract_min_0
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value {values: [0,0,0], remainder: 88}
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown
