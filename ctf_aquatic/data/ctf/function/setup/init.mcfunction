# CTF Aquatic - Initialisation
# A lancer une fois au demarrage de la partie : /function ctf:setup/init

gamerule doImmediateRespawn true
gamerule keepInventory false
gamerule naturalRegeneration true

scoreboard objectives add ctf.score dummy "CTF Score"
scoreboard objectives add ctf.state dummy "CTF State"
scoreboard objectives add ctf.cd_trident dummy
scoreboard objectives add ctf.cd_shield dummy
scoreboard objectives add ctf.cd_sonar dummy
scoreboard objectives setdisplay sidebar ctf.score

team add red "Equipe Rouge"
team add blue "Equipe Bleue"
team modify red color red
team modify blue color blue
team modify red friendlyFire false
team modify blue friendlyFire false

scoreboard players set red ctf.score 0
scoreboard players set blue ctf.score 0
scoreboard players set game ctf.state 0

tag @e[type=armor_stand,tag=ctf_marker] remove ctf_marker_done

function ctf:setup/spawn_flags
function ctf:setup/give_kits

scoreboard players set game ctf.state 1
tellraw @a ["",{"text":"[CTF] ","color":"aqua","bold":true},{"text":"La partie commence !","color":"white"}]
