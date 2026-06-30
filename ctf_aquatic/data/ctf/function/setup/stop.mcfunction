# Arrete la partie en cours, sans toucher aux marqueurs de map.
# /function ctf:setup/stop

scoreboard players set game ctf.state 0
tag @a remove has_flag
tag @a remove flag_red
tag @a remove flag_blue
effect clear @a slowness
tellraw @a ["",{"text":"[CTF] ","color":"aqua","bold":true},{"text":"Partie arretee.","color":"gray"}]
