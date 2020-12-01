say removing tags from floating items

data remove entity @s Item.tag.dt_placeholder
data remove entity @s Item.tag.placeholder
execute store result score #has_tags dt.tmp run data get entity @s Item.tag
execute if score #has_tags dt.tmp matches 0 run data remove entity @s Item.tag