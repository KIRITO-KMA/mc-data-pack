# Sonnerie normale (changement de cours).
execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] at @s run playsound minecraft:block.bell.use master @a[distance=..60] ~ ~ ~ 1.0 1.0
execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] at @s run playsound minecraft:block.bell.use master @a[distance=..60] ~ ~ ~ 1.0 0.8
execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] run tellraw @a[distance=..60] ["",{"text":"🔔 ","color":"gold"},{"text":"La cloche sonne, c'est l'heure de changer de cours.","color":"yellow"}]
