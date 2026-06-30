# Revoque l'advancement pour permettre une prochaine utilisation de la cle.
advancement revoke @s only academie:door/dortoir1

# Memorise l'etat initial avant tout setblock (evite la race condition).
scoreboard players set game academie.door_state 0
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s if block ~ ~ ~ iron_door[open=true] run scoreboard players set game academie.door_state 1

# Ouvre si la porte etait fermee.
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s if score game academie.door_state matches 0 run setblock ~ ~ ~ iron_door[half=lower,open=true] keep
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s if score game academie.door_state matches 0 run setblock ~ ~1 ~ iron_door[half=upper,open=true] keep

# Ferme si la porte etait ouverte.
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s if score game academie.door_state matches 1 run setblock ~ ~ ~ iron_door[half=lower,open=false] keep
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s if score game academie.door_state matches 1 run setblock ~ ~1 ~ iron_door[half=upper,open=false] keep

# Son depuis la porte (at @s = position de l'armor stand).
execute as @e[type=armor_stand,tag=academie_porte_dortoir1,limit=1] at @s run playsound minecraft:block.iron_door.open master @a[distance=..8] ~ ~ ~ 1.0 1.0
