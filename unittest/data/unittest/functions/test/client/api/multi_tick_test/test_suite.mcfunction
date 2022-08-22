#ignore
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Multi Tick Test Suite"

data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append value ['function unittest:test/api/multi_tick_test/test_cases/test_initial']
data modify storage call_stack: call.arg0 append value ['function unittest:test/api/multi_tick_test/test_cases/test_second']
data modify storage call_stack: call.arg0 append value ['function unittest:test/api/multi_tick_test/test_cases/test_final']
function unittest:api/test_suite/queue_and_teardown

