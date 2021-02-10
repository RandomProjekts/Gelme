#blocks you stand on
execute at @a as @a if block ~ ~-1 ~ minecraft:light_blue_concrete run effect give @p jump_boost 1 5 true
execute at @a as @a if block ~ ~-1 ~ minecraft:orange_concrete run effect give @p speed 1 2 true
execute at @a as @a if block ~ ~-1 ~ minecraft:brown_concrete run effect give @p slowness 1 3 true
execute at @a as @a if block ~ ~-1 ~ minecraft:purple_concrete run effect give @p levitation 4 7 true
execute at @a as @a if block ~ ~-1 ~ minecraft:gray_concrete run effect give @p blindness 4 127 true
execute at @a as @a if block ~ ~-1 ~ minecraft:yellow_concrete run effect give @p nausea 5 255 true

#remove barrier
execute at @a as @a if block ~ ~-2 ~ minecraft:barrier run setblock ~ ~-2 ~ minecraft:air replace
execute at @a as @a if block ~1 ~-1 ~ minecraft:barrier run setblock ~1 ~-1 ~ minecraft:air replace
execute at @a as @a if block ~-1 ~-1 ~ minecraft:barrier run setblock ~-1 ~-1 ~ minecraft:air replace
execute at @a as @a if block ~ ~-1 ~1 minecraft:barrier run setblock ~ ~-1 ~1 minecraft:air replace
execute at @a as @a if block ~ ~-1 ~-1 minecraft:barrier run setblock ~ ~-1 ~-1 minecraft:air replace
execute at @a as @a if block ~ ~-1 ~ minecraft:barrier run setblock ~ ~-1 ~ minecraft:air replace

execute at @a as @a if block ~1 ~1 ~ minecraft:barrier run setblock ~1 ~1 ~ minecraft:air replace
execute at @a as @a if block ~-1 ~1 ~ minecraft:barrier run setblock ~-1 ~1 ~ minecraft:air replace
execute at @a as @a if block ~ ~1 ~1 minecraft:barrier run setblock ~ ~1 ~1 minecraft:air replace
execute at @a as @a if block ~ ~1 ~-1 minecraft:barrier run setblock ~ ~1 ~-1 minecraft:air replace

#look at blocks
execute at @a as @a if block ^ ^ ^1 minecraft:pink_glazed_terracotta run setblock ~ ~-1 ~ minecraft:barrier keep
execute at @a as @a if block ^ ^ ^-1 minecraft:pink_glazed_terracotta run setblock ~ ~-1 ~ minecraft:barrier keep

#blocks on the wall

#blocks with direction
execute at @a as @a if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run setblock ~ ~1 ~-1 minecraft:barrier keep
execute at @a as @a if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run setblock ~ ~1 ~-1 minecraft:barrier keep
execute at @a as @a if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run setblock ~1 ~1 ~ minecraft:barrier keep
execute at @a as @a if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run setblock ~-1 ~1 ~ minecraft:barrier keep


#checkpoint activate
execute as @e[tag=checkpoint] at @s if score @s check > @p[distance=..2] check run particle totem_of_undying ~ ~1 ~ 1 1 1 0.1 50 normal
execute as @e[tag=checkpoint] at @s run scoreboard players operation @p[distance=..2] check = @s check

#checkpoint back tp
execute at @a as @a if block ~ ~-1 ~ minecraft:black_concrete run tag @p add back
execute as @e[tag=checkpoint] at @e[tag=checkpoint] if score @s check = @a[tag=back,limit=1,sort=nearest] check run tp @a[tag=back,limit=1,sort=nearest] @s
execute as @e[tag=checkpoint] at @e[tag=checkpoint] run tag @p[distance=..2] remove back
