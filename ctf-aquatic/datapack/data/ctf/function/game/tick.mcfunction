execute if score game ctf.state matches 1 run function ctf:game/timer
execute if score game ctf.state matches 1 run function ctf:game/flag_check
execute if score game ctf.state matches 1 run function ctf:game/respawn
execute if score game ctf.state matches 1 run function ctf:items/tick_items
execute if score game ctf.state matches 1 as @a[scores={ctf.cd_trident=1..}] run scoreboard players remove @s ctf.cd_trident 1
execute if score game ctf.state matches 1 as @a[scores={ctf.cd_shield=1..}] run scoreboard players remove @s ctf.cd_shield 1
execute if score game ctf.state matches 1 as @a[scores={ctf.cd_sonar=1..}] run scoreboard players remove @s ctf.cd_sonar 1
