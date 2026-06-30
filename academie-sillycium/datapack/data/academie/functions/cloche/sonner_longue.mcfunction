execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] at @s run playsound minecraft:block.bell.use master @a[distance=..120] ~ ~ ~ 1.0 1.0
execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] at @s run playsound minecraft:block.bell.use master @a[distance=..120] ~ ~ ~ 1.0 0.8
execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] at @s run playsound minecraft:block.bell.use master @a[distance=..120] ~ ~ ~ 1.0 0.6
execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] at @s run tellraw @a[distance=..120] ["",{"text":"[Academie] ","color":"gold"},{"text":"La grande cloche retentit dans toute l'ecole !","color":"yellow","bold":true}]
