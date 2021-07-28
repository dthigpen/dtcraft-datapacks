function call_stack:push

function rx.playerdb:api/get_self

execute unless data storage rx:io playerdb.player.data.dtcraft.autocraft.recipes run data modify storage call_stack: this.result set value {recipes:[], name:"Autocrafter"}
execute if data storage rx:io playerdb.player.data.dtcraft.autocraft.recipes run data modify storage call_stack: this.result set from storage rx:io playerdb.player.data.dtcraft.autocraft
# Default cache.bad_items
execute unless data storage call_stack: this.result.cache.bad_items run data modify storage call_stack: this.result.cache.bad_items set value []
# Default successful recipes
execute unless data storage call_stack: this.result.cache.successful_recipes run data modify storage call_stack: this.result.cache.successful_recipes set value []
# Default recipes empty (for item specific crafters)
execute unless data storage call_stack: this.result.recipes run data modify storage call_stack: this.result.recipes set value []

function call_stack:pop