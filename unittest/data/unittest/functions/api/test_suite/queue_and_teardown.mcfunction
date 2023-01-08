#> unittest:api/test_suite/queue_and_teardown
# Queues the test suite to be executed in the future, then tears it down once its finished.
# Should only be called as the last function in the test suite since it pop's the test case scope

scoreboard players operation $status unittest = #status.running_multi unittest

data modify storage call_stack: call.arg0 append value ['function unittest:api/test_suite/teardown']
function dt.callback:internal/multi/wrap_commands_sets
data modify storage call_stack: call.arg0 set from storage call_stack: call.return
data modify storage call_stack: call.arg1.dt.callback.frame set from storage call_stack: this
function dt.callback:api/multi_queue

function call_stack:pop