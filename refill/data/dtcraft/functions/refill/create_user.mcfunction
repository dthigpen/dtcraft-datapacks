say create_user

data modify storage dtcraft:refill users prepend value {UUID:[],data:{refills:[]}}
data modify storage dtcraft:refill users[0].UUID set from entity @s UUID
data modify storage dtcraft:refill result set from storage dtcraft:refill users[0]

