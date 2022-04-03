function unittest:internal/v1/storage/clear/internal/temp

execute if data storage unittest:out {pass:true} run data modify storage unittest:internal temp.pass set value true
execute unless data storage unittest:out {pass:true} run data modify storage unittest:internal temp.pass set value false
data remove storage unittest:out fail
data remove storage unittest:out pass
execute if data storage unittest:internal {temp:{pass:true}} run data modify storage unittest:out fail set value true
execute if data storage unittest:internal {temp:{pass:false}} run data modify storage unittest:out pass set value true