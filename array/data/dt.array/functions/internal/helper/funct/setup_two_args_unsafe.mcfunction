# implicitly use this.argN

# base case condition
#[[[cog
#   for i in range(0,2):
#       cog.outl(f'execute if data storage call_stack: this.arg{i} unless data storage call_stack: this.arg{i}[0] run data modify storage call_stack: this.empty_arg set value true')
#]]]
execute if data storage call_stack: this.arg0 unless data storage call_stack: this.arg0[0] run data modify storage call_stack: this.empty_arg set value true
execute if data storage call_stack: this.arg1 unless data storage call_stack: this.arg1[0] run data modify storage call_stack: this.empty_arg set value true
#[[[end]]]

execute unless data storage call_stack: this.empty_arg run data modify storage call_stack: this.continue set value true
# base case
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

# prep args
#[[[cog
#   for i in range(0,2):
#       cog.outl(f'execute if data storage call_stack: this.continue if data storage call_stack: this.arg{i} run data modify storage call_stack: call.arg{i} set from storage call_stack: this.arg{i}[0]')
#]]]
execute if data storage call_stack: this.continue if data storage call_stack: this.arg0 run data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0[0]
execute if data storage call_stack: this.continue if data storage call_stack: this.arg1 run data modify storage call_stack: call.arg1 set from storage call_stack: this.arg1[0]
#[[[end]]]
