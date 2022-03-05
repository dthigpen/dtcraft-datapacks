function call_stack:push

data modify storage unittest:in name set value "Assert Equal"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "Unset expected and actual values (Pass)"
function unittest:api/v1/test_case/setup
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "Unset expected value (Fail)"
function unittest:api/v1/test_case/setup
data modify storage unittest:in actual set value true
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "Unequal expected and actual (Fail)"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value false
data modify storage unittest:in actual set value true
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "Equal expected and actual (Pass)"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value true
data modify storage unittest:in actual set value true
function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

function unittest:api/v1/test_suite/teardown
function call_stack:pop