function call_stack:push

data modify storage call_stack: this.result set value []

execute if data block ~ ~ ~ Items[{tag:{placeholder:0b}}] run data modify storage call_stack: this.result append from block ~ ~ ~ Items[{tag:{placeholder:0b}}]
execute if data block ~ ~ ~ Items[{tag:{placeholder:1b}}] run data modify storage call_stack: this.result append from block ~ ~ ~ Items[{tag:{placeholder:1b}}]
execute if data block ~ ~ ~ Items[{tag:{placeholder:2b}}] run data modify storage call_stack: this.result append from block ~ ~ ~ Items[{tag:{placeholder:2b}}]
execute if data block ~ ~ ~ Items[{tag:{placeholder:3b}}] run data modify storage call_stack: this.result append from block ~ ~ ~ Items[{tag:{placeholder:3b}}]
execute if data block ~ ~ ~ Items[{tag:{placeholder:4b}}] run data modify storage call_stack: this.result append from block ~ ~ ~ Items[{tag:{placeholder:4b}}]
execute if data block ~ ~ ~ Items[{tag:{placeholder:5b}}] run data modify storage call_stack: this.result append from block ~ ~ ~ Items[{tag:{placeholder:5b}}]
execute if data block ~ ~ ~ Items[{tag:{placeholder:6b}}] run data modify storage call_stack: this.result append from block ~ ~ ~ Items[{tag:{placeholder:6b}}]
execute if data block ~ ~ ~ Items[{tag:{placeholder:7b}}] run data modify storage call_stack: this.result append from block ~ ~ ~ Items[{tag:{placeholder:7b}}]
execute if data block ~ ~ ~ Items[{tag:{placeholder:8b}}] run data modify storage call_stack: this.result append from block ~ ~ ~ Items[{tag:{placeholder:8b}}]

function call_stack:pop