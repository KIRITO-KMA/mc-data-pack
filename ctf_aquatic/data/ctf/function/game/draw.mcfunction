scoreboard players set game ctf.state 0
tellraw @a ["",{"text":"[CTF] ","color":"aqua","bold":true},{"text":"Egalite ! Temps ecoule, aucune equipe ne l'emporte.","color":"gold","bold":true}]
title @a title {"text":"Egalite !","color":"gold"}
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 1
