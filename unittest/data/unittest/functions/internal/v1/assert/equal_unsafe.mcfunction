data modify storage unittest:internal temp.expected set from storage unittest:in expected
data modify storage unittest:internal temp.actual set from storage unittest:in actual
data modify storage unittest:internal temp.not_equal set value true
execute if data storage unittest:internal temp.expected if data storage unittest:internal temp.actual run data modify storage unittest:internal temp.values_set set value true
execute if data storage unittest:internal temp.values_set run data modify storage unittest:internal temp.value set from storage unittest:internal temp.expected
execute if data storage unittest:internal temp.values_set store success storage unittest:internal temp.not_equal byte 1 run data modify storage unittest:internal temp.value set from storage unittest:internal temp.actual
execute unless data storage unittest:internal temp.values_set unless data storage unittest:internal temp.expected unless data storage unittest:internal temp.actual run data modify storage unittest:internal temp.not_equal set value false

execute if data storage unittest:internal {temp:{not_equal:false}} run data modify storage unittest:out pass set value true

# function unittest:internal/storage/clear/internal/temp