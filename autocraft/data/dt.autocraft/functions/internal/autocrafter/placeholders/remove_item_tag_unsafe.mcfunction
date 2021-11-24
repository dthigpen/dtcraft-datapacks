data remove storage call_stack: this.item.tag.dt_placeholder
execute store result score int1 dt.tmp run data get storage call_stack: this.item.tag
execute if score int1 dt.tmp matches 0 run data remove storage call_stack: this.item.tag