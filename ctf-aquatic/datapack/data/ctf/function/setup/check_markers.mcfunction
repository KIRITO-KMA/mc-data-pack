# Verifie que tous les marqueurs requis sont places avant de lancer la partie.
# Ecrit 1 dans le score "check" si tout est bon, 0 sinon, avec un message clair
# pour le map maker sur ce qu'il manque.

scoreboard players set check ctf.state 1

execute unless entity @e[type=armor_stand,tag=ctf_flag_red_spawn] run function ctf:setup/missing_marker {tag:"ctf_flag_red_spawn"}
execute unless entity @e[type=armor_stand,tag=ctf_flag_blue_spawn] run function ctf:setup/missing_marker {tag:"ctf_flag_blue_spawn"}
execute unless entity @e[type=armor_stand,tag=ctf_base_red] run function ctf:setup/missing_marker {tag:"ctf_base_red"}
execute unless entity @e[type=armor_stand,tag=ctf_base_blue] run function ctf:setup/missing_marker {tag:"ctf_base_blue"}
execute unless entity @e[type=armor_stand,tag=ctf_spawn_red] run function ctf:setup/missing_marker {tag:"ctf_spawn_red"}
execute unless entity @e[type=armor_stand,tag=ctf_spawn_blue] run function ctf:setup/missing_marker {tag:"ctf_spawn_blue"}

execute unless entity @a[team=red] run function ctf:setup/missing_marker {tag:"equipe rouge (aucun joueur)"}
execute unless entity @a[team=blue] run function ctf:setup/missing_marker {tag:"equipe bleue (aucun joueur)"}
