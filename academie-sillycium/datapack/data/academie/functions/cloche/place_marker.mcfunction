# S'execute "as" le joueur via items/tick (accroupi avec la baguette).
scoreboard players set @s academie.wand_cd 40

kill @e[type=armor_stand,tag=academie_cloche_main]
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["academie_cloche_main"]}
tellraw @s ["",{"text":"[Academie] ","color":"light_purple"},{"text":"Marqueur de la cloche place.","color":"gray"}]
