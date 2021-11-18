scoreboard players reset $success dt.tmp
execute positioned ~ ~-1 ~ store success score $success dt.tmp run data remove block ~ ~ ~ Items[{tag:{dt_gui:{placeholder:1b}}}]
execute positioned ~ ~-1 ~ if score $success dt.tmp matches 1 run data modify block ~ ~ ~ TransferCooldown set value 0