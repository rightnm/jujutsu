scoreboard objectives add dreadbellCD dummy
scoreboard objectives add dreadbelladd dummy
scoreboard players add @s dreadbellCD 0
playanimation @s[scores={dreadbellCD=0}] animation.dread_bell
tellraw @s[scores={dreadbellCD=1..}] {"rawtext":[{"text":"§5Cursed Bell of Dread is on cooldown: §e"},{"score":{"name": "@p","objective": "dreadbellCD"}},{"text":"§5."}]}
execute as @s[scores={dreadbellCD=0}] at @s run playsound block.bell.hit @a[r=500] ~~~ 99999 0.45 99999
execute as @s[scores={dreadbellCD=0}] at @s run playsound ambient.soulsand_valley.additions @a[r=500] ~~~ 99999 0.75 99999
execute as @s[scores={dreadbellCD=0}] at @s run camerashake add @a[r=50] 2 0.25

execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players add @e[family=purecurse,family=grade4,r=44] strength 1
execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players add @e[family=purecurse,family=grade3,r=44] strength 3
execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players add @e[family=purecurse,family=grade2,r=44] strength 7
execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players add @e[family=purecurse,family=grade1,r=44] strength 12
execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players add @e[family=purecurse,family=special_grade,r=44] strength 20

execute as @s[scores={dreadbellCD=0}] at @s run execute as @e[family=purecurse,r=30] at @s run scoreboard players operation @p[tag=itemUse:ds:dread_bell,c=1] dreadbelladd += @s detect_health
execute as @s[scores={dreadbellCD=0}] at @s run execute as @e[family=purecurse,r=30] at @s run scoreboard players operation @p[tag=itemUse:ds:dread_bell,c=1] dreadbelladd += @s strength

execute as @s[scores={dreadbellCD=0}] at @s run execute as @e[tag=curse,r=30,rm=0.3] at @s run scoreboard players operation @p[tag=itemUse:ds:dread_bell,c=1] dreadbelladd += @s detect_health
execute as @s[scores={dreadbellCD=0}] at @s run execute as @e[tag=curse,r=30,rm=0.3] at @s run scoreboard players operation @p[tag=itemUse:ds:dread_bell,c=1] dreadbelladd += @s strength
execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players operation @s Energy += @s dreadbelladd
execute as @s[scores={dreadbellCD=0}] at @s run particle ds:dread_bell ~~1~
execute as @s[scores={dreadbellCD=0}] at @s run particle ds:dread_bell2 ~~1~
execute as @s[scores={dreadbellCD=0}] at @s run particle ds:dread_bell3 ~~1~
execute as @s[scores={dreadbellCD=0,dreadbelladd=1..100}] at @s run effect @e[family=purecurse,r=30] slowness 5 2
execute as @s[scores={dreadbellCD=0,dreadbelladd=1..100}] at @s run effect @e[tag=curse,r=30] slowness 5 2
execute as @s[scores={dreadbellCD=0,dreadbelladd=1..100}] at @s run effect @e[family=purecurse,r=30] weakness 5 0
execute as @s[scores={dreadbellCD=0,dreadbelladd=1..100}] at @s run effect @e[tag=curse,r=30] weakness 5 0

execute as @s[scores={dreadbellCD=0,dreadbelladd=101..300}] at @s run effect @e[family=purecurse,r=30] slowness 5 3
execute as @s[scores={dreadbellCD=0,dreadbelladd=101..300}] at @s run effect @e[tag=curse,r=30] slowness 5 3
execute as @s[scores={dreadbellCD=0,dreadbelladd=101..300}] at @s run effect @e[family=purecurse,r=30] weakness 5 1
execute as @s[scores={dreadbellCD=0,dreadbelladd=101..300}] at @s run effect @e[tag=curse,r=30] weakness 5 1
execute as @s[scores={dreadbellCD=0,dreadbelladd=101..300}] at @s run scoreboard players add @e[family=purecurse,r=30] antiheal 50
execute as @s[scores={dreadbellCD=0,dreadbelladd=101..300}] at @s run scoreboard players add @e[tag=curse,r=30] antiheal 50

execute as @s[scores={dreadbellCD=0,dreadbelladd=301..600}] at @s run effect @e[family=purecurse,r=30] slowness 8 4
execute as @s[scores={dreadbellCD=0,dreadbelladd=301..600}] at @s run effect @e[tag=curse,r=30] slowness 8 4
execute as @s[scores={dreadbellCD=0,dreadbelladd=301..600}] at @s run effect @e[family=purecurse,r=30] weakness 8 2
execute as @s[scores={dreadbellCD=0,dreadbelladd=301..600}] at @s run effect @e[tag=curse,r=30] weakness 8 2
execute as @s[scores={dreadbellCD=0,dreadbelladd=301..600}] at @s run scoreboard players add @e[family=purecurse,r=30] antiheal 100
execute as @s[scores={dreadbellCD=0,dreadbelladd=301..600}] at @s run scoreboard players add @e[tag=curse,r=30] antiheal 100

execute as @s[scores={dreadbellCD=0,dreadbelladd=601..}] at @s run effect @e[family=purecurse,r=30] slowness 8 4
execute as @s[scores={dreadbellCD=0,dreadbelladd=601..}] at @s run effect @e[tag=curse,r=30] slowness 8 4
execute as @s[scores={dreadbellCD=0,dreadbelladd=601..}] at @s run effect @e[family=purecurse,r=30] weakness 8 2
execute as @s[scores={dreadbellCD=0,dreadbelladd=601..}] at @s run effect @e[tag=curse,r=30] weakness 8 2
execute as @s[scores={dreadbellCD=0,dreadbelladd=601..}] at @s run effect @e[family=purecurse,r=30] wither 8 5
execute as @s[scores={dreadbellCD=0,dreadbelladd=601..}] at @s run effect @e[tag=curse,r=30] wither 8 5
execute as @s[scores={dreadbellCD=0,dreadbelladd=601..}] at @s run scoreboard players add @e[family=purecurse,r=30] antiheal 200
execute as @s[scores={dreadbellCD=0,dreadbelladd=601..}] at @s run scoreboard players add @e[tag=curse,r=30] antiheal 200

execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players remove @e[family=purecurse,family=grade4,r=44] strength 1
execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players remove @e[family=purecurse,family=grade3,r=44] strength 3
execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players remove @e[family=purecurse,family=grade2,r=44] strength 7
execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players remove @e[family=purecurse,family=grade1,r=44] strength 12
execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players remove @e[family=purecurse,family=special_grade,r=44] strength 20

execute as @s[scores={dreadbellCD=0}] at @s run scoreboard players set @s dreadbelladd 0
damage @s 10
scoreboard players set @s[scores={dreadbellCD=0}] dreadbellCD 800