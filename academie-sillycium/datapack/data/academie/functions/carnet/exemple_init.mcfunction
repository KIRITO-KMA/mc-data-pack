# Exemple de mise en place des donnees d'un eleve cible par @s. A adapter et
# relancer (en remplacant la valeur) a chaque fois que le staff veut modifier
# la classe, le dortoir ou le planning d'un eleve. Voir le README pour le
# detail du format attendu par chaque champ.

data merge entity @s {academie:{classe:"1ere Annee - Alchimie",dortoir:"Dortoir des Salamandres",planning:"Lundi: Potions 9h\\nMardi: Sortilege 10h",infos:"Aucune information particuliere."}}
tellraw @s ["",{"text":"[Academie] ","color":"light_purple"},{"text":"Donnees du carnet mises a jour.","color":"gray"}]
