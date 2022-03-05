function unittest:api/2/test_suite/setup
data modify storage call_stack: this.name set value "My test suite"

function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test pass"
data modify storage call_stack: this.test_case.assertions append value {pass:true}
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test fail no assertions"
function unittest:api/2/test_case/teardown

function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test skip"
function unittest:api/2/test_case/skip
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test todo"
function unittest:api/2/test_case/todo
data modify storage call_stack: this.test_case.assertions append value {pass:false,msg:"AAAH!"}
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test assert equal true"
data modify storage call_stack: call.expected set value true
data modify storage call_stack: call.actual set value true
function unittest:api/2/assert/equal
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test assert equal false"
data modify storage call_stack: call.expected set value true
data modify storage call_stack: call.actual set value false
function unittest:api/2/assert/equal
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test assert not equal true"
data modify storage call_stack: call.expected set value true
data modify storage call_stack: call.actual set value false
function unittest:api/2/assert/not_equal
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test assert not equal false"
data modify storage call_stack: call.expected set value true
data modify storage call_stack: call.actual set value true
function unittest:api/2/assert/not_equal
function unittest:api/2/test_case/teardown



function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test assert is set true"
data modify storage call_stack: call.actual set value false
function unittest:api/2/assert/is_set
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test assert is set false"
function unittest:api/2/assert/is_set
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test assert is not set true"
function unittest:api/2/assert/is_not_set
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test assert is not set false"
data modify storage call_stack: call.actual set value false
function unittest:api/2/assert/is_not_set
function unittest:api/2/test_case/teardown


function unittest:api/2/test_case/setup
data modify storage call_stack: this.name set value "Test asserts after false assert"
# passes
function unittest:api/2/assert/is_not_set
# fails
data modify storage call_stack: call.actual set value true
function unittest:api/2/assert/is_not_set
# passes but not added because of last fail
data modify storage call_stack: call.expected set value true
data modify storage call_stack: call.actual set value true
function unittest:api/2/assert/equal
function unittest:api/2/test_case/teardown


function unittest:api/2/test_suite/teardown