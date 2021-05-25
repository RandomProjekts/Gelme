 airtellraw @a {"text":"Started world setup","bold":false,"italic":true,"color":"green"}
#initiate center
#execute as @e[tag=center_height,limit=1] at @s run summon armor_stand ~ ~-1 ~ {UUID:[I;0,0,0,0],CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["center"],CustomName:'{"text":"A_Center"}'}
#execute as @e[tag=center_height,limit=1] at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["title"],CustomName:'{"text":"Center","color":"dark_green","bold":true}'}
#execute as @e[tag=center_height,limit=1] at @s run setworldspawn ~ ~2 ~

# new center initiation
summon armor_stand 0 1 0 {UUID:[I;0,0,0,0],CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["center"],CustomName:'{"text":"A_Center"}'}
setworldspawn 0 256 0
fill 0 1 0 0 2 0 air

# prepare storage
data modify storage gelme:data Items set value []

#scoreboard objectives
scoreboard objectives add door dummy
scoreboard objectives add button dummy
scoreboard objectives add assign trigger
scoreboard objectives add check dummy
scoreboard objectives add playerid dummy

scoreboard objectives add activations dummy
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add death deathCount "Deaths"
scoreboard objectives setdisplay sidebar death
function nofall:setup

#scoreboard players
scoreboard players set @e[tag=center] check 0


tellraw @a {"text":"world setup finished","bold":false,"italic":true,"color":"green"}
execute if entity @e[tag=center_height] run kill @e[tag=center_height]
