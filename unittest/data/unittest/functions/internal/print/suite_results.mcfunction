tellraw @s ["Test Suite ",{"bold":true,"nbt":"suite.name","storage":"unittest:internal"}, " Results:"]
scoreboard players reset $passed unittest
execute if data storage unittest:internal suite.results[].results[] unless data storage unittest:internal suite.results[].results[{pass:false}] run scoreboard players set $passed unittest 1
function unittest:internal/print/suite_results_loop