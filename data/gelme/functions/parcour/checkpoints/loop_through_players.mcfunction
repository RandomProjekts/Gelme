tag @a[limit=1,sort=random,tag=!looped] add looping
execute as @e[tag=checkpoint] if score @a[tag=looping,limit=1] check = @s check run scoreboard players add @s activations 1
tag @a[limit=1,sort=random,tag=looping] add looped
tag @a[limit=1,sort=random,tag=looping] remove looping
execute if entity @a[tag=!looped] run function gelme:parcour/checkpoints/loop_through_players
tag @a remove looped