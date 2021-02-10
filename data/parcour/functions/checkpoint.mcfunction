summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,PersistenceRequired:1b,Invisible:1b,Tags:["checkpoint","uninitiated"]}
scoreboard players add @e[tag=center] check 1
scoreboard players operation @e[tag=uninitiated] check = @e[tag=center] check
tag @e[scores={check=1..},tag=uninitiated] remove uninitiated