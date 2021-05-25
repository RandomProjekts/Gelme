#reset inventory
replaceitem entity @a[tag=admin] hotbar.0 written_book{pages:["[\"\",{\"text\":\"zeug\",\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger assign set 1\"}}]"],title:"Admin Book",author:Server}


replaceitem entity @a armor.feet chainmail_boots{display:{Name:'{"text":"Space-Braces","color":"gray","bold":true}',Lore:['{"text":"Special boots that","color":"dark_aqua"}','{"text":"absorb fall damage","color":"dark_aqua"}','{"text":"using zero g technology","color":"dark_aqua"}']},HideFlags:1,Unbreakable:1b,Damage:1,Enchantments:[{id:"minecraft:feather_falling",lvl:200s}]} 1
replaceitem entity @a armor.chest leather_chestplate{display:{Name:'{"text":"Spacesuit","color":"dark_blue"}',Lore:['{"text":"Part of a special Suit ","color":"dark_aqua"}','{"text":"designed to survive in Space","color":"dark_aqua"}'],color:16745779},HideFlags:2,Unbreakable:1b,Damage:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;-1316875888,2133412211,-1299673325,994141934],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.025,Operation:0,UUID:[I;687036422,1614957458,-1508698413,-613951539],Slot:"chest"}]} 1
replaceitem entity @a armor.legs leather_leggings{display:{Name:'{"text":"Spacepants","color":"dark_blue"}',Lore:['{"text":"Part of a special Suit ","color":"dark_aqua"}','{"text":"designed to survive in Space","color":"dark_aqua"}'],color:16745779},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:200s}]} 1



#reset tags
scoreboard players set @a check 1
tag @e[tag=checkpoint] add deactivated


#spawn reset
weather clear
time set day

execute unless entity @e[tag=center] run summon armor_stand 0 256 0 {Invisible:1b,Tags:[center_height]}
execute unless entity @e[tag=center] as @e[tag=center_height,limit=1] at @s run schedule function gelme:main/setup 7s


title @a times 10 7 10

tellraw @a {"text":"Reloaded","bold":true,"italic":false,"color":"dark_green"}
tellraw @p ["",{"text":"noFall_v1","color":"aqua","clickEvent":{"action":"open_url","value":"http://minnekraft.de"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Datapack by Halbzwilling! Download more on minnekraft.de!","color":"gold"}]}}},{"text":" enabled!","color":"green"}]
