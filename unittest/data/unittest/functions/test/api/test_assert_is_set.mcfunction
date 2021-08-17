data modify storage unittest:in name set value "Assert Is Set"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "Unset actual value (Fail)"
function unittest:api/test_case/setup
function unittest:api/assert/is_set
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "Set actual value (Pass)"
function unittest:api/test_case/setup
data modify storage unittest:in actual set value "value"
function unittest:api/assert/is_set
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown