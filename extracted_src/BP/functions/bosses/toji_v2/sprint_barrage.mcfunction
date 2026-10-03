playanimation @s[scores={move=100}] animation.toji.sprint_barrage

playanimation @s[scores={move=86..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=86..,Stun=1..}] move 0

scoreboard players set @s[scores={move=10..85}] Frames 6
scoreboard players set @s[scores={move=10..85}] Move 5


execute as @s[scores={move=1..85}] unless entity @e[tag=!Frames,r=4] run scriptevent ds:knockback 2

execute as @s[scores={move=1..85}] unless block ~~-0.2~ air unless block ~~-0.2~ barrier unless block ~~-0.2~ water run particle ds:sprint

execute as @s[scores={move=1..85}] run execute as @e[r=4.8,tag=!Frames] at @s run scriptevent ds:knockback -1
execute as @s[scores={move=1..85}] run execute as @e[r=4.8,tag=!Frames] at @s run scoreboard players set @s Stun 25
execute as @s[scores={move=1..85}] run execute as @e[r=4.8,tag=!Frames] at @s run scoreboard players set @s knock 0

execute as @s[scores={atk=1..,move=1..125}] at @s run playsound dig.chain @a[r=50] ~~~ 0.75 0.9

scoreboard players set @e[scores={move=1..85}] atk 2

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

execute as @s[scores={move=1..65}] at @s run kill @e[family=projectile,r=4.25]
execute as @s[scores={move=1..65}] at @s run function damages/blunt_damage
execute as @s[scores={move=1..65}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=1..65}] at @s positioned ^^^3.5 run effect @e[tag=!Frames,r=4.25] slowness 1 2 true
execute as @s[scores={move=1..65}] at @s positioned ^^^3.5 run scoreboard players set @e[tag=!Frames,r=4.25] Stun 25
execute as @s[scores={move=1..65}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Hit 3
execute as @s[scores={move=1..65}] at @s positioned ^^^3.5 run scoreboard players add @e[tag=!Frames,r=4.25] Evade 1
execute as @s[scores={move=1..65}] at @s positioned ^^^3.5 run damage @e[tag=!Frames,r=4.25] 1 override entity @s
execute as @s[scores={move=1..65}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 0.25 0.1
execute as @s[scores={move=85}] at @s positioned ^^1^1.5 run particle ds:ground_slam2
execute as @s[scores={move=65}] at @s positioned ^^1^1.5 run particle ds:ground_slam2
execute as @s[scores={move=45}] at @s positioned ^^1^1.5 run particle ds:ground_slam2
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:ground_slam2
execute as @s[scores={move=5}] at @s positioned ^^1^1.5 run particle ds:ground_slam2
execute as @s[scores={move=1..65}] at @s positioned ~~1~ run particle ds:domain_breaker1 ~~~
execute as @s[scores={move=1..65}] at @s positioned ~~1~ run particle ds:domain_breaker2 ~~~
execute as @s[scores={move=1..65}] at @s positioned ~~1~ run particle ds:domain_breaker3 ~~~
execute as @s[scores={move=1..65}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 2.5 9999
execute as @s[scores={move=1..65}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound mob.metal1 @a ~~~ 1 4
execute as @s[scores={move=1..65}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=4.25] run playsound random.explode @a[r=50] ~~~ 9999 2.75 9999

