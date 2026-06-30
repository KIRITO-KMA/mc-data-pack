# Academie Sillycium

Data pack vanilla pour du RP magique d'ecole, cible **Minecraft 1.20.1**
(compatible serveur Mohist : ce data pack ne depend d'aucun mod/plugin,
seulement de vanilla).

> 1.20.1 ne supporte ni les macros de fonction (`$(...)`, ajoutees en
> 1.20.2) ni la syntaxe "item components" du `/give` (ajoutee en 1.20.5).
> Tous les items custom de ce pack utilisent donc du NBT classique
> (`{academie:{...}}`), et il n'y a pas de `/random` : la "fumee de
> cheminee" simule un vent en cyclant 8 directions selon l'heure du monde.

## Installation

1. Copier `datapack/` dans `<monde>/datapacks/academie-sillycium`.
2. `/reload` (ou redemarrer le monde). Un message de confirmation
   s'affiche a tous les joueurs en ligne.
3. Le setup est idempotent : relancer `/reload` ne reinitialise jamais les
   reglages deja en place (vitesse du temps, horaires de cloche, etc.).

## La montre

```
/function academie:montre/give
```
Donne une montre magique (horloge). Clic-droit sur un bloc pour afficher
l'heure RP actuelle dans l'action bar (calculee depuis `time query daytime`,
6h = lever du jour). Les minutes ne sont pas affichees avec un zero devant
(`9h5` au lieu de `9h05`).

## Controle du temps

Fonctions a lancer par le staff (operateur) :

| Fonction | Effet |
|---|---|
| `academie:time/pause` | Fige le temps |
| `academie:time/normal` | Vitesse normale (1x) |
| `academie:time/x2` | Journees 2x plus rapides |
| `academie:time/x4` | Journees 4x plus rapides |
| `academie:time/slow2` | Journees 2x plus longues |
| `academie:time/slow4` | Journees 4x plus longues |
| `academie:time/skip_morning` | Saute directement au matin |
| `academie:time/skip_noon` | Saute directement a midi |
| `academie:time/skip_evening` | Saute directement au soir |
| `academie:time/skip_night` | Saute directement a la nuit |

Le data pack desactive `doDaylightCycle` au chargement pour piloter le temps
lui-meme (vitesse stockee dans le scoreboard `academie.time_speed`).

## La cloche

### Sonner manuellement

| Fonction | Portee | Usage |
|---|---|---|
| `academie:cloche/sonner_courte` | 40 blocs | rentree de classe |
| `academie:cloche/sonner_normale` | 60 blocs | changement de cours |
| `academie:cloche/sonner_longue` | 120 blocs | alerte/evenement general |

Le son et le message partent du marqueur `academie_cloche_main`. Pour le
placer/deplacer :
```
/function academie:cloche/give_wand
```
puis clic-droit sur le bloc qui doit servir de point d'emission (ex : en
haut de la tour de la cloche).

### Sonner automatiquement (horaires programmes)

6 emplacements d'horaire configurables (`s1` a `s6`). Pour chacun, definir
heure, minute, type de sonnerie (0 = courte, 1 = normale, 2 = longue) et
l'activer :
```
scoreboard players set game academie.s1_hh 8
scoreboard players set game academie.s1_mm 0
scoreboard players set game academie.s1_type 1
scoreboard players set game academie.s1_on 1
```
Puis activer le systeme automatique :
```
/function academie:cloche/auto_on
/function academie:cloche/auto_off
```
Les manuelles restent disponibles meme avec l'automatique active.

## Fumee de cheminee

```
/function academie:fumee/give_wand
```
Clic-droit en haut de chaque cheminee pour y ajouter de la fumee animee.
Elle derive automatiquement dans une direction qui change toutes les
~10 secondes RP (simulant un vent), sans configuration supplementaire.

## Carnet magique

```
/function academie:carnet/give
```
Donne un livre dont les pages affichent en direct les donnees stockees sur
l'eleve (classe / dortoir / planning / infos). Le staff edite ces donnees
directement sur le joueur cible (`@s` = l'eleve vise par la commande) :
```
data merge entity <eleve> {academie:{classe:"1ere Annee - Alchimie",dortoir:"Dortoir des Salamandres",planning:"Lundi: Potions 9h\nMardi: Sortilege 10h",infos:"RAS"}}
```
Voir `academie:carnet/exemple_init` pour un modele a copier/adapter. Le
livre se met a jour automatiquement a chaque ouverture, sans avoir besoin
de le redonner.

## Cles et portes verrouillables

Les portes verrouillables sont des **portes en fer** (`iron_door`), qui ne
s'ouvrent pas au clic-droit en vanilla — seule la fonction de bascule peut
les ouvrir/fermer, via une cle dediee.

Une porte d'exemple est fournie (`dortoir1`) :
- `academie:cles/give_cle_dortoir1` donne la cle.
- Clic-droit avec la cle sur la porte (marquee `academie_porte_dortoir1`)
  l'ouvre ou la ferme.

### Ajouter une nouvelle porte

1. Placer la porte en fer (2 blocs, bas + haut) a l'endroit voulu.
2. Marquer son bas : `/summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["academie_porte_<id>"]}`
3. Dupliquer `function/cles/porte_dortoir1_toggle.mcfunction` en
   remplacant `academie_porte_dortoir1` par `academie_porte_<id>`.
4. Dupliquer `advancement/door/dortoir1.json` en remplacant `dortoir1` par
   `<id>` (cle `nbt` et `function` cible).
5. Dupliquer `function/cles/give_cle_dortoir1.mcfunction` en changeant le
   nom affiche et `academie:{key:"<id>"}`.
6. `/reload`.

## Limitations connues

- Pas de zero devant les minutes affichees par la montre (`9h5`).
- Pas de `/random` en 1.20.1 : le vent de la fumee de cheminee est
  deterministe (cycle base sur l'heure du monde), pas vraiment aleatoire.
- Chaque porte verrouillable necessite de dupliquer 3 fichiers (pas de
  macros disponibles en 1.20.1 pour generaliser).
