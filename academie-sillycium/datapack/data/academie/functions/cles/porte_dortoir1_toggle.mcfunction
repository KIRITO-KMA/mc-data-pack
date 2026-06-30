# Bascule la porte en fer marquee "academie_porte_dortoir1" (bas de porte).
# Modele a dupliquer pour chaque nouvelle porte : voir le README.
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s if block ~ ~ ~ iron_door[open=false] run setblock ~ ~ ~ iron_door[half=lower,open=true] keep
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s if block ~ ~ ~ iron_door[open=false] run setblock ~ ~1 ~ iron_door[half=upper,open=true] keep
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s if block ~ ~ ~ iron_door[open=true] run setblock ~ ~ ~ iron_door[half=lower,open=false] keep
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s if block ~ ~ ~ iron_door[open=true] run setblock ~ ~1 ~ iron_door[half=upper,open=false] keep
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] run playsound minecraft:block.iron_door.open master @a[distance=..8] ~ ~ ~ 1.0 1.0
