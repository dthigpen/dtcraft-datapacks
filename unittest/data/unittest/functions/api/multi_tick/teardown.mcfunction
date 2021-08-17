# say multi_tick teardown 
data modify storage unittest:internal suite set from entity @s data.suite
function unittest:api/test_suite/teardown
kill @s