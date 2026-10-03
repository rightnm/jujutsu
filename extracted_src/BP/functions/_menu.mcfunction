scoreboard objectives add menubackground dummy
scoreboard objectives add menutimer dummy
scoreboard objectives add menutimer2 dummy
scoreboard objectives add menupage dummy
scoreboard objectives add menumusic dummy
scoreboard objectives add menuscroll dummy
scoreboard objectives add menuselect dummy
scoreboard objectives add human dummy
scoreboard objectives add timertick2 dummy
scoreboard objectives add common dummy
scoreboard objectives add uncommon dummy
scoreboard objectives add rare dummy
scoreboard objectives add exotic dummy
scoreboard objectives add honored dummy

execute unless entity @s[scores={menupage=0..}] run scoreboard players add @s menupage 0
execute unless entity @s[scores={menutimer=0..}] run scoreboard players add @s menutimer 0


scoreboard players add @s[scores={detect_jump=1..}] menuselect 1
scoreboard players remove @s[scores={menuCD=1..}] menuCD 1
execute unless entity @s[scores={menuselect=0}] run scoreboard players set @s[scores={detect_jump=0}] menuselect 0


camera @s fade time 0 1 0.5 color 0 0 0

tp @s ~ ~ ~ facing ~ ~-90 ~
scoreboard players set @s Frames 10
effect @a[tag=menu] invisibility 1 255 true

tag @a[tag=startscreen,tag=menuhome] remove menuhome
tag @a[tag=startscreen,tag=menuintro] remove menuintro
tag @a[scores={menupage=0},tag=!menuhome,tag=!menuintro,tag=!menurace,tag=!menuclans,tag=!menutraits,tag=!menutechnique,tag=!menufinal,tag=!menuhelp,tag=!menucredits,tag=!startscreen] add startscreen


execute as @s at @s run hud @s hide progress_bar
execute as @s at @s run hud @s hide health
execute as @s at @s run hud @s hide hotbar
execute as @s at @s run hud @s hide hunger
execute as @s at @s run hud @s hide armor
execute as @s at @s run hud @s hide crosshair



titleraw @s[tag=startscreen,scores={menutimer=0}] title {"rawtext":[{"text":"§l§oJump Sneak or Punch to Start"}]}

tag @s[tag=startscreen,scores={menutimer=0,punch=1},tag=!menuintro] add menuintro
tag @s[tag=startscreen,scores={menutimer=0,Sneaking=1},tag=!menuintro] add menuintro
tag @s[tag=startscreen,scores={menutimer=0,menuselect=1},tag=!menuintro] add menuintro
tag @s[tag=menuintro,tag=startscreen] remove startscreen

scoreboard players set @s[tag=!menuintro,tag=!rollingclan,tag=!rollingtrait,tag=!rollingtechnique,tag=!rolledclan,tag=!rolledtrait,tag=!rolledtechnique,tag=!menufinal,scores={menutimer=!0}] menutimer 0
scoreboard players add @s[tag=menuintro] menutimer 1
execute as @s[scores={menutimer=1},tag=menuintro,tag=!impactframesoff] at @s run playsound mob.button @s ~~~ 999999 0.75 999999
execute as @s[scores={menutimer=15..23},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"§l"}]}

inputpermission set @s[haspermission={movement=disabled}] movement enabled

execute as @s[scores={menutimer=24},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=30},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=36},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=42..70},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=42},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA                                \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=43},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA H                             \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=44},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA He                           \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=45},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Her                          \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=46},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Hero                        \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=47},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroi                       \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=48},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic                      \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=49},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic P                   \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=50},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Pr                  \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=51},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Pro                \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=52},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Prod              \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=53},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Produ            \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=54},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Produc          \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=55},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Product         \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=56},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Producti        \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=57},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Productio      \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=58},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Production    \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=59},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Productions  \n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=60},tag=menuintro] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§o§cA Heroic Productions...\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=84},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=78},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=72},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}

execute as @s[scores={menutimer=86..120},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"§l"}]}
execute as @s[scores={menutimer=70},tag=menuintro] at @s run playsound music.menuintro @s ~~~ 999999 1 999999

execute as @s[scores={menutimer=121},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=122},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=124},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=126},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=127},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=129},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=130},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=131},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=132},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=133},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=134},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=136},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=138},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=139},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=140},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=141},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=143},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=144},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=146},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=147},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=148},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=150},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=151},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=153},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=155},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=156},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=158},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=160},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=161..163},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=164..166},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=167..169},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=170..171},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=172..173},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=174..190},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"§l"}]}

