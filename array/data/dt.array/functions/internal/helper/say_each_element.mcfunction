function call_stack:push
function dt.array:api/foreach/start
execute if data storage call_stack: this._do run data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
execute if data storage call_stack: this._do run function dt.array:internal/helper/say_element
execute if data storage call_stack: this._do if data storage call_stack: {this:{arg0:222}} run say BAD NUM! EXITING
execute if data storage call_stack: this._do if data storage call_stack: {this:{arg0:222}} run data modify storage call_stack: this._break set value true
execute if data storage call_stack: this._do run function dt.array:api/foreach/end
execute if data storage call_stack: this._do run function dt.array:internal/helper/say_each_element

function call_stack:pop