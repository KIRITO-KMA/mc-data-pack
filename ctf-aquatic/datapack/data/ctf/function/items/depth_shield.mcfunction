execute unless score @s ctf.cd_shield matches 1.. run function ctf:items/depth_shield_do
execute if score @s ctf.cd_shield matches 1.. run function ctf:items/cooldown_feedback {cd:"ctf.cd_shield"}
