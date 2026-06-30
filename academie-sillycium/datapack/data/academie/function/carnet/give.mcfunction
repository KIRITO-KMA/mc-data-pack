# Carnet magique : livre "vivant" dont les pages lisent en direct les
# donnees stockees sur l'entite joueur (academie:{classe,dortoir,planning}).
# Le staff renseigne ces donnees via /data merge entity <joueur> {...},
# voir carnet/exemple_data.mcfunction et le README pour le format.

give @s written_book{display:{Name:'{"text":"Carnet Magique","italic":false,"color":"light_purple"}'},academie:{item:"carnet"},title:"Carnet Magique",author:"Academie Sillycium",pages:['[{"text":"=== Carnet Magique ===\\n\\n","bold":true,"color":"dark_purple"},{"text":"Classe : ","color":"black"},{"nbt":"academie.classe","entity":"@s","color":"dark_blue"},{"text":"\\nDortoir : ","color":"black"},{"nbt":"academie.dortoir","entity":"@s","color":"dark_blue"}]','[{"text":"=== Planning ===\\n\\n","bold":true,"color":"dark_purple"},{"nbt":"academie.planning","entity":"@s","interpret":false,"color":"black"}]','[{"text":"=== Infos diverses ===\\n\\n","bold":true,"color":"dark_purple"},{"nbt":"academie.infos","entity":"@s","interpret":false,"color":"black"}]']}
