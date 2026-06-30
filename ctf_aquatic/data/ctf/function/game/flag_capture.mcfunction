$tag @s remove has_flag
$tag @s remove flag_$(color)
$effect clear @s slowness
$clear @s $(color)_banner
$scoreboard players add $(team) ctf.score 1
$tellraw @a ["",{"text":"[CTF] ","color":"aqua","bold":true},{"selector":"@s"},{"text":" a marque pour l'equipe $(team) !","color":"gold"}]

$execute as @e[type=armor_stand,tag=ctf_flag_$(color)_spawn] at @s run setblock ~ ~ ~ $(color)_banner[rotation=0]{CustomName:'{"text":"Drapeau $(color)"}'} replace

scoreboard players get red ctf.score
scoreboard players get blue ctf.score
execute if score red ctf.score matches 3.. run function ctf:game/win {team:"red"}
execute if score blue ctf.score matches 3.. run function ctf:game/win {team:"blue"}
