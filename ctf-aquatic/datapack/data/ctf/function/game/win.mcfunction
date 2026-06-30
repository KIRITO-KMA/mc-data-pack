scoreboard players set game ctf.state 0
$tellraw @a ["",{"text":"[CTF] ","color":"aqua","bold":true},{"text":"L'equipe $(team) remporte la partie ! (","color":"gold","bold":true},{"score":{"name":"red","objective":"ctf.score"},"color":"red"},{"text":" - ","color":"gold"},{"score":{"name":"blue","objective":"ctf.score"},"color":"blue"},{"text":")","color":"gold"}]
$title @a title {"text":"Victoire $(team) !","color":"gold"}
playsound minecraft:entity.ender_dragon.death master @a ~ ~ ~ 1 1
