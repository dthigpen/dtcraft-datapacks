#[[[cog
#   from pathlib import Path
#   from datapack_utils import writer, file_utils
#   for p in file_utils.get_parent_dir().glob('**/*.mcfunction'):
#       if 'test' in p.parts and p.name != Path(cog.inFile).name:
#           cog.outl(f'function {file_utils.path_to_datapack_path(p)}')
#   
#]]]
function dt.crafting:test/api/craft/test_from_items
function dt.crafting:test/api/crafter/distribute_items
function dt.crafting:test/api/crafter/balance_items
function dt.crafting:test/internal/get_free_slots
function dt.crafting:test/internal/ingredient/get_info_obj
function dt.crafting:test/internal/ingredient/items_to_slots
function dt.crafting:test/internal/model/ingredients/test_from_items
function dt.crafting:test/internal/recipe/result_to_item
function dt.crafting:test/internal/recipe/test_compress_shaped
function dt.crafting:test/internal/recipe/test_compress_shapeless
function dt.crafting:test/internal/cache/add_to_cache
function dt.crafting:test/internal/crafter/distribute_stack
function dt.crafting:test/internal/crafter/balance_numbers
function dt.crafting:test/internal/crafter/distribute_slots
function dt.crafting:test/internal/crafter/set_slots
#[[[end]]]