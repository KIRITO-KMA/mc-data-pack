# Verifie une fois par minute RP si une sonnerie automatique est programmee.
# N'appelle academie:cloche/check_schedule que lors d'un changement de minute,
# pour eviter de re-sonner en boucle sur les ticks d'une meme minute.

execute store result score game academie.daytime run time query daytime

scoreboard players operation game academie.hh = game academie.daytime
scoreboard players operation game academie.hh /= c1000 academie.const
scoreboard players add game academie.hh 6
scoreboard players operation game academie.hh %= c24 academie.const

scoreboard players operation game academie.mm = game academie.daytime
scoreboard players operation game academie.mm %= c1000 academie.const
scoreboard players operation game academie.mm *= c60 academie.const
scoreboard players operation game academie.mm /= c1000 academie.const

execute unless score game academie.mm = game academie.last_mm run function academie:cloche/check_schedule
scoreboard players operation game academie.last_mm = game academie.mm