execute as @s[scores={menutimer=195},tag=menuintro,tag=!musicoff] at @s run playsound music.menutheme @s ~~~ 999999 1 999999
execute as @s[scores={menutimer=191},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=193},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=195},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=196},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=197},tag=menuintro,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=197},tag=menuintro] at @s run scoreboard players set @s menubackground 1
execute as @s[scores={menutimer=197},tag=menuintro] at @s run scoreboard players set @s menuscroll 1

execute as @s[scores={menutimer=197},tag=menuintro] at @s run tag @s add menuhome
execute as @s[scores={menutimer=197},tag=menuintro] at @s run tag @s remove menuintro

scoreboard players add @s[scores={menubackground=0..},tag=menuhome] menutimer2 1
scoreboard players add @s[scores={menutimer2=180..,menubackground=0..14},tag=menuhome] menubackground 1
scoreboard players set @s[scores={menutimer2=180..,menubackground=15..},tag=menuhome] menubackground 1
scoreboard players set @s[scores={menutimer2=180..,menubackground=0..},tag=menuhome] menutimer2 0

scoreboard players add @s[scores={menubackground=0..},tag=menu] menumusic 1

execute as @s[scores={menumusic=2280..},tag=!musicoff,tag=!startscreen,tag=!menuintro,tag=!menufinal] at @s run playsound music.menutheme @s ~~~ 999999 1 999999
scoreboard players set @s[scores={menumusic=2280..}] menumusic 0

execute as @s[scores={menubackground=1},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=2},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=3},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=4},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=5},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=6},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=7},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=8},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=9},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=10},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=11},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=12},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=13},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=14},tag=menuhome,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}


execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1},tag=menuhome] at @s run playsound note.bd @s ~~~ 999999 1.4 999999
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1},tag=menuhome] at @s run scoreboard players add @s menuscroll 1
execute as @s[scores={menubackground=0..,menuscroll=4..,Sneaking=1},tag=menuhome] at @s run scoreboard players set @s menuscroll 1
execute as @s[scores={menubackground=0..,menuscroll=1},tag=menuhome] at @s run titleraw @s actionbar {"rawtext":[{"text":"                                                                                        \n\n\n\n\n\n\n                                                                                        \n\n\n\n\n\n\n                                                                                        \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menuscroll=2},tag=menuhome] at @s run titleraw @s actionbar {"rawtext":[{"text":"                                                                                        \n\n\n\n\n\n\n                                                                                        \n\n\n\n\n\n\n                                                                                        \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menuscroll=3},tag=menuhome] at @s run titleraw @s actionbar {"rawtext":[{"text":"                                                                                        \n\n\n\n\n\n\n                                                                                        \n\n\n\n\n\n\n                                                                                        \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

execute as @s[scores={menubackground=0..,menuscroll=1,menuselect=1},tag=menuhome] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=1,menuselect=1},tag=menuhome,tag=!menurace] at @s run tag @s add menurace
execute as @s[scores={menubackground=!0,menuscroll=1,menuselect=1},tag=menuhome] at @s run scoreboard players set @s menubackground 0
execute as @s[scores={menubackground=0..,menuscroll=1,menuselect=1},tag=menuhome] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuscroll=1,menuselect=1},tag=menuhome] at @s run function menu_racescreen

execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menuhome] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menuhome,tag=!menuhelp] at @s run tag @s add menuhelp
execute as @s[scores={menubackground=!0,menuscroll=2,menuselect=1},tag=menuhome] at @s run scoreboard players set @s menubackground 0
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menuhome] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menuhome] at @s run function menu_helpscreen

execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menuhome] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menuhome,tag=!menucredits] at @s run tag @s add menucredits
execute as @s[scores={menubackground=!0,menuscroll=3,menuselect=1},tag=menuhome] at @s run scoreboard players set @s menubackground 0
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menuhome] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menuhome] at @s run function menu_helpscreen


execute as @s[scores={menubackground=0..,menuselect=1},tag=menuhelp] at @s run playsound mob.button @s ~~~ 999999 1.25 999999
execute as @s[scores={menubackground=0..,menuselect=1},tag=menuhelp,tag=!menuhome] at @s run tag @s add menuhome
execute as @s[scores={menubackground=!1,menuselect=1},tag=menuhelp] at @s run scoreboard players set @s menubackground 1
execute as @s[scores={menubackground=0..,menuselect=1},tag=menuhelp] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuselect=1},tag=menuhelp] at @s run function menu_homescreenback

