data modify storage unittest:in name set value "Test Apply Count"
function unittest:api/v1/test_suite/setup


data modify storage unittest:in name set value "Test 1"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value [{a:1,Count:1b},{b:2,Count:2b},{c:3,Count:3b}]

function call_stack:push
data modify storage call_stack: call.arg0 set value [{a:1},{b:2},{c:3}]
data modify storage call_stack: call.arg1 set value [1b,2b,3b]
function dt.inventory:internal/apply/count
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown

data modify storage unittest:in name set value "Test 2"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value [{a:1,Count:1b},{b:2,Count:2b}]

function call_stack:push
data modify storage call_stack: call.arg0 set value [{a:1},{b:2}]
data modify storage call_stack: call.arg1 set value [1b,2b,3b]
function dt.inventory:internal/apply/count
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


data modify storage unittest:in name set value "Test 3"
function unittest:api/v1/test_case/setup
data modify storage unittest:in expected set value [{a:1,Count:1b},{b:2,Count:2b}]

function call_stack:push
data modify storage call_stack: call.arg0 set value [{a:1},{b:2},{c:3}]
data modify storage call_stack: call.arg1 set value [1b,2b]
function dt.inventory:internal/apply/count
data modify storage unittest:in actual set from storage call_stack: call.return
tellraw @p ["test_count.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]
function call_stack:pop

function unittest:api/v1/assert/equal
function unittest:api/v1/test_case/teardown


function unittest:api/v1/test_suite/teardown