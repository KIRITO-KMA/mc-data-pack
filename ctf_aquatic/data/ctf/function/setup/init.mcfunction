# CTF Aquatic - Demarre une partie : /function ctf:setup/init
# Doit etre lance APRES avoir place les marqueurs (voir ctf:setup/wand
# ou le README) et reparti les joueurs dans les equipes red/blue.

function ctf:setup/register
function ctf:setup/check_markers

execute if score check ctf.state matches 1 run function ctf:setup/start
