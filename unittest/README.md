# Unittest

This datapack offers an api for testing functions. Additionally includes experimental multi-tick testing functionality.

## Installation

1. Use Lantern Load to load this datapack.

## Examples

Create a named test suite for grouping test cases and cleanly outputting the results. For example:

```mcfunction
# Setup the test suite
function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Test math/add"
# Now setup a test case
function unittest:api/test_case/setup
data modify storage call_stack: this.name set value "Test 1"
# call function
data modify storage call_stack: call.arg0 set value [-2,-1,0,1]
data modify storage call_stack: call.arg1 set value 1
function my_pack:api/math/add
# set the expected result (call.expected) and the actual (call.actual)
# then assert that they are equal
data modify storage call_stack: call.actual set from storage call_stack: call.return
data modify storage call_stack: call.expected set value [-1,0,1,2]
function unittest:api/assert/equal
function unittest:api/test_case/teardown

# ... more test_case blocks here

function unittest:api/test_suite/teardown
```
