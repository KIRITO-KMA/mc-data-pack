# Recompense de l'advancement academie:wand/place_cloche, s'execute "as" le joueur.
advancement revoke @s only academie:wand/place_cloche

kill @e[type=armor_stand,tag=academie_cloche_main]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["academie_cloche_main"]}
tellraw @s ["",{"text":"[Academie] ","color":"light_purple"},{"text":"Marqueur de la cloche place.","color":"gray"}]
