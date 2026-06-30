# Decompte le temps de partie et declenche la fin de partie a 0.
# Appele chaque tick tant que ctf.state vaut 1.

scoreboard players add game ctf.tick_acc 1
execute if score game ctf.tick_acc matches 20.. run function ctf:game/timer_second

execute if score game ctf.time_left matches ..0 run function ctf:game/time_up
