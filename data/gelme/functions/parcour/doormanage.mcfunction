execute at @e[tag=door] unless entity @a[distance=..4] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:redstone_block replace minecraft:acacia_planks
execute at @e[tag=door] if entity @a[distance=..4] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:acacia_planks replace minecraft:redstone_block
execute as @e[tag=door] at @s if entity @e[tag=button,tag=active] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:acacia_planks replace minecraft:redstone_block
execute as @e[tag=door] at @s if score @s door = open door run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:acacia_planks replace minecraft:redstone_block
execute as @e[tag=door] at @s if score @s door = close door run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:acacia_planks replace minecraft:redstone_block