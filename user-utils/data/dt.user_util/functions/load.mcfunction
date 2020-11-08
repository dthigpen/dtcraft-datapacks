#say load user-storage

scoreboard players set $dt.user_util.version.major load 0
scoreboard players set $dt.user_util.version.minor load 1
scoreboard players set $dt.user_util.version.patch load 0

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1