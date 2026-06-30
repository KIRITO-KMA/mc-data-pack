# Recompense de l'advancement academie:wand/place_cheminee, s'execute "as" le joueur.
advancement revoke @s only academie:wand/place_cheminee

execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["academie_cheminee"]}
tellraw @s ["",{"text":"[Academie] ","color":"light_purple"},{"text":"Cheminee ajoutee.","color":"gray"}]
