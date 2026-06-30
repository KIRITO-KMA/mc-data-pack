$tag @s add has_flag
$tag @s add flag_$(color)
$effect give @s slowness 999999 0 true
$tellraw @a ["",{"text":"[CTF] ","color":"aqua","bold":true},{"selector":"@s"},{"text":" a capture le drapeau ","color":"yellow"},{"text":"$(color)","color":"white"},{"text":" !","color":"yellow"}]
