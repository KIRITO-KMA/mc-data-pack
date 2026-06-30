$scoreboard players set check ctf.state 0
$tellraw @a ["",{"text":"[CTF] ","color":"red","bold":true},{"text":"Marqueur manquant : ","color":"red"},{"text":"$(tag)","color":"yellow"}]
