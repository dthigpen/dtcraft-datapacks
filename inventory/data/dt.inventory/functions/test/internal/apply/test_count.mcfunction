function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test Apply Count"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"
data modify storage call_stack: call.expected set value [{a:1,Count:1b},{b:2,Count:2b},{c:3,Count:3b}]

data modify storage call_stack: call.arg0 set value [{a:1},{b:2},{c:3}]
data modify storage call_stack: call.arg1 set value [1b,2b,3b]
function dt.inventory:internal/apply/count
data modify storage call_stack: call.actual set from storage call_stack: call.return

function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 2"
data modify storage call_stack: call.expected set value [{a:1,Count:1b},{b:2,Count:2b}]

data modify storage call_stack: call.arg0 set value [{a:1},{b:2}]
data modify storage call_stack: call.arg1 set value [1b,2b,3b]
function dt.inventory:internal/apply/count
data modify storage call_stack: call.actual set from storage call_stack: call.return

function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 3"
data modify storage call_stack: call.expected set value [{a:1,Count:1b},{b:2,Count:2b}]

data modify storage call_stack: call.arg0 set value [{a:1},{b:2},{c:3}]
data modify storage call_stack: call.arg1 set value [1b,2b]
function dt.inventory:internal/apply/count
data modify storage call_stack: call.actual set from storage call_stack: call.return
tellraw @p ["test_count.mcfunction: ",{"nbt":"call.return","storage":"call_stack:"}]

function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown