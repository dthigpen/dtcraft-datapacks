function call_stack:push

function rx.playerdb:api/get_self

data modify storage call_stack: this.data set value {recipes:[], name:'{"text":"Autocrafter"}', is_item_specific:false}

data modify storage call_stack: this.data set from storage rx:io playerdb.player.data.dtcraft.autocraft

data modify storage call_stack: this.return set from storage call_stack: this.data

function call_stack:pop