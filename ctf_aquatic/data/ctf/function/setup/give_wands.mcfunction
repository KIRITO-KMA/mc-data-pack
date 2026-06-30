# Donne au map maker les 6 baguettes de pose de marqueurs.
# /function ctf:setup/give_wands
# Tenez-vous a l'endroit voulu, clic droit sur un bloc (ex: le sol) pour poser
# (ou deplacer) le marqueur correspondant.

give @s stick[item_name='{"text":"Baguette : Drapeau Rouge","color":"red"}',custom_data={ctf:{wand:"ctf_flag_red_spawn"}}]
give @s stick[item_name='{"text":"Baguette : Drapeau Bleu","color":"blue"}',custom_data={ctf:{wand:"ctf_flag_blue_spawn"}}]
give @s stick[item_name='{"text":"Baguette : Base Rouge","color":"red"}',custom_data={ctf:{wand:"ctf_base_red"}}]
give @s stick[item_name='{"text":"Baguette : Base Bleue","color":"blue"}',custom_data={ctf:{wand:"ctf_base_blue"}}]
give @s stick[item_name='{"text":"Baguette : Spawn Rouge","color":"red"}',custom_data={ctf:{wand:"ctf_spawn_red"}}]
give @s stick[item_name='{"text":"Baguette : Spawn Bleu","color":"blue"}',custom_data={ctf:{wand:"ctf_spawn_blue"}}]

tellraw @s ["",{"text":"[CTF] ","color":"aqua","bold":true},{"text":"6 baguettes recues. Clic droit sur un bloc a l'endroit voulu pour poser chaque marqueur.","color":"gray"}]
