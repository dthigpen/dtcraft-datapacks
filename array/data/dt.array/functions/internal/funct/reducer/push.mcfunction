function dt.array:internal/funct/push_and_get_args
execute unless data storage call_stack: this.accumulator run data modify storage call_stack: this.accumulator set value [[],[]]
function dt.array:internal/funct/base_case/on_empty