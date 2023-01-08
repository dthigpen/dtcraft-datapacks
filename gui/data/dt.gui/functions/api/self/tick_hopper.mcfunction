#> dt.gui:api/self/tick_hopper
# Tick the current gui entity's hopper interactions
# @input
# @output
function call_stack:push
function dt.gui:internal/database/fetch_or_init
data modify storage call_stack: this.gui_data set from storage call_stack: call.return

execute if block ~ ~ ~ barrel positioned ~ ~-1 ~ if block ~ ~ ~ hopper[enabled=true] if data block ~ ~ ~ {TransferCooldown:0} run data modify storage call_stack: call.arg0 set from storage call_stack: this.gui_data.hopper.priority
execute if block ~ ~ ~ barrel positioned ~ ~-1 ~ if block ~ ~ ~ hopper[enabled=true] if data block ~ ~ ~ {TransferCooldown:0} run data modify storage call_stack: call.arg1 set from storage call_stack: this.gui_data.whitelist
execute if block ~ ~ ~ barrel positioned ~ ~-1 ~ if block ~ ~ ~ hopper[enabled=true] if data block ~ ~ ~ {TransferCooldown:0} run function dt.gui:internal/hopper/priority_pull

function call_stack:pop
