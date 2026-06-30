# Diagnostic du data pack. Lance avec /function academie:debug

tellraw @s ["",{"text":"=== ACADEMIE DEBUG ===","color":"gold","bold":true}]

# 1. Verifie si le tick tourne
tellraw @s ["",{"text":"[1] academie.enabled = ","color":"gray"},{"score":{"name":"game","objective":"academie.enabled"},"color":"white"}]
tellraw @s ["",{"text":"    (doit valoir 1)","color":"dark_gray"}]

# 2. Verifie si la montre a le bon NBT quand elle est tenue
execute if data entity @s SelectedItem.tag.academie run tellraw @s ["",{"text":"[2] Item en main a un tag academie : ","color":"gray"},{"text":"OUI","color":"green"}]
execute unless if data entity @s SelectedItem.tag.academie run tellraw @s ["",{"text":"[2] Item en main a un tag academie : ","color":"gray"},{"text":"NON (relance /function academie:montre/give et tiens la montre)","color":"red"}]

# 3. Cooldown montre
tellraw @s ["",{"text":"[3] Cooldown montre = ","color":"gray"},{"score":{"name":"@s","objective":"academie.montre_cd"},"color":"white"}]
tellraw @s ["",{"text":"    (0 = pret a afficher l'heure)","color":"dark_gray"}]

# 4. Test direct sans filtre NBT
execute as @a run tellraw @s ["",{"text":"[4] Tick joueur : ","color":"gray"},{"text":"OK (@a fonctionne)","color":"green"}]
