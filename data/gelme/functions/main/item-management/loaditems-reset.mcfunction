# reset
execute at @a[tag=loadinv] run fill ~1 ~2 ~1 ~-1 ~3 ~-1 air replace redstone_block
execute at @a[tag=loadinv] run fill ~1 ~1 ~1 ~-1 ~1 ~-1 air replace dispenser
clear @a[tag=loadinv] minecraft:structure_void{placeholder:1b}
tag @a[tag=loadinv] remove loadinv