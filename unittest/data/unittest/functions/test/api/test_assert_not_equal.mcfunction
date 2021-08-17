function call_stack:push

data modify storage unittest:in name set value "Assert Equal"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Unset expected and actual values (Fail)"
function unittest:api/test_case/setup
function unittest:api/assert/not_equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Unset expected value (Pass)"
function unittest:api/test_case/setup
data modify storage unittest:in actual set value true
function unittest:api/assert/not_equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Unequal expected and actual (Pass)"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value false
data modify storage unittest:in actual set value true
function unittest:api/assert/not_equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Equal expected and actual (Fail)"
function unittest:api/test_case/setup
data modify storage unittest:in expected set value true
data modify storage unittest:in actual set value true
function unittest:api/assert/not_equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown
function call_stack:pop