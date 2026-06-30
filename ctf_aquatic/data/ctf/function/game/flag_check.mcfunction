# Detection capture/depot de drapeau. Tourne chaque tick (state == 1).

# Capture : un joueur ramasse la banniere adverse -> tag has_flag
execute as @a[team=blue,tag=!has_flag] if entity @s[nbt={Inventory:[{id:"minecraft:red_banner"}]}] run function ctf:game/flag_pickup {team:"blue",color:"red"}
execute as @a[team=red,tag=!has_flag] if entity @s[nbt={Inventory:[{id:"minecraft:blue_banner"}]}] run function ctf:game/flag_pickup {team:"red",color:"blue"}

# Depot : le porteur atteint sa propre base
execute as @a[team=blue,tag=has_flag] at @s if entity @e[type=armor_stand,tag=ctf_base_blue,distance=..2] run function ctf:game/flag_capture {team:"blue",color:"red"}
execute as @a[team=red,tag=has_flag] at @s if entity @e[type=armor_stand,tag=ctf_base_red,distance=..2] run function ctf:game/flag_capture {team:"red",color:"blue"}
