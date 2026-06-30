$execute at @e[type=armor_stand,tag=ctf_spawn_$(team),limit=1] run tp @s ~ ~ ~

execute as @s[tag=flag_red] at @e[type=armor_stand,tag=ctf_flag_red_spawn,limit=1] run setblock ~ ~ ~ red_banner[rotation=0]{CustomName:'{"text":"Drapeau Rouge"}'} replace
execute as @s[tag=flag_blue] at @e[type=armor_stand,tag=ctf_flag_blue_spawn,limit=1] run setblock ~ ~ ~ blue_banner[rotation=0]{CustomName:'{"text":"Drapeau Bleu"}'} replace

tag @s remove has_flag
tag @s remove flag_red
tag @s remove flag_blue
effect clear @s slowness
