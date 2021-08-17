# execute if data storage unittest:internal suite.results[0]
execute if data storage unittest:internal suite.results[0] run function unittest:internal/print/case_results
data remove storage unittest:internal suite.results[0]
execute if data storage unittest:internal suite.results[0] run function unittest:internal/print/suite_results_loop