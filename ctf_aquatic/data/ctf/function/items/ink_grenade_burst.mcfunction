tag @s add ctf_handled
particle minecraft:squid_ink ~ ~ ~ 1 1 1 0.02 80
playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 1 1
effect give @e[distance=..4,limit=10,sort=nearest] blindness 3 0 true
effect give @e[distance=..4,limit=10,sort=nearest] darkness 3 0 true
kill @s
