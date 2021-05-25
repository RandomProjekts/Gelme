execute as @e[tag=checkpoint,limit=1,sort=nearest] at @s unless block ~ ~-1 ~ minecraft:air run setblock ~ ~-1 ~ minecraft:quartz_block
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 .1
kill @e[tag=checkpoint,limit=1,sort=nearest]
forceload remove ~ ~