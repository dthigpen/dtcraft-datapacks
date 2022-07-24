
function dt.inventory:api/player/items/inventory/get
data modify storage call_stack: this.player_inventory set from storage call_stack: call.return
function dt.inventory:api/player/items/hotbar/get
data modify storage call_stack: this.player_hotbar set from storage call_stack: call.return

#[[[cog
#   from pathlib import Path
#   from datapack_utils import file_utils
#   for p in file_utils.get_parent_dir().glob('**/*.mcfunction'):
#       if 'test' in p.parts and p.name != Path(cog.inFile).name:
#           cog.outl(f'function {file_utils.path_to_datapack_path(p)}')
#   
#]]]
function dt.inventory:test/api/test_loot_to_block
function dt.inventory:test/api/client_test_summon
function dt.inventory:test/api/test
function dt.inventory:test/api/item/from_id
function dt.inventory:test/api/item/id/test_get
function dt.inventory:test/api/item/id/tag/test_get
function dt.inventory:test/api/item/loot/test_insert
function dt.inventory:test/api/shulker/items/test_set_get
function dt.inventory:test/api/shulker/loot/insert/test_block
function dt.inventory:test/api/items/test_combine2
function dt.inventory:test/api/items/test_combine
function dt.inventory:test/api/items/ignore_test_decrement_count_balanced
function dt.inventory:test/api/items/ignore_test_take_balanced
function dt.inventory:test/api/items/id/test_get
function dt.inventory:test/api/items/id/tag/test_get
function dt.inventory:test/api/items/loot/test_insert
function dt.inventory:test/api/items/loot/block/test_insert
function dt.inventory:test/api/items/chest/test_set_get
function dt.inventory:test/api/player/slot/client_test_replace
function dt.inventory:test/api/player/slot/client_test_remove
function dt.inventory:test/api/player/item/client_test_take
function dt.inventory:test/api/player/items/client_test_replace
function dt.inventory:test/api/player/get/client_test_item
function dt.inventory:test/internal/items/ignore_test_take
function dt.inventory:test/internal/apply/test_count
#[[[end]]]
data modify storage call_stack: call.arg0 set from storage call_stack: this.player_inventory
function dt.inventory:api/player/items/inventory/replace
data modify storage call_stack: call.arg0 set from storage call_stack: this.player_hotbar
function dt.inventory:api/player/items/hotbar/replace