$execute store result score @s ctf.tmp run scoreboard players get @s $(cd)
title @s actionbar [{"text":"Recharge : ","color":"gray"},{"score":{"name":"@s","objective":"ctf.tmp"},"color":"aqua"},{"text":"t","color":"gray"}]
