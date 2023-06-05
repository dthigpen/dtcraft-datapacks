# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
function #rx.playerdb:api/v2/get/self
data modify storage rx.playerdb:io player.data.dtcraft.refill set from storage call_stack: this.arg0
function #rx.playerdb:api/v2/save/self
function call_stack:pop
