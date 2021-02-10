#reset inventory
replaceitem entity @a[tag=admin] hotbar.0 written_book{pages:["[\"\",{\"text\":\"zeug\",\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger assign set 1\"}}]"],title:"Admin Book",author:Server}

#reset tags
tag @a remove leaving
tag @a remove here
tag @a remove coming


#spawn reset
weather clear
time set day