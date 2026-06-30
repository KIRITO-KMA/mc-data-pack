execute unless score @s ctf.cd_sonar matches 1.. run function ctf:items/sonar_pulse_do
execute if score @s ctf.cd_sonar matches 1.. run function ctf:items/cooldown_feedback {cd:"ctf.cd_sonar"}
