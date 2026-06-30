execute unless score @s ctf.cd_trident matches 1.. run function ctf:items/trident_dash_do
execute if score @s ctf.cd_trident matches 1.. run function ctf:items/cooldown_feedback {cd:"ctf.cd_trident"}
