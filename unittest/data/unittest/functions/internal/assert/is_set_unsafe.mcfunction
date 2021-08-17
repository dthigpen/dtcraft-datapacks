
execute if data storage unittest:in actual run data modify storage unittest:out pass set value true
execute unless data storage unittest:in actual run data modify storage unittest:out fail set value true

# tellraw @p ["is_not_set.mcfunction: ",{"nbt":"actual","storage":"unittest:in"}]
# tellraw @p ["is_not_set.mcfunction: ",{"nbt":"pass","storage":"unittest:out"}]
# tellraw @p ["is_not_set.mcfunction: ",{"nbt":"fail","storage":"unittest:out"}]
