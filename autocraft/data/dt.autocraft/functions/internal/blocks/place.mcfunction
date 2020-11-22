

execute if entity @s[scores={dt.ac.placed=1..}] align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/place
execute if entity @s[scores={dt.ac.placed=0,dt.ac.offblock=1..}] align xyz positioned ~0.5 ~ ~0.5 run function dt.autocraft:internal/blocks/autocrafter/place
