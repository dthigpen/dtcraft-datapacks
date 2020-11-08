
scoreboard players set #fail load 1
execute unless data storage load: temp.this.deps[{}] run scoreboard players set #fail load 0
#execute if data storage load: temp.this.deps[{}] unless data storage load: temp.datapacks[{}] run data modify storage load: temp.datapacks merge from storage load: datapacks
execute if data storage load: temp.this.deps[{}] if data storage load: temp.datapacks[{}] run data modify storage load: temp.value merge from storage load: temp.datapacks[0]
execute if data storage load: temp.this.deps[{}] if data storage load: temp.datapacks[{}] run execute store success score #fail load run data modify storage load: temp.value merge from storage load: temp.this.deps[0]

#execute if score #fail load matches 0 run say found dependency!
#execute if score #fail load matches 1 run say failed to find dep

# If failed to match pop first datapack
# If failed to match and no more datapacks, print failure
execute if score #fail load matches 1 if data storage load: temp.datapacks[{}] run data remove storage load: temp.datapacks[0]
execute if score #fail load matches 1 unless data storage load: temp.datapacks[{}] run tellraw @p ["",{"text":"Datapack ", "color":"dark_red"},{"nbt":"temp.this.name","storage":"load:"},{"text":" failed","color":"dark_red"},{"text":" to find ","color":"dark_red"},{"nbt":"temp.this.deps[0].name","storage":"load:"},{"text":" v"},{"nbt":"temp.this.deps[0].version.major","storage":"load:"},{"text":"."},{"nbt":"temp.this.deps[0].version.minor","storage":"load:"}]
# If success pop the dep
# TODO and the datapack
execute if score #fail load matches 0 unless data storage load: temp.this.deps[{}] run say Has no dependencies
execute if score #fail load matches 0 if data storage load: temp.this.deps[{}] run say found dependency!
execute if score #fail load matches 0 run data remove storage load: temp.this.deps[0]
execute if score #fail load matches 0 run data modify storage load: temp.datapacks set from storage load: datapacks

# loop while there are still deps and datapacks
execute if score #fail load matches 0 if data storage load: temp.this.deps[{}] run data modify storage load: datapacks append from storage load: temp.this
#execute if score #fail load matches 0 if data storage load: temp.this.deps[{}] run data modify storage load: temp.datapacks set from storage load: datapacks
execute if data storage load: temp.this.deps[{}] if data storage load: temp.datapacks[{}] run function dt.refill:check_deps