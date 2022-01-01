
#> END
execute store result score #current_block dt.tmp run data get storage call_stack: this._block.current_block
scoreboard players remove #current_block dt.tmp 1
execute store result storage call_stack: this._block.current_block int 1 run scoreboard players get #current_block dt.tmp

execute if data storage call_stack: this._block.target_block store result score #target_block dt.tmp run data get storage call_stack: this._block.target_block
data remove storage call_stack: this._block.do
# execute the block if either:
# the target block has not been set
# or the current block is the target block
execute unless data storage call_stack: this._block.target_block run data modify storage call_stack: this._block.do set value true
execute if data storage call_stack: this._block.target_block if score #current_block dt.tmp = #target_block dt.tmp run data modify storage call_stack: this._block.do set value true