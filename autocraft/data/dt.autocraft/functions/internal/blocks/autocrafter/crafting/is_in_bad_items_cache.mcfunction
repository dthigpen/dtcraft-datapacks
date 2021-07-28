# TODO implement actual cache
function call_stack:push
data modify storage call_stack: this.bad_items set from storage call_stack: this.arg0
data modify storage call_stack: this.items set from storage call_stack: this.arg1

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.crafting:internal/ingredient/get_info_obj
data modify storage call_stack: this.info_obj set from storage call_stack: call.result

data modify storage call_stack: call.arg0 set from storage call_stack: this.cache.bad_items
data modify storage call_stack: call.arg1 set from storage call_stack: this.info_obj
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/split_by_key_limit_n

# if the result of matches is nonempty
data modify storage call_stack: this.result set value false
execute if data storage call_stack: call.result[0][0] run data modify storage call_stack: this.result set value true

function call_stack:pop