execute as @s[scores={menubackground=0},tag=menuhelp,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..},tag=menuhelp] at @s run titleraw @s actionbar {"rawtext":[{"text":"             Ability Controls:\nClick = Right-Click / LT / Tap Screen\nPunch = Left-Click / RT / Tap Screen/block/entity\nWhen it says 'jump or sneak' and click, make sure\nthat you HOLD the button and then press click.\n\nThis Addon is not recommended to play with more than 5-6 people due to delay/lag\nThis addon will not function well on realms.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                                           "}]}

execute as @s[scores={menubackground=0},tag=menucredits,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..},tag=menucredits] at @s run titleraw @s actionbar {"rawtext":[{"text":"             §l§aMade By Me:\n§r§l§cHeroic Productions:§r§o§e\n             - Models,Particles,Coding,Cutscenes,Abilities,Entities,ect§r\n\n             §gHowever people have helped me with certain things in the past:\n\n             §l§2Frogdog - helping with a few certain parts of code and being goated\n             §3GlitchyTurtle - for creating the passkey system, helping with a few certain parts of code and being goated\n             §l§aSoul-King/Tomura - for creating character outfits\n             §bBlue Lemon06 + j.06866 beta testers / helper\n             §2Magroic - created amazing art for the addon and the Time Vessel structure\n             §eVermint - a few of the character textures/models\n             §cTalon_ah - for creating the custom minecraft title logo\n             §tSchwerty - for creating the Stats GUI\n\n             §r§fAnd everyone else who's supported me and this project!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                                           "}]}

execute as @s[scores={menubackground=0..,menuselect=1},tag=menucredits] at @s run playsound mob.button @s ~~~ 999999 1.25 999999
execute as @s[scores={menubackground=0..,menuselect=1},tag=menucredits] at @s run tag @s add menuhome
execute as @s[scores={menubackground=0..,menuselect=1},tag=menucredits] at @s run scoreboard players set @s menubackground 1
execute as @s[scores={menubackground=0..,menuselect=1},tag=menucredits] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuselect=1},tag=menucredits] at @s run function menu_homescreenback


execute as @s[scores={menubackground=0},tag=menurace,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}

execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1},tag=menurace] at @s run playsound note.bd @s ~~~ 999999 1.4 999999
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1},tag=menurace] at @s run scoreboard players add @s menuscroll 1
execute as @s[scores={menubackground=0..,menuscroll=4..,Sneaking=1},tag=menurace] at @s run scoreboard players set @s menuscroll 1
execute as @s[scores={menubackground=0..,menuscroll=1},tag=menurace] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n                                               \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                                                                               \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menuscroll=2},tag=menurace] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n                                               \n\n\n\n§l§b-[ Sorcerer ]-\n§r§gYou are a sorcerer,\nyou do not have any passive abilities\nhowever, you can be born into prestigious \nclans and inherit techniques and \nattributes that have been passed \ndown.\n\n\n                                                                                               \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menuscroll=3},tag=menurace] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n                                               \n\n\n\n                                                    §l§5-[ Curse ]-\n                                          §r§gYou are a curse,\n                                                    born from negative energy\n                                                    you possess power above\n                                                    the majority of humans, these include:\n                                                    - Greatly Amplified Healing\n                                                    - Amplified Strength and Resistance\n                                                    and more, however you cannot inherit abilities\n                                                    passed down by clans and you are easily\n                                                    exterminated by positive energy.\n\n\n                                                                                               \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}


execute as @s[scores={menubackground=0..,menuscroll=1,menuselect=1},tag=menurace] at @s run playsound mob.button @s ~~~ 999999 1.25 999999
execute as @s[scores={menubackground=0..,menuscroll=1,menuselect=1},tag=menurace,tag=!menuhome] at @s run tag @s add menuhome
execute as @s[scores={menubackground=!1,menuscroll=1,menuselect=1},tag=menurace] at @s run scoreboard players set @s menubackground 1
execute as @s[scores={menubackground=0..,menuscroll=1,menuselect=1},tag=menurace] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuscroll=1,menuselect=1},tag=menurace] at @s run function menu_homescreenback

execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menurace] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menurace] at @s run playsound mob.wither.hurt @s ~~~ 999999 1.5 999999
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menurace,tag=!menuclans] at @s run tag @s add menuclans
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menurace] at @s run tellraw @s {"rawtext":[{"text":"§l§fYou have Selected: §bHuman§f."}]}
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menurace] at @s run scoreboard players set @s human 1
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menurace] at @s run scoreboard players set @s clanrolls 5
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menurace] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuscroll=2,menuselect=1},tag=menurace] at @s run function menu_clanscreen

execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menurace] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menurace] at @s run playsound mob.wither.ambient @s ~~~ 999999 0.65 999999
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menurace,tag=!menutechnique] at @s run tag @s add menutechnique
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menurace,tag=!curse] at @s run tag @s add curse
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menurace] at @s run tellraw @s {"rawtext":[{"text":"§l§fYou have Selected: §5Curse§f."}]}
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menurace] at @s run scoreboard players set @s curse 1
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menurace] at @s run scoreboard players add @s techniquerolls 1
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menurace] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuscroll=3,menuselect=1},tag=menurace] at @s run function menu_clanscreen



execute as @s[scores={menubackground=0..},tag=menuclans,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..},tag=menuclans,tag=!rollingclan,tag=!rolledclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§fPress [Sneak] to Roll your Clan - You have: "},{"score":{"name": "*","objective": "clanrolls"}},{"text": " §fRolls Left\n\n\n\n\n\n\n   "}]}
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,clanrolls=1..},tag=menuclans,tag=!rollingclan,tag=!rolledclan] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,clanrolls=1..},tag=menuclans,tag=!rollingclan,tag=!rolledclan] at @s run scoreboard players add @s menutimer 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,clanrolls=1..},tag=menuclans,tag=!rollingclan,tag=!rolledclan] at @s run scoreboard players remove @s clanrolls 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1},tag=menuclans,tag=!rollingclan,tag=!rolledclan] at @s run tag @s add rollingclan



scoreboard players add @s[tag=rollingclan] menutimer 1
execute as @s[scores={menutimer=1..80},tag=menuclans,tag=rollingclan] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=1..80},tag=menuclans,tag=rollingclan] at @s run playsound note.bd @s ~~~ 0.5 1.5 9999999

execute as @s[scores={menutimer=81},tag=menuclans,tag=rollingclan] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=81},tag=menuclans,tag=rollingclan] at @s run playsound note.bd @s ~~~ 0.5 1.5 9999999
execute as @s[scores={menutimer=83},tag=menuclans,tag=rollingclan] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=83},tag=menuclans,tag=rollingclan] at @s run playsound note.bd @s ~~~ 0.5 1.5 9999999
execute as @s[scores={menutimer=85},tag=menuclans,tag=rollingclan] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=85},tag=menuclans,tag=rollingclan] at @s run playsound note.bd @s ~~~ 0.5 1.5 9999999
execute as @s[scores={menutimer=88},tag=menuclans,tag=rollingclan] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=88},tag=menuclans,tag=rollingclan] at @s run playsound note.bd @s ~~~ 0.5 1.5 9999999
execute as @s[scores={menutimer=92},tag=menuclans,tag=rollingclan] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=92},tag=menuclans,tag=rollingclan] at @s run playsound note.bd @s ~~~ 0.5 1.5 9999999
execute as @s[scores={menutimer=96},tag=menuclans,tag=rollingclan] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=96},tag=menuclans,tag=rollingclan] at @s run playsound note.bd @s ~~~ 0.5 1.5 9999999
execute as @s[scores={menutimer=100},tag=menuclans,tag=rollingclan] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=100},tag=menuclans,tag=rollingclan] at @s run playsound note.bd @s ~~~ 0.5 1.5 9999999
execute as @s[scores={menutimer=1..,chance=1..40,menutimer=0..99},tag=menuclans,tag=rollingclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n   \n\n\n\n\n\n\n   §l§f-[ No Clan ]-\n\n\n\n\n\n   §l§fRolling Clan...\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=1..,chance=41..56,menutimer=0..99},tag=menuclans,tag=rollingclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n   \n\n\n\n\n\n\n   §l§f-[ No Clan  ]-\n\n\n\n\n\n   §l§fRolling Clan...\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=1..,chance=57..72,menutimer=0..99},tag=menuclans,tag=rollingclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n   \n\n\n\n\n\n\n   §l§f-[ No Clan ]-\n\n\n\n\n\n   §l§fRolling Clan...\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=1..,chance=73..83,menutimer=0..99},tag=menuclans,tag=rollingclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n   \n\n\n\n\n\n\n   §l§f-[ Inumaki ]-\n\n\n\n\n\n   §l§fRolling Clan...\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=1..,chance=84..90,menutimer=0..99},tag=menuclans,tag=rollingclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n   \n\n\n\n\n\n\n   §l§f-[ Kamo ]-\n\n\n\n\n\n   §l§fRolling Clan...\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=1..,chance=91..96,menutimer=0..99},tag=menuclans,tag=rollingclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n   \n\n\n\n\n\n\n   §l§f-[ Zenin ]-\n\n\n\n\n\n   §l§fRolling Clan...\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menutimer=1..,chance=97..,menutimer=0..99},tag=menuclans,tag=rollingclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n   \n\n\n\n\n\n\n   §l§f-[ Gojo ]-\n\n\n\n\n\n   §l§fRolling Clan...\n\n\n\n\n\n\n\n\n"}]}

