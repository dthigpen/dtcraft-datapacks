function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test sort no change to hotbar"
# tag as a tester so test cases can find player
tag @s add dt.tester
# TODO save inventory and load inventory after


data modify storage call_stack: call.arg0 set value []
data modify storage call_stack: call.arg0 append value ['function dt.inv_sort:test/client_test_no_sort_hotbar/test_cases/test_can_trigger']
data modify storage call_stack: call.arg0 append value ['function dt.inv_sort:test/client_test_no_sort_hotbar/test_cases/test_is_sorted']
data modify storage call_stack: call.arg0 append value ['tag @a remove dt.tester']
function unittest:api/test_suite/queue_and_teardown

