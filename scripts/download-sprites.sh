#!/usr/bin/env bash
# =============================================================================
# Descarga los sprites de Gen 1 (1-151) en gráficos de 5ª generación (black-white).
#   - Frontal normal  : https://img.pokemondb.net/sprites/black-white/anim/normal/{name}.gif
#   - Frontal shiny   : https://img.pokemondb.net/sprites/black-white/anim/shiny/{name}.gif
#   - Trasero normal  : repo de sprites de PokeAPI (la misma familia Gen 5; pokemondb no aloja backs)
#   - Trasero shiny   : repo de sprites de PokeAPI
# Uso: bash scripts/download-sprites.sh
# =============================================================================
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DIR_FRONT="$ROOT/assets/sprites/front"
DIR_SHINY="$ROOT/assets/sprites/shiny"
DIR_BACK="$ROOT/assets/sprites/back"
DIR_BACK_SHINY="$ROOT/assets/sprites/back/shiny"
mkdir -p "$DIR_FRONT" "$DIR_SHINY" "$DIR_BACK" "$DIR_BACK_SHINY"

POKEMONDB="https://img.pokemondb.net/sprites/black-white/anim"
POKEAPI="https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated"

# Mapa id -> nombre (formato pokemondb/PokeAPI, en minúsculas con guiones)
NAMES=$(cat <<'EOF'
1 bulbasaur
2 ivysaur
3 venusaur
4 charmander
5 charmeleon
6 charizard
7 squirtle
8 wartortle
9 blastoise
10 caterpie
11 metapod
12 butterfree
13 weedle
14 kakuna
15 beedrill
16 pidgey
17 pidgeotto
18 pidgeot
19 rattata
20 raticate
21 spearow
22 fearow
23 ekans
24 arbok
25 pikachu
26 raichu
27 sandshrew
28 sandslash
29 nidoran-f
30 nidorina
31 nidoqueen
32 nidoran-m
33 nidorino
34 nidoking
35 clefairy
36 clefable
37 vulpix
38 ninetales
39 jigglypuff
40 wigglytuff
41 zubat
42 golbat
43 oddish
44 gloom
45 vileplume
46 paras
47 parasect
48 venonat
49 venomoth
50 diglett
51 dugtrio
52 meowth
53 persian
54 psyduck
55 golduck
56 mankey
57 primeape
58 growlithe
59 arcanine
60 poliwag
61 poliwhirl
62 poliwrath
63 abra
64 kadabra
65 alakazam
66 machop
67 machoke
68 machamp
69 bellsprout
70 weepinbell
71 victreebel
72 tentacool
73 tentacruel
74 geodude
75 graveler
76 golem
77 ponyta
78 rapidash
79 slowpoke
80 slowbro
81 magnemite
82 magneton
83 farfetchd
84 doduo
85 dodrio
86 seel
87 dewgong
88 grimer
89 muk
90 shellder
91 cloyster
92 gastly
93 haunter
94 gengar
95 onix
96 drowzee
97 hypno
98 krabby
99 kingler
100 voltorb
101 electrode
102 exeggcute
103 exeggutor
104 cubone
105 marowak
106 hitmonlee
107 hitmonchan
108 lickitung
109 koffing
110 weezing
111 rhyhorn
112 rhydon
113 chansey
114 tangela
115 kangaskhan
116 horsea
117 seadra
118 goldeen
119 seaking
120 staryu
121 starmie
122 mr-mime
123 scyther
124 jynx
125 electabuzz
126 magmar
127 pinsir
128 tauros
129 magikarp
130 gyarados
131 lapras
132 ditto
133 eevee
134 vaporeon
135 jolteon
136 flareon
137 porygon
138 omanyte
139 omastar
140 kabuto
141 kabutops
142 aerodactyl
143 snorlax
144 articuno
145 zapdos
146 moltres
147 dratini
148 dragonair
149 dragonite
150 mewtwo
151 mew
EOF
)

fetch() { # url outfile
  curl -sfL --retry 4 --retry-delay 1 --connect-timeout 10 -o "$2" "$1" && [ -s "$2" ]
}
export -f fetch
export POKEMONDB POKEAPI DIR_FRONT DIR_SHINY DIR_BACK DIR_BACK_SHINY

echo "Descargando 604 sprites (front/shiny/back/back-shiny de 1-151)..."
echo "$NAMES" | xargs -P 8 -L 1 bash -c '
  id="$1"; name="$2"
  ok=1
  fetch "$POKEMONDB/normal/$name.gif" "$DIR_FRONT/$id.gif"      || ok=0
  fetch "$POKEMONDB/shiny/$name.gif"  "$DIR_SHINY/$id.gif"      || ok=0
  fetch "$POKEAPI/back/$id.gif"       "$DIR_BACK/$id.gif"       || ok=0
  fetch "$POKEAPI/back/shiny/$id.gif" "$DIR_BACK_SHINY/$id.gif" || ok=0
  [ $ok -eq 1 ] || echo "FALLO: $id ($name)"
' _

# ============================================================================
# Corrección anti-regiones: el archivo back/19.gif del repo de PokeAPI contiene
# la forma de ALOLA de Rattata (el usuario no quiere versiones regionales).
# Se sobrescribe con el back animado Gen 5 de Smogon (forma de Kanto).
# ============================================================================
SMOGON_BACK="https://play.pokemonshowdown.com/sprites/ani-back/rattata.gif"
if ! fetch "$SMOGON_BACK" "$DIR_BACK/19.gif"; then
  echo "FALLO override Rattata (Kanto) desde Smogon"
fi

echo ""
echo "=== Verificación ==="
TOTAL=0
for d in front shiny back back/shiny; do
  n=$(ls "$DIR_FRONT/../$d"/*.gif 2>/dev/null | wc -l | tr -d ' ')
  sz=$(du -sh "$ROOT/assets/sprites/$d" 2>/dev/null | cut -f1)
  TOTAL=$((TOTAL + n))
  echo "  assets/sprites/$d: $n archivos ($sz)"
done
echo "  Total: $TOTAL archivos ($(du -sh "$ROOT/assets/sprites" | cut -f1))"
if [ "$TOTAL" -lt 604 ]; then
  echo "⚠️  Faltan archivos (esperados 604). Vuelve a ejecutar el script para reintentar los fallidos."
  exit 1
fi
echo "✅ Descarga completa."
