playanimation @s[scores={move=35}] animation.heian_sukuna.double_impact
tag @s[scores={move=1..2}] remove wep1s3

scoreboard players set @s[scores={move=30..,Stun=1..}] move 2

scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=5..29}] Frames 6
scoreboard players set @s[scores={move=5..}] Camera 6
scoreboard players set @a[scores={move=30..31}] atk 2

effect @s[scores={move=12..}] speed 0 20 true

execute as @s[scores={move=32..}] at @s run scriptevent ds:knockback 1

execute as @s[scores={move=28..32}] at @s run tp @s @s
execute as @s[scores={move=31}] at @s positioned ^^^2.5 run playsound mob.witch.throw @a[r=20] ~~~ 9999 0.85 9999
execute as @s[scores={move=31}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49] add doubleimpact
execute as @s[scores={move=31}] at @s positioned ^^^2.5 run execute as @e[tag=!Franes,r=2.49] at @s run playsound mob.punch1 @a[r=20] ~~~ 9999 2 9999
execute as @s[scores={move=31}] at @s positioned ^^^2.5 run execute as @e[tag=!Franes,r=2.49] at @s run camerashake add @a[r=5] 0.5 0.15
execute as @s[scores={move=31}] at @s positioned ^^^2.5 run execute as @e[tag=!Franes,r=2.49] at @s run particle ds:heavy_impact2 ~~1~

execute as @s[scores={move=27..28}] at @s unless entity @e[tag=doubleimpact,r=15] run playanimation @s animation.stunned
execute as @s[scores={move=27..28}] at @s unless entity @e[tag=doubleimpact,r=15] run scoreboard players set @s move 3

execute as @s[scores={move=16..28}] at @s run tp @e[tag=doubleimpact,c=1] ^^^1.35 facing @s
execute as @s[scores={move=18..28}] at @s run camera @s set minecraft:free pos ^-1.5^1.3^0.5 facing ^^1.3^0.5
execute as @s[scores={move=18..28}] at @s run camera @p[tag=doubleimpact,c=1] set minecraft:free pos ^-1.5^1.3^0.5 facing ^^1.3^0.5

execute as @s[scores={move=28}] at @s run playsound mob.turbulence @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=16..28}] at @s run camerashake add @a[r=20] 0.5 0.08
execute as @s[scores={move=17..22}] at @s run particle ds:turbo_intensity3 ~~0.5~
execute as @s[scores={move=17..22}] at @s run particle ds:turbo_intensity4 ~~0.5~
execute as @s[scores={move=22}] at @s run particle ds:invert ^-1^^0.5
execute as @s[scores={move=21}] at @s run particle ds:red_tint ^-1^^0.5
execute as @s[scores={move=20}] at @s run summon gg:impact_frame
execute as @s[scores={move=18}] at @s run particle ds:red_tint ^-1^^0.5
execute as @s[scores={move=17}] at @s run particle ds:invert ^-1^^0.5
execute as @s[scores={move=15}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={move=16}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=22}] at @s run playsound mob.blitz1 @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={move=16}] at @s run playsound mob.impact @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=16}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=16}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=16}] at @s run camerashake add @a[r=20] 4 0.25

execute as @s[scores={move=15}] at @s run function damages/blunt_damage

execute as @s[scores={move=15}] at @s run particle ds:dirt0
execute as @s[scores={move=15}] at @s run particle ds:rubble3 ^^^1
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ^^^1
execute as @s[scores={move=15}] at @s run particle ds:ground_slam3 ^^^1
execute as @s[scores={move=15}] at @s run particle ds:swift_air ^^1^1
execute as @s[scores={move=15}] at @s run particle ds:stars ~~1~
execute as @s[scores={move=15..17}] at @s run particle ds:heian_energy1 ~~~
execute as @s[scores={move=15..17}] at @s run particle ds:heian_energy2 ~~~

execute as @s[scores={move=13..14}] at @s run camera @s set minecraft:free ease 0.25 in_sine pos ^-5^1.5^-1.5 facing ^10^40^30
execute as @s[scores={move=15}] at @s run scoreboard players set @e[tag=doubleimpact,c=1] Stun 25
execute as @s[scores={move=15}] at @s run scoreboard players add @e[tag=doubleimpact,c=1] Evade 15
execute as @s[scores={move=15}] at @s run scoreboard players set @e[tag=doubleimpact,c=1] Hit 5
execute as @s[scores={move=15}] at @s run scoreboard players set @e[tag=doubleimpact,c=1] knock 15
execute as @s[scores={move=15}] at @s run scoreboard players set @e[tag=doubleimpact,c=1] Flourish 2
execute as @s[scores={move=15}] at @s run damage @e[tag=doubleimpact,c=1] 40 override
execute as @s[scores={move=15}] at @s run scoreboard players operation @e[tag=doubleimpact,c=1] damage += @s damageadd
execute as @s[scores={move=15}] at @s run tp @e[tag=doubleimpact,c=1,tag=!domainactive] ^^35^30 facing ~~~
execute as @s[scores={move=15}] at @s run tp @e[tag=doubleimpact,c=1,tag=domainactive] ^^15^10 facing ~~~
execute as @s[scores={move=3..6}] at @s run camera @a[r=100] clear


execute as @s[scores={move=3..6}] at @s run scoreboard players set @e[type=ds:kashimo,tag=doubleimpact,tag=mythicalbeastamber] move 0
execute as @s[scores={move=3..6}] at @s run scoreboard players set @e[type=ds:kashimo,tag=doubleimpact,tag=mythicalbeastamber,scores={ability6=0..600}] ability6 0
execute as @s[scores={move=3..6}] at @s run scoreboard players set @e[type=ds:kashimo,tag=doubleimpact,tag=mythicalbeastamber] chance 26

# add a punch follow-up here but make it not work against kashimo or mobs with i-frames


execute as @s[scores={move=1..3}] at @s run tag @e[tag=doubleimpact] remove doubleimpact