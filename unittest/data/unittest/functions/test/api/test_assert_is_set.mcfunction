data modify storage unittest:in name set value "Assert Is Set"
function unittest:api/v1/test_suite/setup

data modify storage unittest:in name set value "Unset actual value (Fail)"
function unittest:api/v1/test_case/setup
function unittest:api/v1/assert/is_set
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "Set actual value (Pass)"
function unittest:api/v1/test_case/setup
data modify storage unittest:in actual set value "value"
function unittest:api/v1/assert/is_set
function unittest:api/v1/test_case/teardown

function unittest:api/v1/test_suite/teardown