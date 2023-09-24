function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test split/by_key_limit_n"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Limit 0"
data modify storage call_stack: call.arg0 set value [{id:0},{value:"foo",id:1},{value:"bar",id:2},{value:foo,id:3},{fruit:"apple",id:4}]
data modify storage call_stack: call.arg1 set value {value:"foo"}
data modify storage call_stack: call.arg2 set value 0
function dt.array:api/split/by_key_limit_n
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[],[{id:0},{value:"foo",id:1},{value:"bar",id:2},{value:foo,id:3},{fruit:"apple",id:4}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Limit 1 with 2 actual matches"
data modify storage call_stack: call.arg0 set value [{id:0},{value:"foo",id:1},{value:"bar",id:2},{value:foo,id:3},{fruit:"apple",id:4}]
data modify storage call_stack: call.arg1 set value {value:"foo"}
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/split/by_key_limit_n
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[{value:"foo",id:1}],[{id:0},{value:"bar",id:2},{value:foo,id:3},{fruit:"apple",id:4}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Limit 4 with 2 actual matches"
data modify storage call_stack: call.arg0 set value [{id:0},{value:"foo",id:1},{value:"bar",id:2},{value:foo,id:3},{fruit:"apple",id:4}]
data modify storage call_stack: call.arg1 set value {value:"foo"}
data modify storage call_stack: call.arg2 set value 4
function dt.array:api/split/by_key_limit_n
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [[{value:"foo",id:1},{value:foo,id:3}],[{id:0},{value:"bar",id:2},{fruit:"apple",id:4}]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown