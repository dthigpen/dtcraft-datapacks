function call_stack:push

data modify storage call_stack: this.numbers set from storage call_stack: this.arg0

execute store result score #length dt.tmp run data get storage call_stack: this.numbers
data modify storage call_stack: call.arg0 set from storage call_stack: this.numbers
function dt.array:api/math/sum
data modify storage call_stack: this.total set from storage call_stack: call.return
execute store result score #total dt.tmp run data get storage call_stack: this.total

# base = total / min(total, length)

# Min between the length and number total
scoreboard players operation #divisor dt.tmp = #length dt.tmp
scoreboard players operation #divisor dt.tmp < #total dt.tmp

scoreboard players operation #base dt.tmp = #total dt.tmp
scoreboard players operation #base dt.tmp /= #divisor dt.tmp
scoreboard players operation #partial dt.tmp = #base dt.tmp
scoreboard players add #partial dt.tmp 1

scoreboard players operation #remaining dt.tmp = #total dt.tmp
scoreboard players operation #remaining dt.tmp %= #divisor dt.tmp
scoreboard players operation #num_base dt.tmp = #divisor dt.tmp
scoreboard players operation #num_base dt.tmp -= #remaining dt.tmp

execute store result storage call_stack: call.arg0 byte 1 run scoreboard players get #remaining dt.tmp
execute store result storage call_stack: call.arg1 byte 1 run scoreboard players get #partial dt.tmp
function dt.array:api/n_array_of
data modify storage call_stack: this.partial_array set from storage call_stack: call.return

execute store result storage call_stack: call.arg0 byte 1 run scoreboard players get #num_base dt.tmp
execute store result storage call_stack: call.arg1 byte 1 run scoreboard players get #base dt.tmp
function dt.array:api/n_array_of
data modify storage call_stack: this.base_array set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.partial_array
data modify storage call_stack: call.arg1 set from storage call_stack: this.base_array
function dt.array:api/deprecated/concat
data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop