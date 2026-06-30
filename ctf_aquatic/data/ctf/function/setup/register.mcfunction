# Enregistrement automatique (tourne a chaque /reload). Idempotent : ne touche
# ni aux scores ni a une partie en cours.

scoreboard objectives add ctf.score dummy "CTF Score"
scoreboard objectives add ctf.state dummy "CTF State"
scoreboard objectives add ctf.win_score dummy
scoreboard objectives add ctf.cd_trident dummy
scoreboard objectives add ctf.cd_shield dummy
scoreboard objectives add ctf.cd_sonar dummy
scoreboard objectives add ctf.deaths minecraft.custom:minecraft.deaths
scoreboard objectives add ctf.last_deaths dummy
scoreboard objectives add ctf.tmp dummy
scoreboard objectives setdisplay sidebar ctf.score

execute unless score game ctf.win_score matches -2147483648..2147483647 run scoreboard players set game ctf.win_score 3
execute unless score game ctf.state matches -2147483648..2147483647 run scoreboard players set game ctf.state 0

team add red "Equipe Rouge"
team add blue "Equipe Bleue"
team modify red color red
team modify blue color blue
team modify red friendlyFire false
team modify blue friendlyFire false
