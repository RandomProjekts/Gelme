#initiate center
summon armor_stand ~ ~-1 ~ {UUID:[I;0,0,0,0],CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["center"],CustomName:'{"text":"A_Center"}'}
summon armor_stand ~ ~1 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["title"],CustomName:'{"text":"Center","color":"dark_green","bold":true}'}


#scoreboard objectives
scoreboard objectives add assign trigger
scoreboard objectives add check dummy

#scoreboard players
scoreboard players set @e[tag=center] check 0
