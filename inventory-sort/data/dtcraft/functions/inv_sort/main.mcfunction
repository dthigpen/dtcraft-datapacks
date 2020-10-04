function dtcraft:call_stack/push
execute as @a[scores={dt.sort=1..}] run function dtcraft:inv_sort/sort
scoreboard players reset @a dt.sort
scoreboard players enable @a dt.sort

function dtcraft:call_stack/pop