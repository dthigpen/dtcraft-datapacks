# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Call Stack"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "variable set in parent"
function call_stack:load

# Check that variable created in current scope is set
data modify storage call_stack: this.variable set value 111
data modify storage call_stack: call.actual set from storage call_stack: this.variable
function unittest:api/assert/is_set

# Check that variable created in parent is not set in child
data modify storage call_stack: call.actual set from storage call_stack: this.variable
function unittest:api/assert/is_not_set

# Check that variable previously created in the parent is still set
data modify storage call_stack: call.actual set from storage call_stack: this.variable
function unittest:api/assert/is_set

function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "variable set in child"
function call_stack:load

# Check that the variable to be created in the child is not set
data modify storage call_stack: call.actual set from storage call_stack: this.variable
function unittest:api/assert/is_not_set

# Check that variable created in child is set
data modify storage call_stack: this.variable set value 222
data modify storage call_stack: call.actual set from storage call_stack: this.variable
function unittest:api/assert/is_set

# Check that the variable created in the child is not set in the parent
data modify storage call_stack: call.actual set from storage call_stack: this.variable
function unittest:api/assert/is_not_set

function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Return value"
data modify storage call_stack: this.return set value {foo:true}
data modify storage call_stack: call.actual set from storage call_stack: call.return
function unittest:api/assert/is_set
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "No return value"
data modify storage call_stack: call.actual set from storage call_stack: call.return
function unittest:api/assert/is_not_set
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown