# CTF Aquatic

Data pack mini-jeu CTF (Capture the Flag) générique, pensé pour une map aquatique
submergée, mais adaptable à n'importe quelle map.

## Installation

1. Copier `ctf_aquatic/` dans le dossier `datapacks` du monde.
2. (Optionnel) Copier `ctf_aquatic_rp/` dans `resourcepacks` et l'activer — les
   textures custom des items ne sont visibles qu'avec ce resource pack.
3. `/reload`

## Préparation de la map

Le data pack lit des marqueurs placés par le créateur de map (entités
`armor_stand` invisibles, taguées) :

| Tag                       | Rôle                                   |
|----------------------------|-----------------------------------------|
| `ctf_flag_red_spawn`       | Emplacement où apparaît le drapeau rouge |
| `ctf_flag_blue_spawn`      | Emplacement où apparaît le drapeau bleu  |
| `ctf_base_red`              | Zone de dépôt de l'équipe rouge (rayon 2)|
| `ctf_base_blue`              | Zone de dépôt de l'équipe bleue (rayon 2)|
| `ctf_spawn_red`              | Point de respawn équipe rouge            |
| `ctf_spawn_blue`              | Point de respawn équipe bleue            |

Exemple de pose d'un marqueur :
```
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["ctf_flag_red_spawn"]}
```

## Lancer une partie

```
/function ctf:setup/init
```

Met les joueurs en équipe (commande `/team join`), pose les drapeaux, donne le
kit de départ et démarre la boucle de jeu.

## Items custom

| Item               | Base          | Capacité (clic droit / maintenu)                          |
|---------------------|---------------|-------------------------------------------------------------|
| Trident de Courant  | Trident       | Dash dans la direction du regard (cooldown 3s)               |
| Encre de Seiche     | Boule de neige| Grenade : nuage d'encre, cécité + obscurité aux ennemis proches |
| Écaille de Nautile  | Bouclier      | Résistance + respiration aquatique (cooldown 10s)            |
| Sonar               | Longue-vue    | Révèle les ennemis proches (glowing, cooldown 15s)            |
| Potion de Courant   | Potion        | Speed + soin instantané (effet vanilla via la potion)         |

## Structure

```
ctf_aquatic/        # data pack (logique du jeu)
ctf_aquatic_rp/      # resource pack (textures/modèles des items custom)
```

Les textures (`ctf_aquatic_rp/assets/ctf/textures/item/*.png`) sont à fournir :
ce dépôt contient la structure et les modèles JSON, pas l'art final.
