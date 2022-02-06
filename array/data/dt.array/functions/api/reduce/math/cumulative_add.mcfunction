
data modify storage call_stack: call.accumulator set value []
function dt.array:api/func/reducer/push
# arg1 = amount
# arg2 = max
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.head
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.arg2
execute if data storage call_stack: this.continue run tellraw @p ["cumulative_addAA call: ",{"nbt":"call","storage":"call_stack:"}]
execute if data storage call_stack: this.continue run function dt.array:api/helper/math/add_with_max
execute if data storage call_stack: this.continue run tellraw @p ["cumulative_addAA call.return: ",{"nbt":"call.return","storage":"call_stack:"}]
execute if data storage call_stack: this.continue run data modify storage call_stack: this.accumulator append from storage call_stack: call.return[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: this.arg1 set value 0
execute if data storage call_stack: this.continue if data storage call_stack: call.return[1] run data modify storage call_stack: this.arg1 set from storage call_stack: call.return[1]
execute if data storage call_stack: this.continue unless data storage call_stack: call.return[1] run data modify storage call_stack: this.accumulator append from storage call_stack: this.tail[]
execute if data storage call_stack: this.continue unless data storage call_stack: call.return[1] run data modify storage call_stack: this.tail set value []
execute if data storage call_stack: this.continue unless data storage call_stack: this.tail[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue unless data storage call_stack: this.tail[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg2
execute if data storage call_stack: this.continue unless data storage call_stack: this.tail[0] run tellraw @p ["cumulative_add call: ",{"nbt":"call","storage":"call_stack:"}]
execute if data storage call_stack: this.continue unless data storage call_stack: this.tail[0] run function dt.array:api/helper/math/to_sum_components
execute if data storage call_stack: this.continue unless data storage call_stack: this.tail[0] run tellraw @p ["cumulative_add call.return: ",{"nbt":"call.return","storage":"call_stack:"}]
execute if data storage call_stack: this.continue unless data storage call_stack: this.tail[0] run data modify storage call_stack: this.accumulator append from storage call_stack: call.return[]
execute if data storage call_stack: this.continue unless data storage call_stack: this.tail[0] run data modify storage call_stack: this.tail set value []

execute if data storage call_stack: this.continue run function dt.array:api/func/reducer/args/set
execute if data storage call_stack: this.continue run function dt.array:api/reduce/math/cumulative_add
function dt.array:api/func/pop