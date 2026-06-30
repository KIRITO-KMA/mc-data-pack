scoreboard players set @s ctf.cd_sonar 300
playsound minecraft:block.sculk_sensor.clicking player @s ~ ~ ~ 1 0.6
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1

execute as @s[team=red] at @s run effect give @e[team=blue,distance=..30] glowing 8 0 true
execute as @s[team=blue] at @s run effect give @e[team=red,distance=..30] glowing 8 0 true
