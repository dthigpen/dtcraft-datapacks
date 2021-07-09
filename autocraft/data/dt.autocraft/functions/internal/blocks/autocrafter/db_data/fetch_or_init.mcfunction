function call_stack:push

function rx.playerdb:api/get_self

execute unless data storage rx:io playerdb.player.data.dtcraft.autocraft.recipes run data modify storage call_stack: this.result set value {recipes:[], name:"Autocrafter"}
execute if data storage rx:io playerdb.player.data.dtcraft.autocraft.recipes run data modify storage call_stack: this.result set from storage rx:io playerdb.player.data.dtcraft.autocraft

function call_stack:pop