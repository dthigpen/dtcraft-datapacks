function call_stack:push

function #rx.playerdb:api/v2/get/self
tellraw @p ["get_self playerdb.player.data: ",{"nbt":"playerdb.player.data","storage":"rx:io"}]
function call_stack:pop