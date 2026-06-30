# Detecte les boules de neige "Encre de Seiche" lancees et non encore traitees.

execute as @e[type=snowball,tag=!ctf_handled,nbt={Item:{components:{"minecraft:custom_data":{ctf:{item:"ink_grenade"}}}}}] at @s run function ctf:items/ink_grenade
