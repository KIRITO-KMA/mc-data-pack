# Fin du temps imparti : l'equipe avec le plus de points gagne.

execute if score red ctf.score > blue ctf.score run function ctf:game/win {team:"red"}
execute if score blue ctf.score > red ctf.score run function ctf:game/win {team:"blue"}
execute if score red ctf.score = blue ctf.score run function ctf:game/draw
