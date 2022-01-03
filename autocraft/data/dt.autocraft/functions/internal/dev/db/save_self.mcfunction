function call_stack:push

function #rx.playerdb:api/v2/get/self
data modify storage rx.playerdb:io player.data.dtcraft.test set value {foo:true,bar:123}
function #rx.playerdb:api/v2/save/self

function call_stack:pop