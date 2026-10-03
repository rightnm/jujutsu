playanimation @s[scores={move=30}] animation.demonic_blows1

tag @s[scores={move=1..2}] remove wep1s

tag @s[scores={move=25..,Stun=1..}] remove wep1s
scoreboard players set @s[scores={move=25..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=100..}] Move 25

scoreboard players set @s[scores={move=100..}] Disabled2 7


scoreboard players set @a[scores={move=19..20}] atk 2
scoreboard players set @a[scores={move=19..23}] Frames 6
scoreboard players set @a[scores={move=119..}] Frames 6

execute as @s[scores={move=29..}] at @s run tp @s ~~~

execute as @s[scores={move=16..21}] at @s run tp @s ~~~
execute as @s[scores={move=19}] at @s run function damages/blunt_damage

execute as @s[scores={move=27..}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=29}] at @s run playsound mob.enderdragon.flap @a[r=20] ~~~ 9999 1.7 9999
execute as @s[scores={move=24}] at @s run playsound mob.enderdragon.flap @a[r=20] ~~~ 9999 1.4 9999
execute as @s[scores={move=24}] at @s run playsound mob.witch.throw @a[r=20] ~~~ 9999 0.84 9999

execute as @s[scores={move=27}] at @s  run particle ds:ground_slam1
execute as @s[scores={move=27}] at @s  run particle ds:ground_slam2
execute as @s[scores={move=27}] at @s  run camerashake add @a[r=3.7] 0.2 0.1
execute as @s[scores={move=24}] at @s  run camerashake add @a[r=3.7] 0.15 0.2

execute as @s[scores={move=22..27}] at @s run scriptevent ds:knockback 1

execute as @s[scores={move=19..23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3.7] at @s run tp @s ~~~ facing @e[tag=sukuna,c=1,rm=0.1]

execute as @s[scores={move=19}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=3.7] run playsound mob.shock1 @a[r=25] ~~~ 999999 1.75 999999
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=19}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=3.7] run particle ds:large_impact1  ~~1~
execute as @s[scores={move=19}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=3.7] run particle ds:large_impact2 ~~1~
execute as @s[scores={move=19}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=3.7] run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=19}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=3.7] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=3.7] Flourish 7
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=3.7] Stun 25
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=3.7] Hit 2
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=3.7] Evade 6
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=3.7] 6 override entity @s
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=3.7] damage += @s damageadd
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=3.7] add demonicblow


titleraw @s[scores={move=13..29}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n"}]}
title @s[scores={move=13..17}] title §l
tag @s[scores={move=13..17,punch=1}] add demonicblow2
scoreboard players set @s[scores={move=13..17,punch=1}] move 131

tag @s[scores={move=1..3}] remove demonicblow2

execute as @s[scores={move=3..18},tag=!demonicblow2] at @s unless entity @e[tag=demonicblow] run scoreboard players set @s move 2

execute as @s[scores={move=3..12},tag=!demonicblow2] at @s run tag @e[tag=demonicblow] remove demonicblow
execute as @s[scores={move=3..12},tag=!demonicblow2] at @s run tag @e[tag=demonicblow2] remove demonicblow2
scoreboard players set @s[scores={move=4..12},tag=!demonicblow2] move 3

playanimation @s[scores={move=130},tag=demonicblow2] animation.demonic_blows2

execute as @s[scores={move=119..121}] at @s run execute as @e[tag=demonicblow,c=1] at @s run tp @e[tag=demonicblow2,c=1] ~~~
execute as @s[scores={move=119}] at @s run function damages/blunt_damage

execute as @s[scores={move=119..121}] at @s run particle ds:flashstep1 ~~~

execute as @s[scores={move=119}] at @s if entity @e[tag=!Frames,r=3.7] run playsound mob.shock1 @a[r=25] ~~~ 999999 1.2 999999
execute as @s[scores={move=119}] at @s run camerashake add @a[r=10] 4 0.35 rotational
execute as @s[scores={move=119}] at @s run effect @e[tag=!Frames,r=3.7] levitation 1 25 true
execute as @s[scores={move=119}] at @s run scoreboard players set @e[tag=!Frames,r=3.7] Stun 25
execute as @s[scores={move=119}] at @s run scoreboard players set @e[tag=!Frames,r=3.7] Hit 2
execute as @s[scores={move=119}] at @s run scoreboard players add @e[tag=!Frames,r=3.7] Evade 6
execute as @s[scores={move=119}] at @s run damage @e[tag=!Frames,r=3.7] 6 override entity @s
execute as @s[scores={move=119}] at @s  run scoreboard players operation @e[tag=!Frames,r=3.7] damagehalf += @s damageadd
execute as @s[scores={move=119}] at @s run particle ds:dirt0
execute as @s[scores={move=119}] at @s run particle ds:red_impact1 ~~1.25~
execute as @s[scores={move=119}] at @s run particle ds:red_impact2 ~~1.25~
execute as @s[scores={move=119}] at @s run particle ds:red_impact3 ~~1.25~
execute as @s[scores={move=119}] at @s run camerashake add @a[r=25] 2 0.15
execute as @s[scores={move=119}] at @s run playsound mob.wither.break_block @a[r=25] ~~~ 9999 1.25 9999
execute as @s[scores={move=119}] at @s run particle ds:pushed_up1
execute as @s[scores={move=119}] at @s run particle ds:pushed_up2
execute as @s[scores={move=119}] at @s run particle ds:dirt2 ~~2~
execute as @s[scores={move=119}] at @s run particle ds:dirt4 ~~6~
execute as @s[scores={move=117..119}] at @s run tag @e[tag=demonicblow] remove demonicblow
execute as @s[scores={move=117..119}] at @s run tag @e[tag=demonicblow2] remove demonicblow2

execute as @s[scores={move=117..119}] at @s run scoreboard players set @s move 3



