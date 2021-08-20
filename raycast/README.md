# Raycast
A utility datapack used for performing raycasts with configurable parameters.

## Usage
Open a `.mcfunction` file in your datapack where you want to perform a raycast.
```mcfunction
# your_funct.mcfunction

function dt.raycast:api/cast

execute as @e[predicate=dt.raycast:hit_markers] if score @s dt.raycast = $hit_id dt.raycast at @s run say do thing here
```

Optionally set the max distance that the raycast can travel.
```mcfunction
# your_funct.mcfunction

scoreboard players set $max_distance dt.raycast 6
function dt.raycast:api/cast

execute as @e[predicate=dt.raycast:hit_markers] if score @s dt.raycast = $hit_id dt.raycast at @s run say do thing here
```

The `execute as @e[predicate=dt.raycast:hit_markers] if score @s dt.raycast = $hit_id dt.raycast at @s` is necessary to identify the temporary entity created at the hit location. If the raycast does not hit anything then there should be no entity with teh `$hit_id` score and thus it will not trigger. If you only want to know if something was hit, you can use `execute if score @s dt.raycast matches 0.. run` since the `$hit_id` is assigned to the player has well.
