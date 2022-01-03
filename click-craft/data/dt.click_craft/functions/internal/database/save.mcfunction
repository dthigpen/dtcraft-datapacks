function call_stack:push
data modify storage call_stack: this.data set from storage call_stack: this.arg0

data modify storage rx.playerdb:io player.data.dtcraft.click_craft set from storage call_stack: this.data
function #rx.playerdb:api/v2/save/self

function call_stack:pop