tag @s[scores={menutimer=100,chance=1..},tag=rollingclan,tag=menuclans,tag=!rolledclan] add rolledclan

tag @s[scores={menutimer=100,chance=1..40},tag=rollingclan,tag=menuclans,tag=clan] remove clan
tag @s[scores={menutimer=100,chance=41..56},tag=rollingclan,tag=menuclans,tag=clan] remove clan
tag @s[scores={menutimer=100,chance=57..72},tag=rollingclan,tag=menuclans,tag=clan] remove clan
tag @s[scores={menutimer=100,chance=73..83},tag=rollingclan,tag=menuclans,tag=!inumaki] add inumaki
tag @s[scores={menutimer=100,chance=84..90},tag=rollingclan,tag=menuclans,tag=!kamo] add kamo
tag @s[scores={menutimer=100,chance=91..96},tag=rollingclan,tag=menuclans,tag=!zenin] add zenin
tag @s[scores={menutimer=100,chance=97..},tag=rollingclan,tag=menuclans,tag=!gojo] add gojo

execute as @s[scores={menutimer=100,chance=1..40},tag=menuclans,tag=rolledclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n\n                               §l§f-[ No Clan  ]-\n\n\n\n    §l§fPress [Sneak] to Re-Roll Clan - You have: "},{"score":{"name": "*","objective": "clanrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Continue...\n\n\n\n\n   \n\n\n\n\n\n\n   "}]}
execute as @s[scores={menutimer=100,chance=41..56},tag=menuclans,tag=rolledclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n\n                               §l§f-[ No Clan  ]-\n\n\n\n    §l§fPress [Sneak] to Re-Roll Clan - You have: "},{"score":{"name": "*","objective": "clanrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Continue...\n\n\n\n\n   \n\n\n\n\n\n\n   "}]}
execute as @s[scores={menutimer=100,chance=57..72},tag=menuclans,tag=rolledclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n\n                               §l§f-[ No Clan  ]-\n\n\n\n    §l§fPress [Sneak] to Re-Roll Clan - You have: "},{"score":{"name": "*","objective": "clanrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Continue...\n\n\n\n\n   \n\n\n\n\n\n\n   "}]}
execute as @s[scores={menutimer=100,chance=73..83},tag=menuclans,tag=rolledclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n\n                               §l§f-[ Inumaki  ]-\n                           §r§3+5 Agility\n\n\n    §l§fPress [Sneak] to Re-Roll Clan - You have: "},{"score":{"name": "*","objective": "clanrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Continue...\n\n\n\n\n   \n\n\n\n\n\n\n   "}]}
execute as @s[scores={menutimer=100,chance=84..90},tag=menuclans,tag=rolledclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n\n                               §l§f-[ Kamo  ]-\n                        §r§c+5 Endurance\n\n\n    §l§fPress [Sneak] to Re-Roll Clan - You have: "},{"score":{"name": "*","objective": "clanrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Continue...\n\n\n\n\n   \n\n\n\n\n\n\n   "}]}
execute as @s[scores={menutimer=100,chance=91..96},tag=menuclans,tag=rolledclan] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n                              \n\n\n\n\n\n\n                               §l§f-[ Zenin  ]-\n                         §r§4+5 Strength\n\n\n    §l§fPress [Sneak] to Re-Roll Clan - You have: "},{"score":{"name": "*","objective": "clanrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Continue...\n\n\n\n\n   \n\n\n\n\n\n\n   "}]}
execute as @s[scores={menutimer=100,chance=97..},tag=menuclans,tag=rolledclan] at @s run titleraw @s actionbar  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n                               \n\n\n\n\n\n\n                               §l§f-[ Gojo  ]-\n                       §r§b+100 Cursed Energy\n\n\n    §l§fPress [Sneak] to Re-Roll Clan - You have: "},{"score":{"name": "*","objective": "clanrolls"}},{"text": " §fRolls Left\n                  Press [Jump] to Continue...\n\n\n\n\n   \n\n\n\n\n\n\n   "}]}

tag @s[scores={menutimer=100,chance=1..},tag=rollingclan,tag=menuclans] remove rollingclan

execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,chance=1..,clanrolls=1..},tag=menuclans,tag=rolledclan,tag=clan] at @s run tag @s remove clan
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,chance=1..,clanrolls=1..},tag=menuclans,tag=rolledclan,tag=inumaki] at @s run tag @s remove inumaki
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,chance=1..,clanrolls=1..},tag=menuclans,tag=rolledclan,tag=kamo] at @s run tag @s remove kamo
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,chance=1..,clanrolls=1..},tag=menuclans,tag=rolledclan,tag=zenin] at @s run tag @s remove zenin
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,chance=1..,clanrolls=1..},tag=menuclans,tag=rolledclan,tag=gojo] at @s run tag @s remove gojo
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,chance=1..,clanrolls=1..},tag=menuclans,tag=rolledclan] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,chance=1..,clanrolls=1..},tag=menuclans,tag=rolledclan] at @s run scoreboard players set @s menutimer 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,chance=1..,clanrolls=1..},tag=menuclans,tag=rolledclan,tag=!rollingclan] at @s run tag @s add rollingclan
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,chance=1..,clanrolls=1..},tag=menuclans,tag=rolledclan] at @s run function menu_clanrollsremove

