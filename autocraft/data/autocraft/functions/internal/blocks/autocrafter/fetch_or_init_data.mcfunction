function call_stack:push

function rx.playerdb:api/get_self
execute unless data storage rx:io playerdb.player.data.recipes run data modify storage rx:io playerdb.player.data.recipes set value []
data modify storage call_stack: this.result set from storage rx:io playerdb.player.data.recipes
function call_stack:pop