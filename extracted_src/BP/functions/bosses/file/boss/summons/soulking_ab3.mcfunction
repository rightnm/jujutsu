playanimation @s[scores={move=40..41}] animation.soulking.ab3

scoreboard players set @s Frames 5


execute as @s[scores={move=11..}] at @s run scriptevent ds:downfall
execute as @s[scores={move=10}] at @s run camerashake add @a[r=25] 2 0.15
execute as @s[scores={move=10}] at @s run playsound mob.distort1 @a[r=100] ~~~ 99999 4.5 99999
execute as @s[scores={move=10}] at @s run playsound mob.slash1 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=10}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=10},type=!player] at @s run summon ds:projectile ^^1^1 facing @e[family=!heroic,family=!projectile,r=200,scores={detect_health=0..}] none voidslash
execute as @s[scores={move=10},type=player] at @s run summon ds:projectile ^^1^1 facing ^^^15 none voidslash


execute as @s[scores={move=10}] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=10}] at @s run scoreboard players set @s Disabled 20


tag @s[scores={move=1..4}] remove wep3
scoreboard players set @s Stun 15
