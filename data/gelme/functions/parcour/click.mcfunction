#carrot on a stick stuff
tag @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:1,Unbreakable:1b}}}] add checkedit
tag @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:2,Unbreakable:1b}}}] add dooredit
tag @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:3,Unbreakable:1b}}}] add buttonedit
scoreboard players reset @a[scores={click=1..}] click

#checkpoint
execute at @a[tag=checkedit] as @p if entity @e[tag=checkpoint,distance=..2] run tag @p add checkrem
execute at @a[tag=checkedit] as @p unless entity @e[tag=checkpoint,distance=..2] run function gelme:parcour/checkpoints/checkpointadd
execute at @a[tag=checkrem] as @p run function gelme:parcour/checkpoints/checkpointrem

#door
execute at @a[tag=dooredit] as @p if entity @e[tag=door,distance=..2] run tag @p add doorrem
execute at @a[tag=dooredit] as @p unless entity @e[tag=door,distance=..2] run function gelme:parcour/dooradd
execute at @a[tag=doorrem] as @p run function gelme:parcour/doorrem

#reset tags
tag @a[tag=dooredit] remove dooredit
tag @a[tag=doorrem] remove doorrem
tag @a[tag=checkedit] remove checkedit
tag @a[tag=checkrem] remove checkrem