#> dt.array:api/is_in_set
# Return if the given set contains the given value
# @deprecated
#   use the one at dt.array:api/helper/is_in_set
# @params
# @output
function call_stack:push

execute unless data storage call_stack: this.temp_return run data modify storage call_stack: call.temp_return set value []
function dt.array:internal/helper/funct/setup_two_args_unsafe
# actual function call
execute if data storage call_stack: this.continue run function dt.array:api/helper/is_in_set

execute if data storage call_stack: this.continue run function dt.array:internal/helper/funct/teardown_unsafe

execute if data storage call_stack: this.continue run function dt.array:api/is_in_set
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop