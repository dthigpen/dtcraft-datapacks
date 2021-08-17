say hello

execute if entity @s[nbt={data:{name:"unique_name", tick:0}}] run function unittest:test/api/multi_tick/on_tick_0
execute if entity @s[nbt={data:{name:"unique_name", tick:1}}] run function unittest:test/api/multi_tick/on_tick_1
execute if entity @s[nbt={data:{name:"unique_name", tick:9}}] run function unittest:api/multi_tick/teardown
