function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Refill Tests"

data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append value ['function dt.refill:test/test_refill/test_case_pre_drop']
data modify storage call_stack: call.arg0 append value ['say waiting']
data modify storage call_stack: call.arg0 append value ['say waiting']
data modify storage call_stack: call.arg0 append value ['function dt.refill:test/test_refill/test_case_drop_item']
data modify storage call_stack: call.arg0 append value ['say waiting']
data modify storage call_stack: call.arg0 append value ['say waiting']
data modify storage call_stack: call.arg0 append value ['function dt.refill:test/test_refill/test_case_slot_refilled']
function unittest:api/test_suite/queue_and_teardown