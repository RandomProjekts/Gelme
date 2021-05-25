summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["checkpoint","uninitiated"]}
execute align xz run tp @e[tag=uninitiated,tag=checkpoint] @s
execute as @e[tag=uninitiated,tag=checkpoint] at @s align xz run tp @s ~.5 ~ ~.5
scoreboard players add @e[tag=center] check 1
scoreboard players operation @e[tag=uninitiated,tag=checkpoint] check = @e[tag=center] check
scoreboard players reset @a check
execute as @e[tag=uninitiated,tag=checkpoint] at @s if block ~ ~-1 ~ minecraft:air run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"[]","color":"red","bold":true,"italic":true}'}
tag @e[scores={check=1..},tag=uninitiated,tag=checkpoint] remove uninitiated
