# Affiche l'heure RP a celui qui consulte sa montre. Recompense de
# l'advancement academie:item/use_montre, s'execute "as" le joueur.

advancement revoke @s only academie:item/use_montre

execute store result score game academie.daytime run time query daytime

scoreboard players operation game academie.hh = game academie.daytime
scoreboard players operation game academie.hh /= c1000 academie.const
scoreboard players add game academie.hh 6
scoreboard players operation game academie.hh %= c24 academie.const

scoreboard players operation game academie.mm = game academie.daytime
scoreboard players operation game academie.mm %= c1000 academie.const
scoreboard players operation game academie.mm *= c60 academie.const
scoreboard players operation game academie.mm /= c1000 academie.const

title @s actionbar [{"text":"⏰ Il est ","color":"aqua"},{"score":{"name":"game","objective":"academie.hh"},"color":"white"},{"text":"h","color":"aqua"},{"score":{"name":"game","objective":"academie.mm"},"color":"white"}]
playsound minecraft:block.note_block.bell player @s ~ ~ ~ 0.6 2
