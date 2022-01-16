tellraw @s ["Test Suite ",{"bold":true,"nbt":"suite.name","storage":"unittest:internal"}, " Results:"]
execute if data storage unittest:internal suite.results[].results[{pass:false}] run say Test suite failed
function unittest:internal/print/suite_results_loop