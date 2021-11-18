function call_stack:push
data modify storage call_stack: this.config set from storage call_stack: this.arg0
setblock ~ ~ ~ minecraft:barrel replace
tag @s add dt_gui

function dt.gui:internal/database/fetch_or_init
tellraw @p ["barrel call.return: ",{"nbt":"call.return","storage":"call_stack:"}]

function call_stack:pop