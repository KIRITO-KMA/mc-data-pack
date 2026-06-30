# Enregistrement automatique (tourne a chaque /reload). Idempotent.

scoreboard objectives add academie.enabled dummy
scoreboard objectives add academie.time_speed dummy
scoreboard objectives add academie.time_acc dummy
scoreboard objectives add academie.daytime dummy
scoreboard objectives add academie.hh dummy
scoreboard objectives add academie.mm dummy
scoreboard objectives add academie.wind_dir dummy
scoreboard objectives add academie.const dummy

scoreboard objectives add academie.cloche_auto dummy
scoreboard objectives add academie.door_state dummy
scoreboard objectives add academie.last_mm dummy
scoreboard objectives add academie.s1_hh dummy
scoreboard objectives add academie.s1_mm dummy
scoreboard objectives add academie.s1_type dummy
scoreboard objectives add academie.s1_on dummy
scoreboard objectives add academie.s2_hh dummy
scoreboard objectives add academie.s2_mm dummy
scoreboard objectives add academie.s2_type dummy
scoreboard objectives add academie.s2_on dummy
scoreboard objectives add academie.s3_hh dummy
scoreboard objectives add academie.s3_mm dummy
scoreboard objectives add academie.s3_type dummy
scoreboard objectives add academie.s3_on dummy
scoreboard objectives add academie.s4_hh dummy
scoreboard objectives add academie.s4_mm dummy
scoreboard objectives add academie.s4_type dummy
scoreboard objectives add academie.s4_on dummy
scoreboard objectives add academie.s5_hh dummy
scoreboard objectives add academie.s5_mm dummy
scoreboard objectives add academie.s5_type dummy
scoreboard objectives add academie.s5_on dummy
scoreboard objectives add academie.s6_hh dummy
scoreboard objectives add academie.s6_mm dummy
scoreboard objectives add academie.s6_type dummy
scoreboard objectives add academie.s6_on dummy

execute unless score game academie.enabled matches -2147483648..2147483647 run scoreboard players set game academie.enabled 1
execute unless score game academie.time_speed matches -2147483648..2147483647 run scoreboard players set game academie.time_speed 20
execute unless score game academie.cloche_auto matches -2147483648..2147483647 run scoreboard players set game academie.cloche_auto 0
execute unless score game academie.last_mm matches -2147483648..2147483647 run scoreboard players set game academie.last_mm -1

scoreboard players set c1000 academie.const 1000
scoreboard players set c60 academie.const 60
scoreboard players set c24 academie.const 24
scoreboard players set c8 academie.const 8
scoreboard players set c1200 academie.const 1200

gamerule doDaylightCycle false

tellraw @a ["",{"text":"[Academie Sillycium] ","color":"light_purple"},{"text":"Data pack charge.","color":"gray"}]