execute as @s[scores={menubackground=0..,menuselect=1},tag=menuclans,tag=rolledclan] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuselect=1},tag=menuclans,tag=rolledclan,tag=!menutraits] at @s run tag @s add menutraits
execute as @s[scores={menubackground=0..,menuselect=1,clanrolls=!0},tag=menuclans,tag=rolledclan] at @s run scoreboard players set @s clanrolls 0
execute as @s[scores={menubackground=0..,menuselect=1},tag=menuclans,tag=rolledclan] at @s run scoreboard players add @s traitrolls 1
execute as @s[scores={menubackground=0..,menuselect=1},tag=menuclans,tag=rolledclan] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={menubackground=0..,menuselect=1},tag=menuclans,tag=rolledclan] at @s run function menu_traitscreen

execute as @s[scores={menubackground=0..},tag=menutraits,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..},tag=menutraits,tag=!rollingtrait,tag=!rolledtrait] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§fPress [Sneak] to Roll your Traits - You have: "},{"score":{"name": "*","objective": "traitrolls"}},{"text": " §fRolls Left\n\n\n\n\n\n\n   "}]}
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..},tag=menutraits,tag=!rollingtrait,tag=!rolledtrait] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..},tag=menutraits,tag=!rollingtrait,tag=!rolledtrait] at @s run scoreboard players add @s menutimer 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,traitrolls=1..},tag=menutraits,tag=!rollingtrait,tag=!rolledtrait] at @s run scoreboard players remove @s traitrolls 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,menutimer=1},tag=menutraits,tag=!rollingtrait,tag=!rolledtrait] at @s run tag @s add rollingtrait


tellraw @s[scores={traitrolls=0,Sneaking=1},tag=menutraits] {"rawtext":[{"text":"§r§o§4You have no more Trait Rolls!"}]}


scoreboard players add @s[tag=rollingtrait,scores={menutimer=1..}] menutimer 1
scoreboard players add @s[tag=rollingtrait,scores={menutimer=1..80}] timertick2 1

scoreboard players set @s[tag=rollingtrait,scores={menutimer=81}] timertick2 3
scoreboard players set @s[tag=rollingtrait,scores={menutimer=83}] timertick2 3
scoreboard players set @s[tag=rollingtrait,scores={menutimer=85}] timertick2 3
scoreboard players set @s[tag=rollingtrait,scores={menutimer=88}] timertick2 3
scoreboard players set @s[tag=rollingtrait,scores={menutimer=91}] timertick2 3
scoreboard players set @s[tag=rollingtrait,scores={menutimer=95}] timertick2 3
scoreboard players set @s[tag=rollingtrait,scores={menutimer=100}] timertick2 3
execute as @s[scores={menutimer=1..100,timertick2=3..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=1..100,timertick2=3..},tag=menutraits,tag=rollingtrait] at @s run playsound random.click @s ~~~ 0.5 1.5 9999999

