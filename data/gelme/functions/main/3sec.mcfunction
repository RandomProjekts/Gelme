schedule function gelme:main/3sec 3s
execute at @a as @a if block ~ ~-1 ~ minecraft:chiseled_quartz_block run particle block chiseled_quartz_block ~ ~ ~ 0 0 0 1 20 normal
execute at @a as @a if block ~ ~-1 ~ minecraft:chiseled_quartz_block run playsound block.stone.break master @a ~ ~-1 ~
execute at @a as @a if block ~ ~-1 ~ minecraft:chiseled_quartz_block run fill ~10 ~-1 ~10 ~-10 ~-1 ~-10 minecraft:air replace minecraft:chiseled_quartz_block

execute at @a as @a if block ~ ~-1 ~ minecraft:smooth_quartz run particle block smooth_quartz ~ ~ ~ 0 0 0 1 20 normal
execute at @a as @a if block ~ ~-1 ~ minecraft:smooth_quartz run playsound block.stone.break master @a ~ ~-1 ~
execute at @a as @a if block ~ ~-1 ~ minecraft:smooth_quartz run fill ~10 ~-1 ~10 ~-10 ~-1 ~-10 minecraft:chiseled_quartz_block replace minecraft:smooth_quartz


scoreboard players set @a fall 0