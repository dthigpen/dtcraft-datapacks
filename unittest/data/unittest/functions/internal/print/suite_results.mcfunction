tellraw @s ["Test Suite ",{"bold":true,"nbt":"suite.name","storage":"unittest:internal"}, " Results:"]
# scoreboard players reset $status unittest
execute if data storage unittest:internal suite.results[].results[] unless data storage unittest:internal suite.results[].results[{pass:false}] run scoreboard players operation $status unittest = #status.pass unittest
function unittest:internal/print/suite_results_loop