function call_stack:push
function dt.gui:internal/database/fetch_or_init
data modify storage call_stack: this.gui_data set from storage call_stack: call.return

# execute unless block ~ ~ ~ barrel run kill @s
execute if block ~ ~ ~ barrel run data modify storage call_stack: call.arg0 set from storage call_stack: this.gui_data
execute if block ~ ~ ~ barrel run function dt.gui:internal/gui_block/update_gui
# execute if block ~ ~ ~ barrel positioned ~ ~-1 ~ if block ~ ~ ~ hopper[enabled=true] run data modify storage call_stack: call.arg0 set from storage call_stack: this.gui_data
# execute if block ~ ~ ~ barrel positioned ~ ~-1 ~ if block ~ ~ ~ hopper[enabled=true] if data block ~ ~ ~ {TransferCooldown:0} run function dt.gui:internal/hopper/priority_pull_unsafe

function call_stack:pop
