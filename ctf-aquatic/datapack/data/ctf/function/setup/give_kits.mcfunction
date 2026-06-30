# Donne le kit de depart CTF a tous les joueurs.

clear @a
give @a trident[item_model="ctf:ctf_trident",item_name='{"text":"Trident de Courant","color":"aqua"}',custom_data={ctf:{item:"trident_dash"}},enchantment_glint_override=true]
give @a snowball[item_model="ctf:ctf_ink",item_name='{"text":"Encre de Seiche","color":"dark_gray"}',custom_data={ctf:{item:"ink_grenade"}}] 4
give @a shield[item_model="ctf:ctf_nautile",item_name='{"text":"Ecaille de Nautile","color":"green"}',custom_data={ctf:{item:"depth_shield"}}]
give @a spyglass[item_model="ctf:ctf_sonar",item_name='{"text":"Sonar","color":"gold"}',custom_data={ctf:{item:"sonar_pulse"}}]
give @a splash_potion[item_model="ctf:ctf_current",item_name='{"text":"Potion de Courant","color":"blue"}',custom_data={ctf:{item:"current_potion"}},potion_contents={custom_effects:[{id:"minecraft:speed",amplifier:1,duration:200},{id:"minecraft:instant_health",amplifier:0,duration:1}]}] 2

execute as @a[team=red] run give @s leather_chestplate[dyed_color={rgb:11546150}]
execute as @a[team=blue] run give @s leather_chestplate[dyed_color={rgb:2437522}]

effect give @a conduit_power infinite 0 true
