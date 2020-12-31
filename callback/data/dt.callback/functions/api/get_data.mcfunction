function call_stack:push

execute as @e[tag=callback_loc,distance=0..0.5,sort=nearest,limit=1] run function rx.playerdb:api/get_self
#execute as @e[tag=callback_loc,distance=0..0.5,sort=nearest,limit=1] run tellraw @p ["Data Pos: ",{"nbt":"Pos","entity":"@s"}]
execute as @e[tag=callback_loc,distance=0..0.5,sort=nearest,limit=1] run data modify storage call_stack: this.result set from storage rx:io playerdb.player.data.dt.callback

function call_stack:pop