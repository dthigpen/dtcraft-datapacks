# function unittest:api/config/enable/detailed_results

function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test compress shaped"


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "remove top"

data modify storage call_stack: call.arg0 set value [[0,0,0],[1,0,0],[2,2,2]]
data modify storage call_stack: call.arg1 set value [[0b,0b,0b],[1b,0b,0b],[1b,1b,1b]]

function dt.crafting:internal/craft/compress_shaped
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [ [[1,0,0],[2,2,2]], [[1b,0b,0b],[1b,1b,1b]] ]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "remove bottom"

data modify storage call_stack: call.arg0 set value [[1,0,0],[2,2,2],[0,0,0]]
data modify storage call_stack: call.arg1 set value [[1b,0b,0b],[1b,1b,1b], [0b,0b,0b]]

function dt.crafting:internal/craft/compress_shaped
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [ [[1,0,0],[2,2,2]], [[1b,0b,0b],[1b,1b,1b]] ]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "remove top and bottom"

data modify storage call_stack: call.arg0 set value [[0,0,0],[2,0,2],[0,0,0]]
data modify storage call_stack: call.arg1 set value [[0b,0b,0b],[1b,0b,1b],[0b,0b,0b]]
function dt.crafting:internal/craft/compress_shaped
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [ [[2,0,2]], [[1b,0b,1b]] ]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "remove left"

data modify storage call_stack: call.arg0 set value [[0,1,1],[0,2,2],[0,3,3]]
data modify storage call_stack: call.arg1 set value [[0b,1b,1b],[0b,1b,1b],[0b,1b,1b]]
function dt.crafting:internal/craft/compress_shaped
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [ [[1,1],[2,2],[3,3]], [[1b,1b],[1b,1b],[1b,1b]] ]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "single item top left"

data modify storage call_stack: call.arg0 set value [[1,0,0],[0,0,0],[0,0,0]]
data modify storage call_stack: call.arg1 set value [[1b,0b,0b],[0b,0b,0b],[0b,0b,0b]]
function dt.crafting:internal/craft/compress_shaped
data modify storage call_stack: call.actual set from storage call_stack: call.return

data modify storage call_stack: call.expected set value [ [[1]], [[1b]] ]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_suite/teardown