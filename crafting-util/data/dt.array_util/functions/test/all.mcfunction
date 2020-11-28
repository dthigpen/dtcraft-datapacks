function call_stack:push

scoreboard objectives add dt.tmp dummy
scoreboard players reset * dt.tmp
scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1

function dt.array_util:test/api/math/sum
function dt.array_util:test/api/concat
function dt.array_util:test/api/difference
function dt.array_util:test/api/n_array_of
function dt.array_util:test/api/split_by_key

function call_stack:pop