particle totem_of_undying ~ ~1 ~ 1 1 1 0.1 50 normal
playsound entity.experience_orb.pickup master @a ~ ~ ~
title @p[distance=..2] title {"text":"Checkpoint","bold":true,"italic":true,"color":"dark_green"}
title @p[distance=..2] subtitle {"text":"activated","bold":true,"italic":true,"color":"green"}
spawnpoint @p[distance=..2] ~ ~ ~
execute unless block ~ ~-1 ~ minecraft:air run setblock ~ ~-1 ~ minecraft:gold_block 
execute if block ~ ~-1 ~ minecraft:air run data merge entity @s {CustomName:'{"text":"[#]","color":"green","bold":true,"italic":false}'}
scoreboard players operation @p[distance=..2] check = @s check
forceload add ~ ~
function gelme:parcour/checkpoints/update
execute as @p[distance=..2] at @s run function gelme:main/item-management/saveitems