$scoreboard players set $(id).version.major load.status $(major)
$scoreboard players set $(id).version.minor load.status $(minor)
$scoreboard players set $(id).version.patch load.status $(patch)

# start off as successful
$scoreboard players set $(id) load.status 1