
scoreboard objectives add dt.tmp dummy
scoreboard players reset * dt.tmp
scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1

tellraw @p ["",{"text":"Internal tests"}]
function dt.crafting:test/internal/cache/add_to_cache
function dt.crafting:test/internal/crafter/distribute_stack
function dt.crafting:test/internal/crafter/distribute_slots
function dt.crafting:test/internal/crafter/balance_numbers
function dt.crafting:test/internal/crafter/set_slots
function dt.crafting:test/internal/get_free_slots
function dt.crafting:test/internal/ingredient/items_to_slots
function dt.crafting:test/internal/ingredient/get_info_obj
function dt.crafting:test/internal/group/filter_items_in_group

function dt.crafting:test/internal/recipe/test_resolve_tags
function dt.crafting:test/internal/recipe/result_to_item

tellraw @p ["",{"text":"API tests"}]
function dt.crafting:test/api/crafter/distribute_items
function dt.crafting:test/api/crafter/balance_items

function call_stack:pop