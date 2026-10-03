playanimation @s[scores={move=140}] animation.playful_cloud.ab5

tag @s[scores={move=1..2}] remove wep5

tag @s[scores={move=126..,Stun=1..}] remove wep5
scoreboard players set @s[scores={move=126..,Stun=1..}] move 0

scoreboard players set @s[scores={move=10..127}] Frames 6
scoreboard players set @s[scores={move=10..127}] Move 5

execute as @s[scores={move=125..,Stun=1..}] run stopsound @a[r=40] music.onrush

execute as @s[scores={move=74..125}] unless entity @e[tag=!Frames,r=4] run scriptevent ds:knockback 2
execute as @s[scores={move=74..125}] if entity @e[tag=!Frames,r=4] run scriptevent ds:knockback 1

execute as @s[scores={move=35..125}] unless block ~~-0.2~ air unless block ~~-0.2~ barrier unless block ~~-0.2~ water run particle ds:sprint

execute as @s[scores={move=35..54}] run scriptevent ds:knockback 2
execute as @s[scores={move=35..125}] run execute as @e[r=4.8,tag=!Frames] at @s run scriptevent ds:knockback -1
execute as @s[scores={move=35..125}] run execute as @e[r=4.8,tag=!Frames] at @s run scoreboard players set @s Stun 25
execute as @s[scores={move=35..125}] run execute as @e[r=4.8,tag=!Frames] at @s run scoreboard players set @s knock 0

execute as @s[scores={move=139}] at @s run playsound music.onrush @a[r=40] ~~~ 9999 1 9999

execute as @s[scores={move=126..}] at @s run tp @s @s
execute as @s[scores={move=126..}] at @s run camera @s set minecraft:free pos ^ ^1.35 ^1.35 facing ~~1.35~
title @s[scores={move=126..},tag=!impactframesoff] title 
title @s[scores={move=123..125},tag=!impactframesoff] title §l
scoreboard players set @s[scores={move=128..}] Camera 5
scoreboard players set @s[scores={move=125..126}] Camera 2
camera @s[scores={move=124..126}] clear

execute as @s[scores={move=10..25}] at @s run tp @s ~~~

execute as @s[scores={atk=1..,move=1..125}] at @s run playsound dig.chain @a[r=50] ~~~ 0.75 0.9

scoreboard players set @e[scores={move=100..101}] atk 2

execute as @s[scores={move=101}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=95}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=80}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=75}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=70}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=65}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=60}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=55}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=50}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=45}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=40}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=35}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=30}] at @s run execute as @e[tag=!Frames,r=4.5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]


