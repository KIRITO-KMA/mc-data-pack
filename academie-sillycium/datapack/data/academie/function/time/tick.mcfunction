# Avance le temps du monde selon academie.time_speed (en "ticks de jeu pour 20
# ticks reels", donc 20 = vitesse normale, 10 = journees 2x plus longues,
# 40 = journees 2x plus courtes, 0 = temps fige).

scoreboard players operation game academie.time_acc += game academie.time_speed

execute if score game academie.time_acc matches 20.. run function academie:time/advance_step
execute if score game academie.time_acc matches 20.. run function academie:time/advance_step
execute if score game academie.time_acc matches 20.. run function academie:time/advance_step
execute if score game academie.time_acc matches 20.. run function academie:time/advance_step
execute if score game academie.time_acc matches 20.. run function academie:time/advance_step

execute if score game academie.cloche_auto matches 1 run function academie:cloche/tick
