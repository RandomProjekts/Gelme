execute as @a[tag=brace] store result score @s nofall_velocity run data get entity @s Motion[1] 100

execute as @a[scores={nofall_velocity=..-60}] at @s unless block ~ ~-1 ~ #nofall:nonsolid run scoreboard players set @s nofall 2
execute as @a[scores={nofall_velocity=..-70}] at @s if block ~ ~-1 ~ #nofall:nonsolid unless block ~ ~-2 ~ #nofall:nonsolid run scoreboard players set @s nofall 2
execute as @a[scores={nofall_velocity=..-80}] at @s if block ~ ~-1 ~ #nofall:nonsolid if block ~ ~-2 ~ #nofall:nonsolid unless block ~ ~-3 ~ #nofall:nonsolid run scoreboard players set @s nofall 2
execute as @a[scores={nofall_velocity=..-90}] at @s if block ~ ~-1 ~ #nofall:nonsolid if block ~ ~-2 ~ #nofall:nonsolid if block ~ ~-3 ~ #nofall:nonsolid unless block ~ ~-4 ~ #nofall:nonsolid run scoreboard players set @s nofall 2
execute as @a[scores={nofall_velocity=..-100}] at @s if block ~ ~-1 ~ #nofall:nonsolid if block ~ ~-2 ~ #nofall:nonsolid if block ~ ~-3 ~ #nofall:nonsolid if block ~ ~-4 ~ #nofall:nonsolid unless block ~ ~-5 ~ #nofall:nonsolid run scoreboard players set @s nofall 2
execute as @a[scores={nofall_velocity=..-110}] at @s if block ~ ~-1 ~ #nofall:nonsolid if block ~ ~-2 ~ #nofall:nonsolid if block ~ ~-3 ~ #nofall:nonsolid if block ~ ~-4 ~ #nofall:nonsolid if block ~ ~-5 ~ #nofall:nonsolid unless block ~ ~-6 ~ #nofall:nonsolid run scoreboard players set @s nofall 2
execute as @a[scores={nofall_velocity=..-120}] at @s if block ~ ~-1 ~ #nofall:nonsolid if block ~ ~-2 ~ #nofall:nonsolid if block ~ ~-3 ~ #nofall:nonsolid if block ~ ~-4 ~ #nofall:nonsolid if block ~ ~-5 ~ #nofall:nonsolid if block ~ ~-6 ~ #nofall:nonsolid unless block ~ ~-7 ~ #nofall:nonsolid run scoreboard players set @s nofall 2
scoreboard players remove @a[scores={nofall=0..}] nofall 1
effect give @a[scores={nofall=1..}] slow_falling 1 100 true
effect clear @a[scores={nofall=0},nbt={ActiveEffects:[{Id:28b,Amplifier:100b}]}] slow_falling
