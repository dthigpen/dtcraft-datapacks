
tellraw @p [{"text":"Value: "},{"score":{"name":"$test","objective":"dt.tmp"}}]
execute if score $test dt.tmp matches 0 run schedule function dt.callback:test/test_schedule 1t
execute if score $test dt.tmp matches 0 run scoreboard players add $test dt.tmp 1
