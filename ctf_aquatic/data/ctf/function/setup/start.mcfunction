gamerule doImmediateRespawn true
gamerule keepInventory false
gamerule naturalRegeneration true

scoreboard players set red ctf.score 0
scoreboard players set blue ctf.score 0
scoreboard players reset @a ctf.cd_trident
scoreboard players reset @a ctf.cd_shield
scoreboard players reset @a ctf.cd_sonar
scoreboard players reset @a has_flag
tag @a remove has_flag
tag @a remove flag_red
tag @a remove flag_blue

function ctf:setup/spawn_flags
function ctf:setup/give_kits

execute as @a[team=red] at @e[type=armor_stand,tag=ctf_spawn_red,limit=1] run tp @s ~ ~ ~
execute as @a[team=blue] at @e[type=armor_stand,tag=ctf_spawn_blue,limit=1] run tp @s ~ ~ ~

scoreboard players operation @a ctf.last_deaths = @a ctf.deaths
scoreboard players set game ctf.state 1
tellraw @a ["",{"text":"[CTF] ","color":"aqua","bold":true},{"text":"La partie commence ! Premier a ","color":"white"},{"score":{"name":"game","objective":"ctf.win_score"},"color":"gold"},{"text":" points gagne.","color":"white"}]
title @a title ["",{"text":"CTF Aquatic","color":"aqua","bold":true}]
title @a subtitle [{"text":"Capturez le drapeau ennemi !","color":"yellow"}]
