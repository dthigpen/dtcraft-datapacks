function call_stack:push
data modify storage call_stack: this.data set from storage call_stack: this.arg0
function rx.playerdb:api/get_self
data modify storage rx:io playerdb.player.data.dtcraft.crafting set from storage call_stack: this.data
function rx.playerdb:api/save_self

function call_stack:pop