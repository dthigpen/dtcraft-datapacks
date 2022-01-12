# say sort chest

function call_stack:push

scoreboard players set $max_distance dt.raycast 6
function dt.raycast:api/cast
scoreboard players reset $sorted dt.inv_sort
execute as @e[predicate=dt.raycast:hit_markers] if score @s dt.raycast = $hit_id dt.raycast at @s as @a if score @s dt.raycast = $hit_id dt.raycast if data block ~ ~ ~ Items run function dt.inv_sort:internal/sort_block
execute unless score $sorted dt.inv_sort matches 1 run tellraw @s {"text":"Block is not a container","color":"dark_red"}

function call_stack:pop