#checkpoint activate
execute as @e[tag=checkpoint] at @s unless score @s check = @p[distance=..2] check run function gelme:parcour/checkpoints/checkpointactivate

#checkpoint deactivate
execute as @e[tag=checkpoint,tag=deactivated] at @s unless block ~ ~-1 ~ minecraft:air run setblock ~ ~-1 ~ minecraft:iron_block
execute as @e[tag=checkpoint,tag=deactivated] at @s if block ~ ~-1 ~ minecraft:air run data merge entity @s {CustomName:'{"text":"[]","color":"red","bold":true,"italic":true}'}
tag @e[tag=checkpoint,tag=deactivated] remove deactivated

#checkpoint back tp
execute at @a as @a if block ~ ~-1 ~ minecraft:black_concrete run tag @p add back
execute as @e[tag=checkpoint] at @s if score @s check = @a[tag=back,limit=1,sort=nearest] check run tp @a[tag=back,limit=1,sort=nearest] @s
scoreboard players add @a[tag=back,limit=1,sort=nearest] death 1
execute as @a[tag=back,limit=1,sort=nearest] at @s run function gelme:main/item-management/loaditems
execute as @e[tag=checkpoint] at @e[tag=checkpoint] run tag @p[distance=..2] remove back