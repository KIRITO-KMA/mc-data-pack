# Fumee de cheminee qui derive avec un "vent" pseudo-aleatoire (1.20.1 n'a pas
# /random). La direction change tous les ~200 daytime ticks, cycle de 8
# directions (boussole). Placer un marqueur armor_stand tag=academie_cheminee
# au sommet de chaque cheminee (cf. fumee/give_wand.mcfunction).

execute store result score game academie.daytime run time query daytime
scoreboard players operation game academie.wind_dir = game academie.daytime
scoreboard players operation game academie.wind_dir /= c1000 academie.const
scoreboard players operation game academie.wind_dir %= c8 academie.const

execute as @e[type=armor_stand,tag=academie_cheminee] at @s if score game academie.wind_dir matches 0 run particle minecraft:campfire_cosy_smoke ~ ~0.2 ~ 0.05 0.05 0.05 0.01 1
execute as @e[type=armor_stand,tag=academie_cheminee] at @s if score game academie.wind_dir matches 0 run particle minecraft:campfire_cosy_smoke ~ ~1 ~1 0.1 0.05 0.1 0.01 2
execute as @e[type=armor_stand,tag=academie_cheminee] at @s if score game academie.wind_dir matches 1 run particle minecraft:campfire_cosy_smoke ~1 ~1 ~1 0.1 0.05 0.1 0.01 2
execute as @e[type=armor_stand,tag=academie_cheminee] at @s if score game academie.wind_dir matches 2 run particle minecraft:campfire_cosy_smoke ~1 ~1 ~ 0.1 0.05 0.1 0.01 2
execute as @e[type=armor_stand,tag=academie_cheminee] at @s if score game academie.wind_dir matches 3 run particle minecraft:campfire_cosy_smoke ~1 ~1 ~-1 0.1 0.05 0.1 0.01 2
execute as @e[type=armor_stand,tag=academie_cheminee] at @s if score game academie.wind_dir matches 4 run particle minecraft:campfire_cosy_smoke ~ ~1 ~-1 0.1 0.05 0.1 0.01 2
execute as @e[type=armor_stand,tag=academie_cheminee] at @s if score game academie.wind_dir matches 5 run particle minecraft:campfire_cosy_smoke ~-1 ~1 ~-1 0.1 0.05 0.1 0.01 2
execute as @e[type=armor_stand,tag=academie_cheminee] at @s if score game academie.wind_dir matches 6 run particle minecraft:campfire_cosy_smoke ~-1 ~1 ~ 0.1 0.05 0.1 0.01 2
execute as @e[type=armor_stand,tag=academie_cheminee] at @s if score game academie.wind_dir matches 7 run particle minecraft:campfire_cosy_smoke ~-1 ~1 ~1 0.1 0.05 0.1 0.01 2
