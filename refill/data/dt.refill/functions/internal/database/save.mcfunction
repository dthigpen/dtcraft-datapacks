function call_stack:push
data modify storage call_stack: this.data set from storage call_stack: this.arg0
function #rx.playerdb:api/v2/get/self
data modify storage rx.playerdb:io player.data.dtcraft.refill set from storage call_stack: this.data
function #rx.playerdb:api/v2/save/self
function call_stack:pop