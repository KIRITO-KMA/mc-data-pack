# A appeler chaque tick pour tous les joueurs (voir tags/function/tick.json)
# Detecte une mort via le stat deathCount et teleporte sur le spawn d'equipe.

scoreboard objectives add ctf.deaths minecraft.custom:minecraft.deaths
scoreboard objectives add ctf.last_deaths dummy

execute as @a[team=red] if score @s ctf.deaths > @s ctf.last_deaths run function ctf:game/respawn_team {team:"red"}
execute as @a[team=blue] if score @s ctf.deaths > @s ctf.last_deaths run function ctf:game/respawn_team {team:"blue"}

scoreboard players operation @a ctf.last_deaths = @a ctf.deaths
