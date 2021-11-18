function unittest:api/config/enable/detailed_results

data modify storage unittest:in name set value "Test compress shaped"
function unittest:api/test_suite/setup


data modify storage unittest:in name set value "remove top"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [[0,0,0],[1,0,0],[2,2,2]]
function dt.crafting:internal/recipe/compress_shaped
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

data modify storage unittest:in expected set value [[1,0,0],[2,2,2]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "remove bottom"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [[1,0,0],[2,2,2],[0,0,0]]
function dt.crafting:internal/recipe/compress_shaped
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

data modify storage unittest:in expected set value [[1,0,0],[2,2,2]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "remove top and bottom"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [[0,0,0],[2,0,2],[0,0,0]]
function dt.crafting:internal/recipe/compress_shaped
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

data modify storage unittest:in expected set value [[2,0,2]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "remove left"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [[0,1,1],[0,2,2],[0,3,3]]
function dt.crafting:internal/recipe/compress_shaped
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

data modify storage unittest:in expected set value [[1,1],[2,2],[3,3]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

data modify storage unittest:in name set value "single item top left"
function unittest:api/test_case/setup

function call_stack:push
data modify storage call_stack: call.arg0 set value [[1,0,0],[0,0,0],[0,0,0]]
function dt.crafting:internal/recipe/compress_shaped
data modify storage unittest:in actual set from storage call_stack: call.return
function call_stack:pop

data modify storage unittest:in expected set value [[1]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown