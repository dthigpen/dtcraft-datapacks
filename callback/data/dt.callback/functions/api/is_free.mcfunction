function call_stack:push
execute store result storage call_stack: this.result byte 1 run execute if score $ptr_y dt.callback < $ptr_y_max dt.callback
function call_stack:pop