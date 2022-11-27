function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test give autocrafter item"

data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append value ['function dt.autocraft:test/client/test_give_autocrafter_item/tc_give_initial_item']
data modify storage call_stack: call.arg0 append value ['say waiting']
data modify storage call_stack: call.arg0 append value ['function dt.autocraft:test/client/test_give_autocrafter_item/tc_book_replaced']
# data modify storage call_stack: call.arg0 append value ['say waiting']
# data modify storage call_stack: call.arg0 append value ['function dt.refill:test/test_refill/tc_drop_item']
# data modify storage call_stack: call.arg0 append value ['say waiting']
# data modify storage call_stack: call.arg0 append value ['say waiting']
# data modify storage call_stack: call.arg0 append value ['function dt.refill:test/test_refill/tc_slot_refilled']
function unittest:api/test_suite/queue_and_teardown