$kill @e[type=armor_stand,tag=$(tag)]
$execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["ctf_marker","$(tag)"]}
$playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.5
$tellraw @s ["",{"text":"[CTF] ","color":"aqua","bold":true},{"text":"Marqueur place : ","color":"gray"},{"text":"$(label)","color":"yellow"}]
