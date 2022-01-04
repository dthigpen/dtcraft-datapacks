function #dt.custom_block:on_remove
execute unless data entity @s {Item:{tag:{hold:{destroy:false}}}} run function dt.custom_block:api/block/destroy