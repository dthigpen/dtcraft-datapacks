
execute as @a[scores={dt.refill.setup=3..}] run function dt.refill:settings/change_setting
execute as @a[scores={dt.refill.setup=1..}] run function dt.refill:show_settings

scoreboard players reset @a dt.refill.setup
scoreboard players enable @a dt.refill.setup