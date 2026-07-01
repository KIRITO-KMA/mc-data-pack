# Detection des items custom sans passer par les advancements (fiable sur Mohist).

# Initialise les cooldowns a 0 pour tout joueur qui n'a pas encore de score
# (sinon le filtre scores={...=0} ne matche jamais tant que le score n'existe pas).
scoreboard players add @a academie.montre_cd 0
scoreboard players add @a academie.wand_cd 0
scoreboard players add @a academie.key1_cd 0

# --- Montre : affiche l'heure quand on la tient en main, toutes les 3s ---
execute as @a[nbt={SelectedItem:{tag:{academie:{item:"montre"}}}},scores={academie.montre_cd=0}] run function academie:montre/show
scoreboard players remove @a[scores={academie.montre_cd=1..}] academie.montre_cd 1

# --- Baguette cloche : pose le marqueur quand le joueur est accroupi ---
execute as @a[nbt={SelectedItem:{tag:{academie:{wand:"cloche"}}},Sneaking:1b},scores={academie.wand_cd=0}] run function academie:cloche/place_marker
# --- Baguette cheminee : pose un marqueur cheminee quand accroupi ---
execute as @a[nbt={SelectedItem:{tag:{academie:{wand:"cheminee"}}},Sneaking:1b},scores={academie.wand_cd=0}] run function academie:fumee/place_marker
# Cooldown commun aux deux baguettes (2s)
scoreboard players remove @a[scores={academie.wand_cd=1..}] academie.wand_cd 1

# --- Cle dortoir1 : ouvre/ferme la porte si le joueur est a moins de 3 blocs ---
execute as @a[nbt={SelectedItem:{tag:{academie:{key:"dortoir1"}}}},scores={academie.key1_cd=0}] at @s if entity @e[type=armor_stand,tag=academie_porte_dortoir1,distance=..3] run function academie:cles/porte_dortoir1_toggle
scoreboard players remove @a[scores={academie.key1_cd=1..}] academie.key1_cd 1
