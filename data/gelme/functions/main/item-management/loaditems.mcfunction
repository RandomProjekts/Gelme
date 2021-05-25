clear @s
tag @s add loadinv

#copy to first temporary chest_minecart
summon minecraft:chest_minecart ~ ~ ~ {Tags:["Itemsave", "temporary", "first"],NoGravity:1b}
execute as @e[tag=Itemsave,tag=first] at @s if score @a[tag=loadinv,limit=1,sort=nearest] playerid = @s playerid run data modify entity @e[tag=Itemsave,tag=temporary,tag=first,limit=1] Items set from entity @s Items

#copy to second temporary chest_minecart
summon minecraft:chest_minecart ~ ~ ~ {Tags:["Itemsave", "temporary", "second"],NoGravity:1b}
execute as @e[tag=Itemsave,tag=second] at @s if score @a[tag=loadinv,limit=1,sort=nearest] playerid = @s playerid run data modify entity @e[tag=Itemsave,tag=temporary,tag=second,limit=1] Items set from entity @s Items

#prepare Armor dispenser
## align player
execute at @s align xz run tp ~.5 ~ ~.5
## blind player
execute anchored eyes run particle minecraft:flash ^ ^ ^.2 0 0 0 1 10 force
## set dispensers if there is enough space
execute if block ~1 ~1 ~ air if block ~1 ~2 ~ air run setblock ~1 ~1 ~ minecraft:dispenser[facing=west]{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b,tag:{placeholder:1b}}]}
execute if block ~-1 ~1 ~ air if block ~-1 ~2 ~ air run setblock ~-1 ~1 ~ minecraft:dispenser[facing=east]{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b,tag:{placeholder:1b}}]}
execute if block ~ ~1 ~-1 air if block ~ ~2 ~-1 air run setblock ~ ~1 ~-1 minecraft:dispenser[facing=south]{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b,tag:{placeholder:1b}}]}
execute if block ~ ~1 ~1 air if block ~ ~2 ~1 air run setblock ~ ~1 ~1 minecraft:dispenser[facing=north]{Items:[{Slot:0b,id:"minecraft:structure_void",Count:1b,tag:{placeholder:1b}}]}

## fill dispensers
data modify block ~1 ~1 ~ Items[0] set from entity @e[tag=second,tag=Itemsave,limit=1] Items[{Slot:0b}]
data modify block ~-1 ~1 ~ Items[0] set from entity @e[tag=second,tag=Itemsave,limit=1] Items[{Slot:1b}]
data modify block ~ ~1 ~-1 Items[0] set from entity @e[tag=second,tag=Itemsave,limit=1] Items[{Slot:2b}]
data modify block ~ ~1 ~1 Items[0] set from entity @e[tag=second,tag=Itemsave,limit=1] Items[{Slot:3b}]

## clear armor from chest_minecart
execute if block ~1 ~1 ~ minecraft:dispenser run data modify entity @e[tag=Itemsave,tag=second,tag=temporary,limit=1] Items[{Slot:0b}].Count set value 0
execute if block ~-1 ~1 ~ minecraft:dispenser run data modify entity @e[tag=Itemsave,tag=second,tag=temporary,limit=1] Items[{Slot:1b}].Count set value 0
execute if block ~ ~1 ~-1 minecraft:dispenser run data modify entity @e[tag=Itemsave,tag=second,tag=temporary,limit=1] Items[{Slot:2b}].Count set value 0
execute if block ~ ~1 ~1 minecraft:dispenser run data modify entity @e[tag=Itemsave,tag=second,tag=temporary,limit=1] Items[{Slot:3b}].Count set value 0

#grant items
## armor
fill ~1 ~2 ~1 ~-1 ~2 ~-1 minecraft:redstone_block keep

## the rest
kill @e[tag=Itemsave,tag=temporary]

# reset
schedule function gelme:main/item-management/loaditems-reset 5t