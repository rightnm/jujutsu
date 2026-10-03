playanimation @s[scores={move=35..}] animation.beru.fly_slam

scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=5..}] Camera 6
scoreboard players set @s[scores={move=5..}] Frames 6

execute as @s[scores={move=35..}] at @s run particle ds:ground_pound1
execute as @s[scores={move=35..}] at @s run particle ds:ground_pound2
execute as @s[scores={move=35..}] at @s run particle ds:ground_pound3
execute as @s[scores={move=35..}] at @s run particle ds:ground_pound4
execute as @s[scores={move=35..}] at @s run particle ds:pushed_up1

execute as @s[scores={move=34}] at @s run tp @s ~~20~ facing @e[type=!ds:beru_curse,r=70,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1]




execute as @s[scores={move=6..33}] at @s run particle ds:ant_fly1 ~~2~
execute as @s[scores={move=6..25}] at @s run particle ds:ant_fly2 ~~2~
execute as @s[scores={move=6..33}] at @s run tp @s ~~~ facing @e[type=!ds:beru_curse,r=70,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1]

execute as @s[scores={move=4..5}] at @s run tp @s @e[type=!ds:beru_curse,r=70,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1]
execute as @s[scores={move=4}] at @s run particle ds:demons_descent1 ~~~
execute as @s[scores={move=4}] at @s run particle ds:demons_descent2 ~~~
execute as @s[scores={move=4}] at @s run particle ds:demons_descent3 ~~~
execute as @s[scores={move=4}] at @s run particle ds:demons_descent4 ~~~
execute as @s[scores={move=4}] at @s run particle ds:demons_descent5 ~~~
execute as @s[scores={move=4}] at @s run particle ds:demons_descent6 ~~~
execute as @s[scores={move=4}] at @s run particle ds:demons_descent7 ~~~
execute as @s[scores={move=4}] at @s run particle ds:demons_descent8 ~~~
execute as @s[scores={move=4}] at @s run particle ds:demons_descent9 ~~~
execute as @s[scores={move=4}] at @s run particle ds:ground_impact_red1
execute as @s[scores={move=4}] at @s unless block ~~-1~ air run particle ds:ground_pound1
execute as @s[scores={move=4}] at @s unless block ~~-1~ air run particle ds:ground_pound2
execute as @s[scores={move=4}] at @s unless block ~~-1~ air run particle ds:ground_pound3
execute as @s[scores={move=4}] at @s unless block ~~-1~ air run particle ds:ground_pound4
execute as @s[scores={move=4}] at @s run camerashake add @a[r=100] 3 0.25 rotational
execute as @s[scores={move=4}] at @s run damage @e[r=20,tag=!Frames,type=!ds:beru_curse] 50 override
execute as @s[scores={move=4}] at @s run scoreboard players set @e[r=20,type=!ds:beru_curse] Hit 5
execute as @s[scores={move=4}] at @s run scoreboard players add @e[r=20,type=!ds:beru_curse] Evade 25
execute as @s[scores={move=4}] at @s run scoreboard players set @e[r=20,type=!ds:beru_curse] Stun 20
execute as @s[scores={move=4}] at @s run playsound mob.burst @a ~~~ 99999 1.75 99999
execute as @s[scores={move=4}] at @s run playsound mob.shock1 @a ~~~ 99999 1.25 99999
execute as @s[scores={move=4}] at @s run playsound mob.wither.shoot @a ~~~ 99999 0.75 99999
execute as @s[scores={move=4}] at @s run playsound mob.wither.break_block @a ~~~ 99999 0.75 99999
execute as @s[scores={move=4}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=4}] at @s run summon ds:red_reverse ~~~



