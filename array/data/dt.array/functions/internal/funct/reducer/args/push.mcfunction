#> dt.array:internal/funct/reducer/args/push
# Push a reducer scope and args to the stack
# @params
# @output
function dt.array:internal/funct/base/args/push
data modify storage call_stack: this.head set from storage call_stack: this.arg0[0]
data modify storage call_stack: this.tail set from storage call_stack: this.arg0
data remove storage call_stack: this.tail[0]
execute if data storage call_stack: this._private.accumulator run data modify storage call_stack: this.accumulator set from storage call_stack: this._private.accumulator