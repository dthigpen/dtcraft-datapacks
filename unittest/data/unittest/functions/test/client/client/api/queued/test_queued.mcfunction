function unittest:api/queued/test_suite/setup
data modify storage call_stack: this.name set value "Test queued tests"
data modify storage call_stack: this.queue set value []
# data modify storage call_stack: this.queue append value ""

data modify storage call_stack: this.queue append value ["function unittest:internal/queued/load_data_to_stack", "function unittest:api/queued/test_suite/setup"]
data modify storage call_stack: this.queue append value ["function unittest:internal/queued/load_data_to_stack","function unittest:test/api/queued/dummy_tests/1_test_foo"]

# data modify storage call_stack: this.queue append value "function unittest:test/api/queued/dummy_tests/2_test_bar"


function unittest:api/test_suite/teardown