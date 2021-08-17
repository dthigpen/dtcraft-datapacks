
data remove storage unittest:internal temp.value
data modify storage unittest:internal temp.value set from storage unittest:in name
data modify storage unittest:internal temp.not_equal set value true
execute if data storage unittest:internal temp.value run data modify storage unittest:internal temp.values_set set value true
execute if data storage unittest:internal temp.values_set run data modify storage unittest:internal temp.value set from storage unittest:in name
execute if data storage unittest:internal temp.values_set store success storage unittest:internal temp.not_equal byte 1 run data modify storage unittest:internal temp.value set from entity @s data.name
say killed
execute if data storage unittest:internal {temp:{not_equal:false}} run kill @s