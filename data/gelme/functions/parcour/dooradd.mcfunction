summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["door","uninitiated"]}
execute align xz run tp @e[tag=uninitiated,tag=door] @s
execute as @e[tag=uninitiated,tag=door] at @s align xz run tp @s ~.5 ~ ~.5
scoreboard players set @e[tag=uninitiated,tag=door] door 0
tag @e[distance=..1,tag=uninitiated,tag=door] remove uninitiated