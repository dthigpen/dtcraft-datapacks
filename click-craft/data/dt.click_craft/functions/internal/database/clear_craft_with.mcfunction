function call_stack:push

function dt.click_craft:internal/database/fetch_or_init
data modify storage call_stack: this.data set from storage call_stack: call.return
data modify storage call_stack: this.data.craft_with set value []
data modify storage call_stack: call.arg0 set from storage call_stack: this.data
function dt.click_craft:internal/database/save
function call_stack:pop