#50% (50%)
execute as @s[scores={menutimer=1..99,chance=1..50},tag=menutraits,tag=rollingtrait] at @s run scoreboard players random @s common 1 5
execute as @s[scores={menutimer=1..99,chance=1..50,uncommon=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menutimer=1..99,chance=1..50,rare=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s rare 0
execute as @s[scores={menutimer=1..99,chance=1..50,exotic=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s exotic 0
execute as @s[scores={menutimer=1..99,chance=1..50,honored=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s honored 0
#25% (75%)
execute as @s[scores={menutimer=1..99,chance=51..76},tag=menutraits,tag=rollingtrait] at @s run scoreboard players random @s uncommon 1 5
execute as @s[scores={menutimer=1..99,chance=51..76,common=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s common 0
execute as @s[scores={menutimer=1..99,chance=51..76,rare=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s rare 0
execute as @s[scores={menutimer=1..99,chance=51..76,exotic=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s exotic 0
execute as @s[scores={menutimer=1..99,chance=51..76,honored=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s honored 0
#15% (90%)
execute as @s[scores={menutimer=1..99,chance=77..92},tag=menutraits,tag=rollingtrait] at @s run scoreboard players random @s rare 1 8
execute as @s[scores={menutimer=1..99,chance=77..92,common=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s common 0
execute as @s[scores={menutimer=1..99,chance=77..92,uncommon=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menutimer=1..99,chance=77..92,exotic=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s exotic 0
execute as @s[scores={menutimer=1..99,chance=77..92,honored=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s honored 0
#6% (99%)
execute as @s[scores={menutimer=1..99,chance=93..99},tag=menutraits,tag=rollingtrait] at @s run scoreboard players random @s exotic 1 4
execute as @s[scores={menutimer=1..99,chance=93..99,common=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s common 0
execute as @s[scores={menutimer=1..99,chance=93..99,uncommon=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menutimer=1..99,chance=93..99,rare=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s rare 0
execute as @s[scores={menutimer=1..99,chance=93..99,honored=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s honored 0
#1% (100%)
execute as @s[scores={menutimer=1..99,chance=100},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s honored 1
execute as @s[scores={menutimer=1..99,chance=100,common=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s common 0
execute as @s[scores={menutimer=1..99,chance=100,uncommon=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menutimer=1..99,chance=100,rare=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s rare 0
execute as @s[scores={menutimer=1..99,chance=100,exotic=1..},tag=menutraits,tag=rollingtrait] at @s run scoreboard players set @s exotic 0

execute as @s[scores={menutimer=1..99,chance=1..,timertick2=3..},tag=menutraits,tag=rollingtrait] at @s run function menu_traitshow
execute as @s[scores={menutimer=100,chance=0..},tag=menutraits,tag=rolledtrait] at @s run function menu_traitshow
tag @s[scores={menutimer=100,chance=1..},tag=rollingtrait,tag=menutraits,tag=!rolledtrait] add rolledtrait
tag @s[scores={menutimer=100,chance=1..},tag=rolledtrait,tag=menutraits,tag=rollingtrait] remove rollingtrait

scoreboard players set @s[scores={timertick2=3..},tag=menutraits,tag=rollingtrait] timertick2 0


execute as @s[scores={menubackground=0..},tag=menutechnique,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..},tag=menutechnique,tag=!rollingtechnique,tag=!rolledtechnique] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§fPress [Sneak] to Roll your Technique - You have: "},{"score":{"name": "*","objective": "techniquerolls"}},{"text": " §fRolls Left\n\n\n\n\n\n\n   "}]}
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..},tag=menutechnique,tag=!rollingtechnique,tag=!rolledtechnique] at @s run playsound mob.button @s ~~~ 999999 1 999999
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..},tag=menutechnique,tag=!rollingtechnique,tag=!rolledtechnique] at @s run scoreboard players add @s menutimer 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,techniquerolls=1..},tag=menutechnique,tag=!rollingtechnique,tag=!rolledtechnique] at @s run scoreboard players remove @s techniquerolls 1
execute as @s[scores={menubackground=0..,menuscroll=0..,Sneaking=1,menutimer=1},tag=menutechnique,tag=!rollingtechnique,tag=!rolledtechnique] at @s run tag @s add rollingtechnique


tellraw @s[scores={techniquerolls=0,Sneaking=1},tag=menutechnique] {"rawtext":[{"text":"§r§o§4You have no more Technique Rolls!"}]}


scoreboard players add @s[tag=rollingtechnique,scores={menutimer=1..}] menutimer 1
scoreboard players add @s[tag=rollingtechnique,scores={menutimer=1..80}] timertick2 1

scoreboard players set @s[tag=rollingtechnique,scores={menutimer=81}] timertick2 3
scoreboard players set @s[tag=rollingtechnique,scores={menutimer=83}] timertick2 3
scoreboard players set @s[tag=rollingtechnique,scores={menutimer=85}] timertick2 3
scoreboard players set @s[tag=rollingtechnique,scores={menutimer=88}] timertick2 3
scoreboard players set @s[tag=rollingtechnique,scores={menutimer=91}] timertick2 3
scoreboard players set @s[tag=rollingtechnique,scores={menutimer=95}] timertick2 3
scoreboard players set @s[tag=rollingtechnique,scores={menutimer=100}] timertick2 3
execute as @s[scores={menutimer=1..100,timertick2=3..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={menutimer=1..100,timertick2=3..},tag=menutechnique,tag=rollingtechnique] at @s run playsound random.click @s ~~~ 0.5 1.5 9999999



#50% (50%)
execute as @s[scores={menutimer=1..99,chance=1..50},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players random @s common 1 4
execute as @s[scores={menutimer=1..99,chance=1..50,uncommon=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menutimer=1..99,chance=1..50,rare=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s rare 0
execute as @s[scores={menutimer=1..99,chance=1..50,exotic=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s exotic 0
execute as @s[scores={menutimer=1..99,chance=1..50,honored=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s honored 0
#25% (75%)
execute as @s[scores={menutimer=1..99,chance=51..76},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players random @s uncommon 1 2
execute as @s[scores={menutimer=1..99,chance=51..76,common=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s common 0
execute as @s[scores={menutimer=1..99,chance=51..76,rare=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s rare 0
execute as @s[scores={menutimer=1..99,chance=51..76,exotic=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s exotic 0
execute as @s[scores={menutimer=1..99,chance=51..76,honored=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s honored 0
#15% (90%)
execute as @s[scores={menutimer=1..99,chance=77..92},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players random @s rare 1 3
execute as @s[scores={menutimer=1..99,chance=77..92,common=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s common 0
execute as @s[scores={menutimer=1..99,chance=77..92,uncommon=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menutimer=1..99,chance=77..92,exotic=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s exotic 0
execute as @s[scores={menutimer=1..99,chance=77..92,honored=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s honored 0
#6% (99%)
execute as @s[scores={menutimer=1..99,chance=93..99},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players random @s exotic 1 3
execute as @s[scores={menutimer=1..99,chance=93..99,common=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s common 0
execute as @s[scores={menutimer=1..99,chance=93..99,uncommon=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menutimer=1..99,chance=93..99,rare=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s rare 0
execute as @s[scores={menutimer=1..99,chance=93..99,honored=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s honored 0
#1% (100%)
execute as @s[scores={menutimer=1..99,chance=100},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players random @s honored 1 4
execute as @s[scores={menutimer=1..99,chance=100,common=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s common 0
execute as @s[scores={menutimer=1..99,chance=100,uncommon=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={menutimer=1..99,chance=100,rare=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s rare 0
execute as @s[scores={menutimer=1..99,chance=100,exotic=1..},tag=menutechnique,tag=rollingtechnique] at @s run scoreboard players set @s exotic 0




execute as @s[scores={menutimer=1..99,chance=1..,timertick2=3..},tag=menutechnique,tag=rollingtechnique] at @s run function menu_techniqueshow
execute as @s[scores={menutimer=100,chance=0..},tag=menutechnique,tag=rolledtechnique] at @s run function menu_techniqueshow
tag @s[scores={menutimer=100,chance=1..},tag=rollingtechnique,tag=menutechnique,tag=!rolledtechnique] add rolledtechnique
tag @s[scores={menutimer=100,chance=1..},tag=rolledtechnique,tag=menutechnique,tag=rollingtechnique] remove rollingtechnique

scoreboard players set @s[scores={timertick2=3..},tag=menutechnique,tag=rollingtechnique] timertick2 0

execute unless entity @s[scores={rarityend=0}] run scoreboard players set @s[tag=!rolledtechnique,tag=!rolledtrait] rarityend 0

scoreboard players add @s[tag=menufinal] menutimer 1
execute as @s[scores={menubackground=0..,menutimer=1},tag=menufinal] at @s run playsound mob.button @s ~~~ 1 0.45 9999999
execute as @s[scores={menubackground=0..,menutimer=0..20},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=22},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=26},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=29},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=32},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=34},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=36},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=37},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=38},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=39},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=40},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=41..75},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}

execute as @s[scores={menubackground=0..,menutimer=97},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=96},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=95},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=94},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=93},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=91},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=89},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=86},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=83},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=80},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={menubackground=0..,menutimer=76},tag=menufinal,tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}

execute as @s[scores={menubackground=0..,menutimer=115},tag=menufinal] at @s run function menu_end
execute as @s[scores={menubackground=0..,menutimer=1},tag=menufinal] at @s run playsound music.bass2
