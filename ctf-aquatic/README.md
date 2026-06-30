# CTF Aquatic

Data pack mini-jeu CTF (Capture the Flag) générique, pensé pour une map aquatique
submergée, mais adaptable à n'importe quelle map.

## Installation

1. Copier `ctf-aquatic/datapack/` dans le dossier `datapacks` du monde.
2. (Optionnel) Copier `ctf-aquatic/resourcepack/` dans `resourcepacks` et
   l'activer — les textures custom des items ne sont visibles qu'avec ce
   resource pack.
3. `/reload`

Au `/reload`, le data pack s'auto-enregistre (scoreboards, équipes) — aucune
commande à taper pour préparer le terrain.

## Préparer une map (map maker)

Pas besoin d'écrire de commandes `/summon` à la main : utilisez les baguettes.

```
/function ctf:setup/give_wands
```

Donne 6 bâtons nommés (un par marqueur). Pour chacun : placez-vous à
l'endroit voulu et **clic droit sur un bloc** (ex. le sol) pour poser le
marqueur. Reposer une baguette du même type **déplace** le marqueur existant
au lieu d'en créer un doublon.

| Baguette          | Rôle                                      |
|--------------------|---------------------------------------------|
| Drapeau Rouge       | Emplacement où apparaît le drapeau rouge     |
| Drapeau Bleu        | Emplacement où apparaît le drapeau bleu      |
| Base Rouge          | Zone de dépôt de l'équipe rouge (rayon 2)    |
| Base Bleue          | Zone de dépôt de l'équipe bleue (rayon 2)    |
| Spawn Rouge         | Point de respawn équipe rouge                |
| Spawn Bleu          | Point de respawn équipe bleue                |

(Possible aussi à la main si besoin : `/summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["ctf_flag_red_spawn"]}`)

## Lancer une partie

1. Répartir les joueurs : `/team join red <joueur>` / `/team join blue <joueur>`
2. (Optionnel) Changer la durée de la partie en secondes (600 s = 10 min par
   défaut) : `/scoreboard players set game ctf.match_seconds 900`
3. `/function ctf:setup/init`

Cette commande vérifie que tous les marqueurs et les deux équipes sont prêts.
S'il manque quelque chose, un message clair l'indique et la partie ne démarre
pas — vous pouvez corriger puis relancer `ctf:setup/init` sans risque.

Quand tout est prêt : drapeaux posés, kits distribués, joueurs téléportés à
leur spawn, partie lancée. Un compte à rebours s'affiche en permanence dans
l'action bar. À la fin du temps imparti, **l'équipe avec le plus de points
gagne** (égalité possible). Capturer des drapeaux ne met pas fin à la partie
avant l'heure — seul le chrono décide.

Pour arrêter une partie en cours sans la relancer : `/function ctf:setup/stop`

## Items custom

| Item               | Base          | Capacité (clic droit / maintenu)                          | Cooldown |
|---------------------|---------------|-----------------------------------------------------------|----------|
| Trident de Courant  | Trident       | Dash dans la direction du regard                            | 3 s      |
| Encre de Seiche     | Boule de neige| Grenade : nuage d'encre, cécité + obscurité aux ennemis proches | -        |
| Écaille de Nautile  | Bouclier      | Résistance + respiration aquatique                           | 10 s     |
| Sonar               | Longue-vue    | Révèle les ennemis proches (glowing)                          | 15 s     |
| Potion de Courant   | Potion        | Speed + soin instantané (effet vanilla via la potion)         | -        |

Un message d'action bar indique le temps de recharge restant si vous essayez
de réutiliser un item trop tôt. Tous les joueurs reçoivent une respiration
aquatique infinie (Conduit Power) pour pouvoir jouer sereinement sous l'eau.

## Structure

```
ctf-aquatic/
├── README.md
├── datapack/        # data pack (logique du jeu)
└── resourcepack/     # resource pack (textures/modèles des items custom)
```

Les textures (`resourcepack/assets/ctf/textures/item/*.png`) sont à fournir :
ce dépôt contient la structure et les modèles JSON, pas l'art final.

## Détails techniques

- `data/ctf/function/setup/register.mcfunction` tourne automatiquement au
  `/reload` (tag `minecraft:load`) : crée les scoreboards/équipes, ne touche
  jamais aux scores ni à une partie en cours.
- `data/ctf/function/game/tick.mcfunction` tourne chaque tick (tag
  `minecraft:tick`) tant que `ctf.state` vaut 1 : détection de drapeau,
  respawn, cooldowns, items.
- Le drapeau est une vraie bannière posable/cassable. Le porteur est repéré
  via le tag `has_flag` et un ralentissement léger.
