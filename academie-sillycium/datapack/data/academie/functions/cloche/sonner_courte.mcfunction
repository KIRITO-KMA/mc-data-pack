execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] at @s run playsound minecraft:block.bell.use master @a[distance=..40] ~ ~ ~ 1.0 1.0
execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] at @s run tellraw @a[distance=..40] ["",{"text":"[Academie] ","color":"gold"},{"text":"La cloche sonne.","color":"yellow"}]
