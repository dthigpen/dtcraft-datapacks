# function unittest:api/config/enable/detailed_results
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "subarray to_values"

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "empty list"
data modify storage call_stack: call.arg0 set value []
function dt.array:api/map/key_value/subarray/to_values
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value []
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "list of 1"
data modify storage call_stack: call.arg0 set value [[{key:1,value:"foo"}]]
function dt.array:api/map/key_value/subarray/to_values
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [["foo"]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown


function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "list of 3"
data modify storage call_stack: call.arg0 set value [[{key:1,value:"foo"}],[{key:2,value:"bar"}],[{key:3,value:"!!!"}]]
function dt.array:api/map/key_value/subarray/to_values
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [["foo"],["bar"],["!!!"]]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

function unittest:api/test_suite/teardown