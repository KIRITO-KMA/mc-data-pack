# Tourne une fois par seconde reelle (voir timer.mcfunction).

scoreboard players set game ctf.tick_acc 0
scoreboard players remove game ctf.time_left 1

scoreboard players operation game ctf.tmp = game ctf.time_left
scoreboard players operation game ctf.tmp /= const ctf.const
scoreboard players operation game ctf.tmp2 = game ctf.time_left
scoreboard players operation game ctf.tmp2 %= const ctf.const

title @a actionbar [{"text":"Temps restant : ","color":"gray"},{"score":{"name":"game","objective":"ctf.tmp"},"color":"aqua"},{"text":"m","color":"gray"},{"score":{"name":"game","objective":"ctf.tmp2"},"color":"aqua"},{"text":"s","color":"gray"}]
