function dt.array:api/iter/_setup_iter_block_unsafe

tellraw @p ["n_times this: ",{"nbt":"this","storage":"call_stack:"}]

scoreboard players reset #loop_current dt.tmp
scoreboard players reset #loop_max dt.tmp

execute if data storage call_stack: this._block.do store result score #loop_current dt.tmp run data get storage call_stack: this._iter.iter_array.readonly.value.curr
execute if data storage call_stack: this._block.do run scoreboard players add #loop_current dt.tmp 1
execute if data storage call_stack: this._block.do store result score #loop_max dt.tmp run data get storage call_stack: this._iter.iter_array.readonly.value.max
execute if data storage call_stack: this._block.do if score #loop_current dt.tmp > #loop_max dt.tmp run data remove storage call_stack: this._block.do
execute if data storage call_stack: this._block.do store result storage call_stack: this._iter.iter_array.prev[-1].curr int 1 run scoreboard players get #loop_current dt.tmp
execute if data storage call_stack: this._block.do store result storage call_stack: this._iter.iter_array.readonly.value.curr int 1 run scoreboard players get #loop_current dt.tmp

execute if data storage call_stack: this._block.do run tellraw @p ["test_iter iter ",{"nbt":"this._iter.iter_array.prev[-1].curr","storage":"call_stack:"}, " of ", {"nbt":"this._iter.iter_array.prev[-1].max","storage":"call_stack:"}]
