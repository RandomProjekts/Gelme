



#remove pink_stained_glass
execute at @a as @a if block ~ ~-2 ~ minecraft:pink_stained_glass run setblock ~ ~-2 ~ minecraft:air replace
execute at @a as @a if block ~1 ~-1 ~ minecraft:pink_stained_glass run setblock ~1 ~-1 ~ minecraft:air replace
execute at @a as @a if block ~-1 ~-1 ~ minecraft:pink_stained_glass run setblock ~-1 ~-1 ~ minecraft:air replace
execute at @a as @a if block ~ ~-1 ~1 minecraft:pink_stained_glass run setblock ~ ~-1 ~1 minecraft:air replace
execute at @a as @a if block ~ ~-1 ~-1 minecraft:pink_stained_glass run setblock ~ ~-1 ~-1 minecraft:air replace
execute at @a as @a if block ~ ~-1 ~ minecraft:pink_stained_glass run setblock ~ ~-1 ~ minecraft:air replace

execute at @a as @a if block ~2 ~1 ~ minecraft:pink_stained_glass run setblock ~2 ~1 ~ minecraft:air replace
execute at @a as @a if block ~-2 ~1 ~ minecraft:pink_stained_glass run setblock ~-2 ~1 ~ minecraft:air replace
execute at @a as @a if block ~ ~1 ~2 minecraft:pink_stained_glass run setblock ~ ~1 ~2 minecraft:air replace
execute at @a as @a if block ~ ~1 ~-2 minecraft:pink_stained_glass run setblock ~ ~1 ~-2 minecraft:air replace

function gelme:parcour/floor



#look at blocks
execute at @a as @a if block ^ ^ ^1 minecraft:pink_glazed_terracotta run setblock ~ ~-1 ~ minecraft:pink_stained_glass keep
execute at @a as @a if block ^ ^ ^-1 minecraft:pink_glazed_terracotta run setblock ~ ~-1 ~ minecraft:pink_stained_glass keep

#blocks on the wall
execute at @a as @a if block ~ ~ ~1 minecraft:lime_concrete run effect give @p minecraft:slow_falling 1 100 true
execute at @a as @a if block ~ ~ ~-1 minecraft:lime_concrete run effect give @p minecraft:slow_falling 1 100 true
execute at @a as @a if block ~1 ~ ~ minecraft:lime_concrete run effect give @p minecraft:slow_falling 1 100 true
execute at @a as @a if block ~-1 ~ ~ minecraft:lime_concrete run effect give @p minecraft:slow_falling 1 100 true



#blocks on the ceiling
execute at @a as @a if block ~ ~2 ~ minecraft:glass run particle block glass ~ ~ ~ 0 0 0 1 20 normal
execute at @a as @a if block ~ ~2 ~ minecraft:glass run playsound block.glass.break master @a ~ ~2 ~
execute at @a as @a if block ~ ~2 ~ minecraft:glass run fill ~4 ~2 ~4 ~-4 ~2 ~-4 minecraft:air replace minecraft:glass


function gelme:parcour/checkpoints/checkpointmanage
function gelme:parcour/doormanage
function gelme:parcour/click




#remove effects
execute at @a as @a if block ~ ~-1 ~ minecraft:quartz_block run effect clear @p
execute at @a as @a if block ~ ~-1 ~ minecraft:gray_stained_glass run effect clear @p
execute at @a as @a if block ~ ~-1 ~ minecraft:sea_lantern run effect clear @p

#negate fall damage
tag @a remove brace
tag @a[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots",Count:1b,tag:{display:{Name:'{"text":"Space-Braces","color":"gray","bold":true}',Lore:['{"text":"Special boots that","color":"dark_aqua"}','{"text":"absorb fall damage","color":"dark_aqua"}','{"text":"using zero g technology","color":"dark_aqua"}']},HideFlags:1,Unbreakable:1b,Damage:1,Enchantments:[{id:"minecraft:feather_falling",lvl:200s}]}}]}] add brace