# Reward de l'advancement use_item/trigger : dispatch vers la capacite de l'item en main.

advancement revoke @s only ctf:use_item/trigger

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ctf:{item:"trident_dash"}}}}}] run function ctf:items/trident_dash
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ctf:{item:"depth_shield"}}}}}] run function ctf:items/depth_shield
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ctf:{item:"sonar_pulse"}}}}}] run function ctf:items/sonar_pulse
