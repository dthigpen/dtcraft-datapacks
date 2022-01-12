#> dt.gui:api/self/init
# Initialize the current entity as a gui entity with the given configuration
# @params
#   storage call_stack: call.arg0
#       object config, see README for example
function call_stack:push
data modify storage call_stack: this.config set from storage call_stack: this.arg0

tag @s add dt_gui
execute if data storage call_stack: {this:{config:{tick:false}}} run tag @s add dt_gui_no_tick

function dt.gui:internal/database/fetch_or_init
data modify storage call_stack: this.data set from storage call_stack: call.return
data modify storage call_stack: this.data merge from storage call_stack: this.config
data modify storage call_stack: call.arg0 set from storage call_stack: this.data
function dt.gui:internal/database/save
function call_stack:pop