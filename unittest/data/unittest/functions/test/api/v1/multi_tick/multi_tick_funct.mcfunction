execute if entity @s[nbt={data:{suite:{name:"unique_name"}, tick:0}}] run function unittest:test/api/v1/multi_tick/on_tick_0
execute if entity @s[nbt={data:{suite:{name:"unique_name"}, tick:1}}] run function unittest:test/api/v1/multi_tick/on_tick_1
execute if entity @s[nbt={data:{suite:{name:"unique_name"}, tick:9}}] run function unittest:api/v1/multi_tick/teardown
