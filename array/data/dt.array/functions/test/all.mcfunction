#[[[cog
#   from pathlib import Path
#   from datapack_utils import writer, file_utils
#   for p in file_utils.get_parent_dir().glob('**/*.mcfunction'):
#       if 'test' in p.parts and p.name != Path(cog.inFile).name:
#           cog.outl(f'function {file_utils.path_to_datapack_path(p)}')
#   
#]]]
function dt.array:test/api/test_remove_n
function dt.array:test/api/test_group_by
function dt.array:test/api/test_enumerate
function dt.array:test/api/difference
function dt.array:test/api/test_unique
function dt.array:test/api/test_pop_n
function dt.array:test/api/test_trim_to_size
function dt.array:test/api/test_index_of
function dt.array:test/api/n_array_of
function dt.array:test/api/test_split_half
function dt.array:test/api/map/type/test_to_int
function dt.array:test/api/map/type/test_to_byte
function dt.array:test/api/map/key_value/test_from_keys_and_values
function dt.array:test/api/map/key_value/test_to_values
function dt.array:test/api/map/key_value/subarray/test_to_values
function dt.array:test/api/map/math/test_add
function dt.array:test/api/map/math/test_subtract
function dt.array:test/api/reduce/subarray/test_on_index
function dt.array:test/api/reduce/subarray/test_equal
function dt.array:test/api/reduce/subarray/test_greater_than
function dt.array:test/api/reduce/set/test_value_difference
function dt.array:test/api/reduce/math/test_sum
function dt.array:test/api/reduce/math/test_are_all_greater_than
function dt.array:test/api/math/test_cumulative_add
function dt.array:test/api/math/test_cumulative_subtract_min_0
function dt.array:test/api/helper/math/test_to_sum_components
function dt.array:test/api/helper/math/test_add_with_max
function dt.array:test/api/sort/test_merge_sort
function dt.array:test/api/split/test_matching_sets
function dt.array:test/api/split/test_in_set3
function dt.array:test/api/split/test_in_set
function dt.array:test/api/split/test_greater_than
function dt.array:test/api/split/test_in_set_unique
function dt.array:test/api/split/test_can_map_values_to_sets
#[[[end]]]
