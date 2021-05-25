#blocks you stand on
execute at @a as @a if block ~ ~-1 ~ minecraft:orange_concrete run effect give @p speed 1 6 true
execute at @a as @a if block ~ ~-1 ~ minecraft:brown_concrete run effect give @p slowness 1 3 true
execute at @a as @a if block ~ ~-1 ~ minecraft:purple_concrete run effect give @p levitation 4 7 true
execute at @a as @a if block ~ ~-1 ~ minecraft:gray_concrete run effect give @p blindness 4 127 true
execute at @a as @a if block ~ ~-1 ~ minecraft:yellow_concrete run effect give @p nausea 5 255 true

#blocks you fall on
execute at @a as @a if block ~ ~-1 ~ minecraft:light_blue_concrete if score @p fall matches 800.. run effect give @p jump_boost 3 12 true
execute at @a as @a if block ~ ~-1 ~ minecraft:light_blue_concrete if score @p fall matches 650..799 run effect give @p jump_boost 1 8 true
execute at @a as @a if block ~ ~-1 ~ minecraft:light_blue_concrete if score @p fall matches 550..649 run effect give @p jump_boost 1 5 true
execute at @a as @a if block ~ ~-1 ~ minecraft:light_blue_concrete if score @p fall matches 450..549 run effect give @p jump_boost 1 4 true
execute at @a as @a if block ~ ~-1 ~ minecraft:light_blue_concrete if score @p fall matches 300..449 run effect give @p jump_boost 1 3 true
execute at @a as @a if block ~ ~-1 ~ minecraft:light_blue_concrete if score @p fall matches ..299 run effect give @p jump_boost 1 2 true

#blocks with direction
execute at @a as @a if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run setblock ~ ~1 ~2 minecraft:pink_stained_glass keep
execute at @a as @a if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run setblock ~ ~1 ~-2 minecraft:pink_stained_glass keep
execute at @a as @a if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run setblock ~-2 ~1 ~ minecraft:pink_stained_glass keep
execute at @a as @a if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run setblock ~2 ~1 ~ minecraft:pink_stained_glass keep