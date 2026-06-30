$tag @s remove has_flag
$tag @s remove flag_$(color)
$effect clear @s slowness
$clear @s $(color)_banner
$scoreboard players add $(team) ctf.score 1
$tellraw @a ["",{"text":"[CTF] ","color":"aqua","bold":true},{"selector":"@s"},{"text":" a marque pour l'equipe $(team) !","color":"gold"}]

$execute as @e[type=armor_stand,tag=ctf_flag_$(color)_spawn] at @s run setblock ~ ~ ~ $(color)_banner[rotation=0]{CustomName:'{"text":"Drapeau $(color)"}'} replace
