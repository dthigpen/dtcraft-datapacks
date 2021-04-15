# tellraw @p {"text":"deptree datapack loaded","color":"green"}
scoreboard players set $deptree.major load 0
scoreboard players set $deptree.minor load 1
scoreboard players set $deptree.patch load 0

data modify storage deptree: datapacks set value []
data modify storage deptree: temp set value {dependencies:[]}
data modify storage deptree:register info set value {}

# Load self
data modify storage deptree:register info set value {name:"deptree",major:0,minor:1,patch:0, dependencies:[]}
function deptree:register

data modify storage deptree:register info set value {}


