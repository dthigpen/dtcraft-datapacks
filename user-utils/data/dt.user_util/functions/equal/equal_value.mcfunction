#say equal/equal_value
function call_stack:push

data modify storage call_stack: this.val1 set from storage call_stack: this.arg0
data modify storage call_stack: this.val2 set from storage call_stack: this.arg1

execute store success score result dt.tmp run data modify storage call_stack: this.val1 set from storage call_stack: this.val2
execute if score result dt.tmp = #equal dt.enum run data modify storage call_stack: this.result set value true
execute if score result dt.tmp = #not_equal dt.enum run data modify storage call_stack: this.result set value false
function call_stack:pop