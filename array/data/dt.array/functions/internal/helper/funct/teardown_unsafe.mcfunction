data modify storage call_stack: this.temp_return append from storage call_stack: call.return

#[[[cog
#   for i in range(0,2):
#       cog.outl(f'execute if data storage call_stack: this.arg{i} run data remove storage call_stack: this.arg{i}[0]')
#]]]
execute if data storage call_stack: this.arg0 run data remove storage call_stack: this.arg0[0]
execute if data storage call_stack: this.arg1 run data remove storage call_stack: this.arg1[0]
#[[[end]]]

# set args for next iteration
data modify storage call_stack: call merge from storage call_stack: this
data remove storage call_stack: call.continue
