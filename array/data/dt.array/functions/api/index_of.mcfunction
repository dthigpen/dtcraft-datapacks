#> dt.array:api/index_of
# get the index of a value in an array
# @params
#   storage call_stack: call.arg0
#       array
#   storage call_stack: call.arg1
#       value
# @output
#   storage call_stack: call.return
#       index of item in array or -1 if not found
function call_stack:push
data modify storage call_stack: this.array set from storage call_stack: this.arg0
data modify storage call_stack: this.value set from storage call_stack: this.arg1
execute unless data storage call_stack: this._started run scoreboard players set #index dt.tmp 0
execute unless data storage call_stack: this._started run data modify storage call_stack: this._started set value true

data modify storage call_stack: this.return set value -1
execute if data storage call_stack: this.array[0] if data storage call_stack: this.value store success storage call_stack: this.changed byte 1 run data modify storage call_stack: this.temp set from storage call_stack: this.array[0]
execute if data storage call_stack: this.array[0] if data storage call_stack: this.value store success storage call_stack: this.changed byte 1 run data modify storage call_stack: this.temp set from storage call_stack: this.value
execute if data storage call_stack: this.array[0] if data storage call_stack: this.value unless data storage call_stack: {this:{changed:true}} store result storage call_stack: this.return int 1 run scoreboard players get #index dt.tmp

execute if data storage call_stack: {this:{changed:true}} run scoreboard players add #index dt.tmp 1
execute if data storage call_stack: {this:{changed:true}} run data remove storage call_stack: this.array[0]
execute if data storage call_stack: {this:{changed:true}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.array
execute if data storage call_stack: {this:{changed:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.value
execute if data storage call_stack: {this:{changed:true}} run data modify storage call_stack: call._started set from storage call_stack: this._started
execute if data storage call_stack: {this:{changed:true}} run function dt.array:api/index_of
execute if data storage call_stack: {this:{changed:true}} run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop