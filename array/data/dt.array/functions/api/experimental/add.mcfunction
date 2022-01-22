

function dt.array:api/func/mapper/push
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.head
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1
execute if data storage call_stack: this.continue run function dt.array:api/helper/math/add
execute if data storage call_stack: this.continue run data modify storage call_stack: this.head set from storage call_stack: call.return
execute if data storage call_stack: this.continue run function dt.array:api/func/mapper/args/set
execute if data storage call_stack: this.continue run function dt.array:api/experimental/add
function dt.array:api/func/pop