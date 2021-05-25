tag @s add saveinv
execute as @e[tag=Itemsave] at @s if score @a[tag=saveinv,limit=1,sort=nearest] playerid = @s playerid run data modify entity @s Items set value []
execute as @e[tag=Itemsave] at @s if score @a[tag=saveinv,limit=1,sort=nearest] playerid = @s playerid run kill @s

summon minecraft:chest_minecart 0 1 0 {PersistenceRequired:1b,NoGravity:1b,Tags:["Itemsave", "uninitiated", "first"]}
#chest filled with placeholders
summon chest_minecart 0 1 0 {NoGravity:1b,Invulnerable:1b,Tags:["Itemsave","uninitiated","second"],Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b,tag:{placeholder:1b}},{Slot:1b,id:'minecraft:structure_void',Count:1b,tag:{placeholder:1b}},{Slot:2b,id:'minecraft:structure_void',Count:1b,tag:{placeholder:1b}},{Slot:3b,id:'minecraft:structure_void',Count:1b,tag:{placeholder:1b}},{Slot:18b,id:'minecraft:structure_void',Count:1b,tag:{placeholder:1b}},{Slot:9b,id:"minecraft:structure_void",Count:1b,tag:{placeholder:1b}},{Slot:10b,id:'minecraft:structure_void',Count:1b,tag:{placeholder:1b}},{Slot:11b,id:'minecraft:structure_void',Count:1b,tag:{placeholder:1b}},{Slot:12b,id:'minecraft:structure_void',Count:1b,tag:{placeholder:1b}},{Slot:13b,id:'minecraft:structure_void',Count:1b,tag:{placeholder:1b}},{Slot:14b,id:'minecraft:structure_void',Count:1b,tag:{placeholder:1b}},{Slot:15b,id:"minecraft:structure_void",Count:1b,tag:{placeholder:1b}},{Slot:16b,id:"minecraft:structure_void",Count:1b,tag:{placeholder:1b}},{Slot:17b,id:"minecraft:structure_void",Count:1b,tag:{placeholder:1b}}]}


scoreboard players operation @e[tag=Itemsave,tag=uninitiated] playerid = @s playerid

#copy most slots
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=first,limit=1] Items set from entity @s Inventory

#Armor
##Helmet
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[0].id set from entity @s Inventory[{Slot:103b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[0].tag set from entity @s Inventory[{Slot:103b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[0].Count set from entity @s Inventory[{Slot:103b}].Count

##Chest
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[1].id set from entity @s Inventory[{Slot:102b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[1].tag set from entity @s Inventory[{Slot:102b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[1].Count set from entity @s Inventory[{Slot:102b}].Count

##Legs
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[2].id set from entity @s Inventory[{Slot:101b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[2].tag set from entity @s Inventory[{Slot:101b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[2].Count set from entity @s Inventory[{Slot:101b}].Count

##Feet
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[3].id set from entity @s Inventory[{Slot:100b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[3].tag set from entity @s Inventory[{Slot:100b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[3].Count set from entity @s Inventory[{Slot:100b}].Count


#other slots
##Shield
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[13].id set from entity @s Inventory[{Slot:-106b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[13].tag set from entity @s Inventory[{Slot:-106b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[13].Count set from entity @s Inventory[{Slot:-106b}].Count

##Slot 27
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[4].id set from entity @s Inventory[{Slot:27b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[4].tag set from entity @s Inventory[{Slot:27b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[4].Count set from entity @s Inventory[{Slot:27b}].Count
##Slot 28
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[5].id set from entity @s Inventory[{Slot:28b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[5].tag set from entity @s Inventory[{Slot:28b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[5].Count set from entity @s Inventory[{Slot:28b}].Count
##Slot 29
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[6].id set from entity @s Inventory[{Slot:29b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[6].tag set from entity @s Inventory[{Slot:29b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[6].Count set from entity @s Inventory[{Slot:29b}].Count
##Slot 30
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[7].id set from entity @s Inventory[{Slot:30b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[7].tag set from entity @s Inventory[{Slot:30b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[7].Count set from entity @s Inventory[{Slot:30b}].Count
##Slot 31
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[8].id set from entity @s Inventory[{Slot:31b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[8].tag set from entity @s Inventory[{Slot:31b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[8].Count set from entity @s Inventory[{Slot:31b}].Count
##Slot 32
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[9].id set from entity @s Inventory[{Slot:32b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[9].tag set from entity @s Inventory[{Slot:32b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[9].Count set from entity @s Inventory[{Slot:32b}].Count
##Slot 33
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[10].id set from entity @s Inventory[{Slot:33b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[10].tag set from entity @s Inventory[{Slot:33b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[10].Count set from entity @s Inventory[{Slot:33b}].Count
##Slot 34
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[11].id set from entity @s Inventory[{Slot:34b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[11].tag set from entity @s Inventory[{Slot:34b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[11].Count set from entity @s Inventory[{Slot:34b}].Count
##Slot 35
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[12].id set from entity @s Inventory[{Slot:35b}].id
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[12].tag set from entity @s Inventory[{Slot:35b}].tag
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[12].Count set from entity @s Inventory[{Slot:35b}].Count


#remove structure_void
data modify entity @e[tag=Itemsave,tag=uninitiated,tag=second,limit=1] Items[{id:'minecraft:structure_void',tag:{placeholder:1b}}].Count set value 0

#remove tag
tag @e[tag=Itemsave,tag=uninitiated,scores={playerid=0..}] remove uninitiated


