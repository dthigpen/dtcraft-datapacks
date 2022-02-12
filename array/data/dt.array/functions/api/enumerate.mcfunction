function call_stack:push
data modify storage call_stack: this.start set from storage call_stack: this.arg0
data modify storage call_stack: this.stop set from storage call_stack: this.arg1
data modify storage call_stack: this.step set value 1
data modify storage call_stack: this.step set from storage call_stack: this.arg2
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value []

execute store result score $start dt.tmp run data get storage call_stack: this.start
execute store result score $stop dt.tmp run data get storage call_stack: this.stop
execute store result score $step dt.tmp run data get storage call_stack: this.step

# base case

execute if score $step dt.tmp matches 1.. if score $start dt.tmp < $stop dt.tmp run data modify storage call_stack: this.continue set value true
execute if score $step dt.tmp matches ..-1 if score $start dt.tmp > $stop dt.tmp run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return append value -1
execute if data storage call_stack: this.continue store result storage call_stack: this.temp_return[-1] int 1 run scoreboard players get $start dt.tmp
execute if data storage call_stack: this.continue run scoreboard players operation $start dt.tmp += $step dt.tmp

execute if data storage call_stack: this.continue store result storage call_stack: call.arg0 int 1 run scoreboard players get $start dt.tmp
execute if data storage call_stack: this.continue store result storage call_stack: call.arg1 int 1 run scoreboard players get $stop dt.tmp
execute if data storage call_stack: this.continue store result storage call_stack: call.arg2 int 1 run scoreboard players get $step dt.tmp
data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.array:api/enumerate
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop