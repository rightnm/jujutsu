playanimation @s animation.finger_bearer.hit2

tag @s[tag=!120percent,tag=heavenlyrestriction_mechimaru,scores={endurance=20..}] add cant
tag @s[tag=heavenlyrestriction_mechimaru,tag=120percent,scores={endurance=24..}] add cant
tag @s[tag=120percent,tag=!heavenlyrestriction_mechimaru,scores={endurance=120..}] add cant
tag @s[tag=!120percent,tag=!heavenlyrestriction_mechimaru,scores={endurance=100..}] add cant

execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={endurance=19},tag=!120percent,tag=heavenlyrestriction_mechimaru] endurance 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={endurance=23},tag=120percent,tag=heavenlyrestriction_mechimaru] endurance 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={endurance=99},tag=!120percent,tag=!heavenlyrestriction_mechimaru] endurance 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={endurance=119},tag=120percent,tag=!heavenlyrestriction_mechimaru] endurance 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={endurance=!20..},tag=!120percent,tag=heavenlyrestriction_mechimaru] endurance 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={endurance=!24..},tag=120percent,tag=heavenlyrestriction_mechimaru] endurance 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={endurance=!100..},tag=!120percent,tag=!heavenlyrestriction_mechimaru] endurance 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={endurance=!120..},tag=120percent,tag=!heavenlyrestriction_mechimaru] endurance 2
tellraw @p[r=0.2,tag=!cant] {"rawtext":[{"text":"\n§r§o§eYou crushed the crystal...\n\n§e+2 §aEndurance"}]}
effect @s regeneration 5 2 true

effect @p[r=0.2,scores={endurance=1},tag=!cant] health_boost 99999999 5 true
effect @p[r=0.2,scores={endurance=2},tag=!cant] health_boost 99999999 6 true
effect @p[r=0.2,scores={endurance=3},tag=!cant] health_boost 99999999 7 true
effect @p[r=0.2,scores={endurance=4},tag=!cant] health_boost 99999999 8 true
effect @p[r=0.2,scores={endurance=5},tag=!cant] health_boost 99999999 9 true
effect @p[r=0.2,scores={endurance=6},tag=!cant] health_boost 99999999 10 true
effect @p[r=0.2,scores={endurance=7},tag=!cant] health_boost 99999999 11 true
effect @p[r=0.2,scores={endurance=8},tag=!cant] health_boost 99999999 12 true
effect @p[r=0.2,scores={endurance=9},tag=!cant] health_boost 99999999 13 true
effect @p[r=0.2,scores={endurance=10},tag=!cant] health_boost 99999999 14 true
effect @p[r=0.2,scores={endurance=11},tag=!cant] health_boost 99999999 15 true
effect @p[r=0.2,scores={endurance=12},tag=!cant] health_boost 99999999 16 true
effect @p[r=0.2,scores={endurance=13},tag=!cant] health_boost 99999999 17 true
effect @p[r=0.2,scores={endurance=14},tag=!cant] health_boost 99999999 18 true
effect @p[r=0.2,scores={endurance=15},tag=!cant] health_boost 99999999 19 true
effect @p[r=0.2,scores={endurance=16},tag=!cant] health_boost 99999999 20 true
effect @p[r=0.2,scores={endurance=17},tag=!cant] health_boost 99999999 21 true
effect @p[r=0.2,scores={endurance=18},tag=!cant] health_boost 99999999 22 true
effect @p[r=0.2,scores={endurance=19},tag=!cant] health_boost 99999999 23 true
effect @p[r=0.2,scores={endurance=20},tag=!cant] health_boost 99999999 24 true
effect @p[r=0.2,scores={endurance=21},tag=!cant] health_boost 99999999 25 true
effect @p[r=0.2,scores={endurance=22},tag=!cant] health_boost 99999999 26 true
effect @p[r=0.2,scores={endurance=23},tag=!cant] health_boost 99999999 27 true
effect @p[r=0.2,scores={endurance=24},tag=!cant] health_boost 99999999 28 true
effect @p[r=0.2,scores={endurance=25},tag=!cant] health_boost 99999999 29 true
effect @p[r=0.2,scores={endurance=26},tag=!cant] health_boost 99999999 30 true
effect @p[r=0.2,scores={endurance=27},tag=!cant] health_boost 99999999 31 true
effect @p[r=0.2,scores={endurance=28},tag=!cant] health_boost 99999999 32 true
effect @p[r=0.2,scores={endurance=29},tag=!cant] health_boost 99999999 33 true
effect @p[r=0.2,scores={endurance=30},tag=!cant] health_boost 99999999 34 true
effect @p[r=0.2,scores={endurance=31},tag=!cant] health_boost 99999999 35 true
effect @p[r=0.2,scores={endurance=32},tag=!cant] health_boost 99999999 36 true
effect @p[r=0.2,scores={endurance=33},tag=!cant] health_boost 99999999 37 true
effect @p[r=0.2,scores={endurance=34},tag=!cant] health_boost 99999999 38 true
effect @p[r=0.2,scores={endurance=35},tag=!cant] health_boost 99999999 39 true
effect @p[r=0.2,scores={endurance=36},tag=!cant] health_boost 99999999 40 true
effect @p[r=0.2,scores={endurance=37},tag=!cant] health_boost 99999999 41 true
effect @p[r=0.2,scores={endurance=38},tag=!cant] health_boost 99999999 42 true
effect @p[r=0.2,scores={endurance=39},tag=!cant] health_boost 99999999 43 true
effect @p[r=0.2,scores={endurance=40},tag=!cant] health_boost 99999999 44 true
effect @p[r=0.2,scores={endurance=41},tag=!cant] health_boost 99999999 45 true
effect @p[r=0.2,scores={endurance=42},tag=!cant] health_boost 99999999 46 true
effect @p[r=0.2,scores={endurance=43},tag=!cant] health_boost 99999999 47 true
effect @p[r=0.2,scores={endurance=44},tag=!cant] health_boost 99999999 48 true
effect @p[r=0.2,scores={endurance=45},tag=!cant] health_boost 99999999 49 true
effect @p[r=0.2,scores={endurance=46},tag=!cant] health_boost 99999999 50 true
effect @p[r=0.2,scores={endurance=47},tag=!cant] health_boost 99999999 51 true
effect @p[r=0.2,scores={endurance=48},tag=!cant] health_boost 99999999 52 true
effect @p[r=0.2,scores={endurance=49},tag=!cant] health_boost 99999999 53 true
effect @p[r=0.2,scores={endurance=50},tag=!cant] health_boost 99999999 54 true
effect @p[r=0.2,scores={endurance=51},tag=!cant] health_boost 99999999 55 true
effect @p[r=0.2,scores={endurance=52},tag=!cant] health_boost 99999999 56 true
effect @p[r=0.2,scores={endurance=53},tag=!cant] health_boost 99999999 57 true
effect @p[r=0.2,scores={endurance=54},tag=!cant] health_boost 99999999 58 true
effect @p[r=0.2,scores={endurance=55},tag=!cant] health_boost 99999999 59 true
effect @p[r=0.2,scores={endurance=56},tag=!cant] health_boost 99999999 60 true
effect @p[r=0.2,scores={endurance=57},tag=!cant] health_boost 99999999 61 true
effect @p[r=0.2,scores={endurance=58},tag=!cant] health_boost 99999999 62 true
effect @p[r=0.2,scores={endurance=59},tag=!cant] health_boost 99999999 63 true
effect @p[r=0.2,scores={endurance=60},tag=!cant] health_boost 99999999 64 true
effect @p[r=0.2,scores={endurance=61},tag=!cant] health_boost 99999999 65 true
effect @p[r=0.2,scores={endurance=62},tag=!cant] health_boost 99999999 66 true
effect @p[r=0.2,scores={endurance=63},tag=!cant] health_boost 99999999 67 true
effect @p[r=0.2,scores={endurance=64},tag=!cant] health_boost 99999999 68 true
effect @p[r=0.2,scores={endurance=65},tag=!cant] health_boost 99999999 69 true
effect @p[r=0.2,scores={endurance=66},tag=!cant] health_boost 99999999 70 true
effect @p[r=0.2,scores={endurance=67},tag=!cant] health_boost 99999999 71 true
effect @p[r=0.2,scores={endurance=68},tag=!cant] health_boost 99999999 72 true
effect @p[r=0.2,scores={endurance=69},tag=!cant] health_boost 99999999 73 true
effect @p[r=0.2,scores={endurance=70},tag=!cant] health_boost 99999999 74 true
effect @p[r=0.2,scores={endurance=71},tag=!cant] health_boost 99999999 75 true
effect @p[r=0.2,scores={endurance=72},tag=!cant] health_boost 99999999 76 true
effect @p[r=0.2,scores={endurance=73},tag=!cant] health_boost 99999999 77 true
effect @p[r=0.2,scores={endurance=74},tag=!cant] health_boost 99999999 78 true
effect @p[r=0.2,scores={endurance=75},tag=!cant] health_boost 99999999 79 true
effect @p[r=0.2,scores={endurance=76},tag=!cant] health_boost 99999999 80 true
effect @p[r=0.2,scores={endurance=77},tag=!cant] health_boost 99999999 81 true
effect @p[r=0.2,scores={endurance=78},tag=!cant] health_boost 99999999 82 true
effect @p[r=0.2,scores={endurance=79},tag=!cant] health_boost 99999999 83 true
effect @p[r=0.2,scores={endurance=80},tag=!cant] health_boost 99999999 84 true
effect @p[r=0.2,scores={endurance=81},tag=!cant] health_boost 99999999 85 true
effect @p[r=0.2,scores={endurance=82},tag=!cant] health_boost 99999999 86 true
effect @p[r=0.2,scores={endurance=83},tag=!cant] health_boost 99999999 87 true
effect @p[r=0.2,scores={endurance=84},tag=!cant] health_boost 99999999 88 true
effect @p[r=0.2,scores={endurance=85},tag=!cant] health_boost 99999999 89 true
effect @p[r=0.2,scores={endurance=86},tag=!cant] health_boost 99999999 90 true
effect @p[r=0.2,scores={endurance=87},tag=!cant] health_boost 99999999 91 true
effect @p[r=0.2,scores={endurance=88},tag=!cant] health_boost 99999999 92 true
effect @p[r=0.2,scores={endurance=89},tag=!cant] health_boost 99999999 93 true
effect @p[r=0.2,scores={endurance=90},tag=!cant] health_boost 99999999 94 true
effect @p[r=0.2,scores={endurance=91},tag=!cant] health_boost 99999999 95 true
effect @p[r=0.2,scores={endurance=92},tag=!cant] health_boost 99999999 96 true
effect @p[r=0.2,scores={endurance=93},tag=!cant] health_boost 99999999 97 true
effect @p[r=0.2,scores={endurance=94},tag=!cant] health_boost 99999999 98 true
effect @p[r=0.2,scores={endurance=95},tag=!cant] health_boost 99999999 99 true
effect @p[r=0.2,scores={endurance=96},tag=!cant] health_boost 99999999 100 true
effect @p[r=0.2,scores={endurance=97},tag=!cant] health_boost 99999999 101 true
effect @p[r=0.2,scores={endurance=98},tag=!cant] health_boost 99999999 102 true
effect @p[r=0.2,scores={endurance=99},tag=!cant] health_boost 99999999 103 true
effect @p[r=0.2,scores={endurance=100},tag=!cant] health_boost 99999999 105 true
effect @p[r=0.2,scores={endurance=101},tag=!cant] health_boost 99999999 106 true
effect @p[r=0.2,scores={endurance=102},tag=!cant] health_boost 99999999 107 true
effect @p[r=0.2,scores={endurance=103},tag=!cant] health_boost 99999999 108 true
effect @p[r=0.2,scores={endurance=104},tag=!cant] health_boost 99999999 109 true
effect @p[r=0.2,scores={endurance=105},tag=!cant] health_boost 99999999 110 true
effect @p[r=0.2,scores={endurance=106},tag=!cant] health_boost 99999999 111 true
effect @p[r=0.2,scores={endurance=107},tag=!cant] health_boost 99999999 112 true
effect @p[r=0.2,scores={endurance=108},tag=!cant] health_boost 99999999 113 true
effect @p[r=0.2,scores={endurance=109},tag=!cant] health_boost 99999999 114 true
effect @p[r=0.2,scores={endurance=110},tag=!cant] health_boost 99999999 115 true
effect @p[r=0.2,scores={endurance=111},tag=!cant] health_boost 99999999 116 true
effect @p[r=0.2,scores={endurance=112},tag=!cant] health_boost 99999999 117 true
effect @p[r=0.2,scores={endurance=113},tag=!cant] health_boost 99999999 118 true
effect @p[r=0.2,scores={endurance=114},tag=!cant] health_boost 99999999 119 true
effect @p[r=0.2,scores={endurance=115},tag=!cant] health_boost 99999999 120 true
effect @p[r=0.2,scores={endurance=116},tag=!cant] health_boost 99999999 121 true
effect @p[r=0.2,scores={endurance=117},tag=!cant] health_boost 99999999 122 true
effect @p[r=0.2,scores={endurance=118},tag=!cant] health_boost 99999999 123 true
effect @p[r=0.2,scores={endurance=119},tag=!cant] health_boost 99999999 124 true
effect @p[r=0.2,scores={endurance=120},tag=!cant] health_boost 99999999 125 true


execute as @p[r=0.2,tag=!cant] at @s run playsound random.glass @a ~~~ 1 0.4
execute as @p[r=0.2,tag=!cant] at @s run playsound beacon.power @a ~~~ 1 1.75
tellraw @p[tag=cant,r=0.2] {"rawtext":[{"text":"§r§cYour body has reached it's limits..."}]}
execute as @p[r=0.2,tag=!cant] at @s run particle ds:undying_crystal1 ~~1~
execute as @p[r=0.2,tag=!cant] at @s run particle ds:undying_crystal2 ~~1~
execute as @p[r=0.2,tag=!cant] at @s run clear @s ds:undying_crystal 0 1
tag @s remove cant



