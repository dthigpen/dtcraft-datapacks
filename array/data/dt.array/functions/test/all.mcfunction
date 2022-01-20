function call_stack:push

scoreboard objectives add dt.tmp dummy
scoreboard players reset * dt.tmp
scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1

function dt.array:test/api/reduce/math/sum
function dt.array:test/api/concat
function dt.array:test/api/difference
function dt.array:test/api/n_array_of
function dt.array:test/api/split_by_key
function dt.array:test/api/test_split_half
function dt.array:test/api/sort/test_merge_sort
function dt.array:test/api/convert/test_to_key_values
function dt.array:test/api/test_index_of
function dt.array:test/api/test_pop_n
function dt.array:test/api/test_remove_n
function dt.array:test/api/test_trim_to_size


function call_stack:pop