function call_stack:push

scoreboard objectives add dt.tmp dummy
scoreboard players reset * dt.tmp
scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1

tellraw @p ["",{"text":"Internal tests"}]
function dt.crafting_util:test/internal/cache/add_to_cache
function dt.crafting_util:test/internal/crafter/distribute_stack
function dt.crafting_util:test/internal/get_free_slots
function dt.crafting_util:test/internal/array/split_by_key
function dt.crafting_util:test/internal/array/difference
function dt.crafting_util:test/internal/array/concat
function dt.crafting_util:test/internal/ingredient/items_to_slots
function dt.crafting_util:test/internal/ingredient/get_info_obj
function dt.crafting_util:test/internal/group/filter_items_in_group

#function dt.crafting_util:test/internal/recipe/test_resolve_tags

tellraw @p ["",{"text":"API tests"}]
function dt.crafting_util:test/api/crafter/distribute_slots
function dt.crafting_util:test/api/recipe/find

function call_stack:pop