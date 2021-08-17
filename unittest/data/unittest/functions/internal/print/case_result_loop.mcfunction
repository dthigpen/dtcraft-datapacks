# execute if data storage unittest:internal suite.results[0].results[0]
data remove storage unittest:internal temp.result
execute if data storage unittest:internal suite.results[0].results[0] run data modify storage unittest:internal temp.result set from storage unittest:internal suite.results[0].results[0]
execute if data storage unittest:internal {temp:{result:{pass:true}}} run tellraw @p ["    ",{"text":"Pass: ","color":"dark_green"},{"nbt":"temp.result.msg","storage":"unittest:internal", "interpret": true}]
execute unless data storage unittest:internal {temp:{result:{pass:true}}} run tellraw @p ["    ",{"text":"Fail: ","color":"dark_red"},{"nbt":"temp.result.msg","storage":"unittest:internal", "interpret": true}]

data remove storage unittest:internal suite.results[0].results[0]
execute if data storage unittest:internal suite.results[0].results[0] run function unittest:internal/print/case_result_loop