#say tick unittest

execute as @e[type=marker,tag=unittest] run function unittest:internal/v1/multi_tick/tick
schedule function unittest:tick 1t replace