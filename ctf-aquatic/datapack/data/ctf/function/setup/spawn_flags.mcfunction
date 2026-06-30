# Pose les bannieres-drapeaux sur les marqueurs places par le mapper.
# Le mapper place un armor_stand invisible avec le tag "ctf_flag_red_spawn"
# ou "ctf_flag_blue_spawn" a l'endroit ou la banniere doit apparaitre.

execute as @e[type=armor_stand,tag=ctf_flag_red_spawn] at @s run setblock ~ ~ ~ red_banner[rotation=0]{CustomName:'{"text":"Drapeau Rouge"}',display:{Name:'{"text":"Drapeau Rouge"}'}} replace
execute as @e[type=armor_stand,tag=ctf_flag_blue_spawn] at @s run setblock ~ ~ ~ blue_banner[rotation=0]{CustomName:'{"text":"Drapeau Bleu"}',display:{Name:'{"text":"Drapeau Bleu"}'}} replace

tellraw @a ["",{"text":"[CTF] ","color":"aqua","bold":true},{"text":"Drapeaux places.","color":"gray"}]
