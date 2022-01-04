# Unittest

This datapack offers an api for testing functions. Additionally includes experimental multi-tick testing functionality.

## Installation

1. Use Lantern Load to load this datapack.

## Examples
Create a named test suite for grouping test cases and cleanly outputing the results.

```mcfunction
data modify storage unittest:in name set value "My Suite Name"
function unittest:api/test_suite/setup

data modify storage unittest:in name set value "My Testcase Name"
function unittest:api/test_case/setup

data modify storage unittest:in expected set value -1
data modify storage unittest:in actual set value 1
function unittest:api/assert/equal

function unittest:api/test_case/teardown
function unittest:api/test_suite/teardown
```
