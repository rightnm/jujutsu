playanimation @s[scores={move=40..}] animation.soulking.ab2

scoreboard players set @s Frames 5

execute as @s[scores={move=1..}] at @s run particle ds:void_slash1c ~~~
execute as @s[scores={move=36..}] at @s run particle ds:turbo_intensity2 ~~~
execute as @s[scores={move=36..}] at @s run particle ds:turbo_intensity3 ~~~
execute as @s[scores={move=36..},type=!player] at @s run tp @s ~~~ facing @e[tag=!Frames,family=!heroic,r=100]

execute as @s[scores={move=35..36},type=player] at @s run tp @s @s
execute as @s[scores={move=36}] at @s run summon ds:projectile ~~~ facing ^^^10 none voidpassage 
execute as @s[scores={move=35}] at @s run tp @s ^^^40
execute as @s[scores={move=35}] at @s run playsound mob.distort2 @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=35}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=35}] at @s run camerashake add @a[r=200] 2 0.15


execute as @s[scores={move=10..30}] at @s run execute as @e[name=voidpassage,c=1] at @s positioned ^^^3 run function bosses/file/boss/summons/voidpassage
execute as @s[scores={move=10..35}] at @s run execute as @e[name=voidpassage,c=1] at @s run tp @s ~~~ facing @e[type=ds:soulking,c=1,scores={chance=11}]
execute as @s[scores={move=10..35}] at @s run execute as @e[name=voidpassage,c=1] at @s run tp @s ~~~ facing @p[tag=wep2,hasitem={item=ds:void_katana,location=slot.weapon.mainhand}]

execute as @s[scores={move=30..34},tag=!player] at @s if entity @p[tag=arenaboss] run tp @s ~ 240 ~ 
execute as @s[scores={move=1..34}] at @s run tp @s ~~~ 


tag @s[scores={move=1..4}] remove wep2
