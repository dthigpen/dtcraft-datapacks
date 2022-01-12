#> dt.gui:api/self/tick
# Tick the current gui entity
function call_stack:push
function dt.gui:internal/database/fetch_or_init
data modify storage call_stack: this.gui_data set from storage call_stack: call.return

execute unless block ~ ~ ~ barrel run tag @s add dt_gui_kill
execute if block ~ ~ ~ barrel run data modify storage call_stack: call.arg0 set from storage call_stack: this.gui_data
execute if block ~ ~ ~ barrel run function dt.gui:internal/gui_block/update_gui

function call_stack:pop
