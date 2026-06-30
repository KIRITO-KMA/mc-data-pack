advancement revoke @s only ctf:setup/wand_use

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ctf:{wand:"ctf_flag_red_spawn"}}}}}] run function ctf:setup/wand_place_do {tag:"ctf_flag_red_spawn",label:"Drapeau Rouge"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ctf:{wand:"ctf_flag_blue_spawn"}}}}}] run function ctf:setup/wand_place_do {tag:"ctf_flag_blue_spawn",label:"Drapeau Bleu"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ctf:{wand:"ctf_base_red"}}}}}] run function ctf:setup/wand_place_do {tag:"ctf_base_red",label:"Base Rouge"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ctf:{wand:"ctf_base_blue"}}}}}] run function ctf:setup/wand_place_do {tag:"ctf_base_blue",label:"Base Bleue"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ctf:{wand:"ctf_spawn_red"}}}}}] run function ctf:setup/wand_place_do {tag:"ctf_spawn_red",label:"Spawn Rouge"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ctf:{wand:"ctf_spawn_blue"}}}}}] run function ctf:setup/wand_place_do {tag:"ctf_spawn_blue",label:"Spawn Bleu"}
