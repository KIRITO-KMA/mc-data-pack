# Sonnerie courte (rentree de classe). Doit etre lancee "execute at <marker>"
# ou en se tenant pres du marker academie_cloche_main.
execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] at @s run playsound minecraft:block.bell.use master @a[distance=..40] ~ ~ ~ 1.0 1.0
execute as @e[type=armor_stand,tag=academie_cloche_main,limit=1] run tellraw @a[distance=..40] ["",{"text":"🔔 ","color":"gold"},{"text":"La cloche sonne.","color":"yellow"}]