execute as @s[scores={move=100}] at @s run function damages/blunt_damage
execute as @s[scores={move=100}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=100..102}] at @s positioned ^^^3.5 run effect @e[tag=!Frames,r=4.25] slowness 1 2 true
execute as @s[scores={move=100}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Stun 25
execute as @s[scores={move=100}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=100}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=100}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 5 entity_attack entity @s
execute as @s[scores={move=100}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=100}] at @s positioned ^^1^1.5 run particle ds:ground_slam2
execute as @s[scores={move=100}] at @s positioned ^^1^1.5 run particle ds:ground_slam3
execute as @s[scores={move=100}] at @s positioned ^^1.4^1.5 run particle ds:punch1
execute as @s[scores={move=100}] at @s positioned ^^1.4^1.5 run particle ds:punch2
execute as @s[scores={move=100}] at @s positioned ^^1.4^1.5 run particle ds:punch3
execute as @s[scores={move=100}] at @s positioned ^^1.4^1.5 run particle ds:punch4
execute as @s[scores={move=100}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=100}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound mob.metal1 @a ~~~ 1 3
execute as @s[scores={move=100}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999


scoreboard players set @e[scores={move=90..96}] atk 2
execute as @s[scores={move=90..95}] at @s run function damages/blunt_damage
execute as @s[scores={move=90..95}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=90..96}] at @s positioned ^^^3.5 run effect @e[tag=!Frames,r=4.25] slowness 1 2 true
execute as @s[scores={move=90..95}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Stun 25
execute as @s[scores={move=90..95}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=90..95}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=90..95}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 2 override
execute as @s[scores={move=90..95}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=90..95}] at @s positioned ^^1.4^1.5 run particle ds:punch1
execute as @s[scores={move=90..95}] at @s positioned ^^1.4^1.5 run particle ds:punch2
execute as @s[scores={move=90..95}] at @s positioned ^^1.4^1.5 run particle ds:punch3
execute as @s[scores={move=90..95}] at @s positioned ^^1.4^1.5 run particle ds:punch4
execute as @s[scores={move=90..95}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 2  9999
execute as @s[scores={move=90..95}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999


scoreboard players set @e[scores={move=80..96}] atk 2
execute as @s[scores={move=80..85}] at @s run function damages/blunt_damage
execute as @s[scores={move=80..85}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=80..86}] at @s positioned ^^^3.5 run effect @e[tag=!Frames,r=4.25] slowness 1 2 true
execute as @s[scores={move=80..85}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Stun 25
execute as @s[scores={move=80..85}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=80..85}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=80..85}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 2 override
execute as @s[scores={move=80..85}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=80..85}] at @s positioned ^^1.4^1.5 run particle ds:punch1
execute as @s[scores={move=80..85}] at @s positioned ^^1.4^1.5 run particle ds:punch2
execute as @s[scores={move=80..85}] at @s positioned ^^1.4^1.5 run particle ds:punch3
execute as @s[scores={move=80..85}] at @s positioned ^^1.4^1.5 run particle ds:punch4
execute as @s[scores={move=80..85}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 2  9999
execute as @s[scores={move=80..85}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999

scoreboard players set @e[scores={move=77..78}] atk 2
execute as @s[scores={move=77..79}] at @s run function damages/blunt_damage
execute as @s[scores={move=77..78}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=77..79}] at @s positioned ^^^3.5 run effect @e[tag=!Frames,r=4.25] slowness 1 2 true
execute as @s[scores={move=77..78}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Stun 25
execute as @s[scores={move=77..78}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=77..78}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=77..78}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 2 override
execute as @s[scores={move=77..78}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=77..78}] at @s positioned ^^1.4^1.5 run particle ds:punch1
execute as @s[scores={move=77..78}] at @s positioned ^^1.4^1.5 run particle ds:punch2
execute as @s[scores={move=77..78}] at @s positioned ^^1.4^1.5 run particle ds:punch3
execute as @s[scores={move=77..78}] at @s positioned ^^1.4^1.5 run particle ds:punch4
execute as @s[scores={move=77..78}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 2  9999
execute as @s[scores={move=77..78}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999

scoreboard players set @e[scores={move=74..75}] atk 2
execute as @s[scores={move=74..75}] at @s run function damages/blunt_damage
execute as @s[scores={move=74..75}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=74..76}] at @s positioned ^^^3.5 run effect @e[tag=!Frames,r=4.25] slowness 1 2 true
execute as @s[scores={move=74..75}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Stun 25
execute as @s[scores={move=74..75}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=74..75}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=74..75}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 2 override
execute as @s[scores={move=74..75}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=74..75}] at @s positioned ^^1.4^1.5 run particle ds:punch1
execute as @s[scores={move=74..75}] at @s positioned ^^1.4^1.5 run particle ds:punch2
execute as @s[scores={move=74..75}] at @s positioned ^^1.4^1.5 run particle ds:punch3
execute as @s[scores={move=74..75}] at @s positioned ^^1.4^1.5 run particle ds:punch4
execute as @s[scores={move=74..75}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 2  9999
execute as @s[scores={move=74..75}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999

scoreboard players set @e[scores={move=69..71}] atk 2
execute as @s[scores={move=69..71}] at @s run function damages/blunt_damage
execute as @s[scores={move=69..71}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=69..72}] at @s positioned ^^^3.5 run effect @e[tag=!Frames,r=4.25] slowness 1 2 true
execute as @s[scores={move=69..71}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Stun 25
execute as @s[scores={move=69..71}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=69..71}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=69..71}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 2 override
execute as @s[scores={move=69..71}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=69..71}] at @s positioned ^^1.4^1.5 run particle ds:punch1
execute as @s[scores={move=69..71}] at @s positioned ^^1.4^1.5 run particle ds:punch2
execute as @s[scores={move=69..71}] at @s positioned ^^1.4^1.5 run particle ds:punch3
execute as @s[scores={move=69..71}] at @s positioned ^^1.4^1.5 run particle ds:punch4
execute as @s[scores={move=69..71}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 2  9999
execute as @s[scores={move=69..71}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999

scoreboard players set @e[scores={move=64..65}] atk 2
execute as @s[scores={move=64..65}] at @s run function damages/blunt_damage
execute as @s[scores={move=64..65}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=64..66}] at @s positioned ^^^3.5 run effect @e[tag=!Frames,r=4.25] slowness 1 2 true
execute as @s[scores={move=64..65}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Stun 32
execute as @s[scores={move=64..65}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=64..65}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=64..65}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 2 override
execute as @s[scores={move=64..65}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=64..65}] at @s positioned ^^1.4^1.5 run particle ds:punch1
execute as @s[scores={move=64..65}] at @s positioned ^^1.4^1.5 run particle ds:punch2
execute as @s[scores={move=64..65}] at @s positioned ^^1.4^1.5 run particle ds:punch3
execute as @s[scores={move=64..65}] at @s positioned ^^1.4^1.5 run particle ds:punch4
execute as @s[scores={move=64..65}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 2  9999
execute as @s[scores={move=64..65}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999

execute as @s[scores={move=56..63}] at @s run tp @s @s
execute as @s[scores={move=56..63}] at @s positioned ^^^3.5 run execute as @e[tag=!Frames,r=4.25] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]


scoreboard players set @e[scores={move=55..56}] atk 2
execute as @s[scores={move=55..56}] at @s run function damages/blunt_damage
execute as @s[scores={move=55..56}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=55..57}] at @s positioned ^^^3.5 run execute as @e[tag=!Frames,r=4.25] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=53..54}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Flourish 12
execute as @s[scores={move=55..56}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=55..56}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=55..56}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 4 override
execute as @s[scores={move=55..56}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=55..56}] at @s positioned ^^1.4^1.5 run particle ds:punch1
execute as @s[scores={move=55..56}] at @s positioned ^^1.4^1.5 run particle ds:punch2
execute as @s[scores={move=55..56}] at @s positioned ^^1.4^1.5 run particle ds:punch3
execute as @s[scores={move=55..56}] at @s positioned ^^1.4^1.5 run particle ds:punch4
execute as @s[scores={move=55..56}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 2  9999
execute as @s[scores={move=55..56}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999
execute as @s[scores={move=58..60}] at @s run tp @s ~~~ facing @e[tag=!Frames,scores={Flourish=1..},c=1]

execute as @s[scores={move=40..43}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] at @s run tp @s ~~~

execute as @s[scores={move=42..43}] at @s run execute as @e[tag=!Frames,scores={Stun=1..},c=1] at @s run tp @s @s
execute as @s[scores={move=41..42}] at @s  run particle ds:flashstep1 ~~~
execute as @s[scores={move=41..42}] at @s run execute as @e[tag=!Frames,scores={Stun=1..},c=1] at @s run tp @e[scores={move=40..43},c=1] ^^^2.25 facing @s

scoreboard players set @e[scores={move=40..41}] atk 2
execute as @s[scores={move=40..41}] at @s run function damages/blunt_damage
execute as @s[scores={move=40..41}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=40..43}] at @s positioned ^^^3.5 run execute as @e[tag=!Frames,r=4.25] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=40..41}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Flourish 7
execute as @s[scores={move=40..41}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=40..41}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=40..41}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 6 override
execute as @s[scores={move=40..41}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=40..41}] at @s positioned ^^1.4^1.5 run particle ds:punch1
execute as @s[scores={move=40..41}] at @s positioned ^^1.4^1.5 run particle ds:punch2
execute as @s[scores={move=40..41}] at @s positioned ^^1.4^1.5 run particle ds:punch3
execute as @s[scores={move=40..41}] at @s positioned ^^1.4^1.5 run particle ds:punch4
execute as @s[scores={move=40..41}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 2  9999
execute as @s[scores={move=40..41}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999
execute as @s[scores={move=38..41}] at @s run tp @s ~~~ facing @e[tag=!Frames,scores={Flourish=1..},c=1]


execute as @s[scores={move=30..33}] at @s run execute as @e[tag=!Frames,scores={Stun=1..},c=1] at @s run tp @s @s
execute as @s[scores={move=30..33}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=30..32}] at @s run execute as @e[tag=!Frames,scores={Stun=1..},c=1] at @s run tp @e[scores={move=29..32},c=1] ^^^2.25 facing @s

scoreboard players set @e[scores={move=30..31}] atk 2
execute as @s[scores={move=15..34}] at @s run tp @s ~~~
execute as @s[scores={move=30}] at @s run function damages/blunt_damage
execute as @s[scores={move=30}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=30..34}] at @s positioned ^^^3.5 run execute as @e[tag=!Frames,r=4.25] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=0.1]
execute as @s[scores={move=30}] at @s positioned ^^^3.5 run scoreboard players operation @e[tag=!Frames,r=4.25] damage += @s damageadd
execute as @s[scores={move=30}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] knockdown 95
execute as @s[scores={move=30}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 10
execute as @s[scores={move=30}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 15
execute as @s[scores={move=30}] at @s positioned ^^^3.5 run effect @e[tag=!Frames,r=4.25] levitation 1 1 true
execute as @s[scores={move=30}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 15 override
execute as @s[scores={move=30}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=27..30}] at @s run summon ds:knockback
execute as @s[scores={move=30}] at @s positioned ^^1.4^1.5 run particle ds:ground_slam2
execute as @s[scores={move=30}] at @s positioned ^^1.4^1.5 run particle ds:ground_slam2
execute as @s[scores={move=30}] at @s positioned ^^1.4^1.5 run particle ds:impact
execute as @s[scores={move=30}] at @s positioned ^^1.4^1.5 run particle ds:impact
execute as @s[scores={move=30}] at @s positioned ^^0.25^1.5 run particle ds:rubble3
execute as @s[scores={move=30}] at @s positioned ^^1.4^1.5 run particle ds:heavy_impact1
execute as @s[scores={move=30}] at @s positioned ^^1.4^1.5 run particle ds:heavy_impact2
execute as @s[scores={move=30}] at @s positioned ^^1.4^1.5 run particle ds:heavy_impact3
execute as @s[scores={move=30}] at @s positioned ^^1.4^1.5 run particle ds:heavy_impact4
execute as @s[scores={move=30}] at @s positioned ^^1.4^1.5 run particle ds:heavy_impact5
execute as @s[scores={move=30}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 1.5  9999
execute as @s[scores={move=30}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999
execute as @s[scores={move=30}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound mob.shock @a[r=50] ~~~ 9999 1.75 9999
execute as @s[scores={move=30}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound mob.metal1 @a[r=50] ~~~ 9999 1.45 9999