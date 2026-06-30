# Appele chaque tick sur les snowballs "Encre de Seiche" en vol (voir tick_items.mcfunction)
execute if entity @s[nbt={onGround:1b}] run function ctf:items/ink_grenade_burst
execute unless entity @s[nbt={onGround:1b}] if entity @s[nbt={Age:20..}] run function ctf:items/ink_grenade_burst
