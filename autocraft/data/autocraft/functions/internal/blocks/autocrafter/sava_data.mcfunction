function call_stack:push
data modify storage call_stack: this.cached_recipes set from storage call_stack: this.arg0
function rx.playerdb:api/get_self
data modify storage rx:io playerdb.player.data.recipes set from storage call_stack: this.cached_recipes
function rx.playerdb:api/save_self

function call_stack:pop