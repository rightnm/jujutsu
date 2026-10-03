playanimation @s[scores={move=45..46}] animation.primesoul.katana_ranged2
tag @s[scores={move=45..}] remove katanaranged1

execute as @s[scores={move=1..9}] at @s run event entity @s primekatana_sheathed
execute as @s[scores={move=37..41}] at @s run event entity @s primekatana
execute as @s[scores={move=32}] at @s run particle ds:parrymarker ~~1~
execute as @s[scores={move=32}] at @s run playsound mob.flash @a[r=200] ~~~ 99999 1 99999

execute as @s[scores={move=45}] at @s run playsound mob.wither.hurt @a ~~1~ 9999 2 9999
execute as @s[scores={move=43}] at @s run playsound mob.wither.hurt @a ~~1~ 9999 2 9999
execute as @s[scores={move=45}] at @s run particle ds:dirt0

execute as @s[scores={move=43..}] at @s run particle ds:rift_stars
execute as @s[scores={move=43..}] at @s run particle ds:rift7 ~~1~
execute as @s[scores={move=43..}] at @s run particle ds:turbo_intensity2
execute as @s[scores={move=43..}] at @s run particle ds:turbo_intensity3
execute as @s[scores={move=43..}] at @s run particle ds:rift6 ~~1~
execute as @s[scores={move=43..}] at @s run particle ds:rift4 ~~1~
execute as @s[scores={move=40..}] at @s run tp @s ~~~ facing @p[m=!c]

playanimation @e[tag=eqflashslashed] animation.stunned 
scoreboard players set @e[tag=eqflashslashed] Stun 25

execute as @s[scores={move=25..41}] at @s run execute as @e[scores={punch=1..2},r=10] at @s positioned ^^^1 run function parry


execute as @s[scores={move=32..33}] at @s run tp @s @p[scores={knock=1..}]
execute as @s[scores={move=35..39}] at @s if entity @p[r=200] run tp @s ^^^2.5
execute as @s[scores={move=25..39}] at @s if entity @p[r=30] run tp @s ^^^1.5
execute as @s[scores={move=25..39}] at @s unless entity @p[r=30] run tp @s ^^^0.25
execute as @s[scores={move=25..39}] at @s run particle ds:origin_flashslash1 ~~~
execute as @s[scores={move=25..39}] at @s run particle ds:origin_flashslash2 ~~~
execute as @s[scores={move=25..39}] at @s run particle ds:origin_flashslash3 ~~~
execute as @s[scores={move=25..39}] at @s run  camerashake add @a[r=200] 0.15 0.09
execute as @s[scores={move=25..39}] at @s run playsound mob.slash1 @a[r=200] ~~-40~ 999999 3 999999
execute as @s[scores={move=25..39}] at @s run playsound mob.slash @a[r=200] ~~-40~ 999999 4.5 999999
execute as @s[scores={move=25..39}] at @s run playsound mob.wither.shoot @a[r=200] ~~-40~ 999999 2.5 999999
execute as @s[scores={move=25..39}] at @s run execute as @e[tag=!Frames,family=!heroic,r=5,tag=!eqflashslashed] at @s run playsound mob.slash1 @a ~~~
execute as @s[scores={move=25..39}] at @s run execute as @e[tag=!Frames,family=!heroic,r=5,tag=!eqflashslashed] at @s run playsound mob.sword @a ~~~ 99999 1.5 9999
execute as @s[scores={move=25..39}] at @s run tag @e[tag=!Frames,family=!heroic,r=5] add eqflashslashed

execute as @s[scores={move=10}] at @s run playsound mob.parry @a[r=200] ~~~ 99999 3.25 99999
execute as @s[scores={move=10}] at @s run  camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=8..24}] at @s run camera @a[r=40] set minecraft:free pos ^^1.25^3 facing ~~1.25~
execute as @s[scores={move=5..10}] at @s run damage @e[tag=eqflashslashed] 5 suicide
execute as @s[scores={move=5..10}] at @s run scoreboard players set @e[tag=eqflashslashed] Hit 5
execute as @s[scores={move=5..10}] at @s run execute as @e[tag=!Frames,family=!heroic,r=5,tag=!eqflashslashed] at @s run playsound mob.sword @a ~~~ 0.15 2
execute as @s[scores={move=5..10}] at @s run execute as @e[tag=!Frames,family=!heroic,r=5,tag=!eqflashslashed] at @s run playsound mob.slash1 @a ~~~ 0.15 2
execute as @s[scores={move=5..10}] at @s run execute as @e[tag=!Frames,family=!heroic,r=5,tag=!eqflashslashed] at @s run particle ds:shard_make1 ~~1~
execute as @s[scores={move=5..10}] at @s run execute as @e[tag=!Frames,family=!heroic,r=5,tag=!eqflashslashed] at @s run particle ds:shard_make2 ~~1~
execute as @s[scores={move=5..10}] at @s run execute as @e[tag=!Frames,family=!heroic,r=5,tag=!eqflashslashed] at @s run particle ds:origin_flashslash1 ~~~
execute as @s[scores={move=1..6}] at @s run camera @a clear
execute as @s[scores={move=1..5}] at @s run tag @e remove eqflashslashed

execute as @s[scores={move=1..}] at @s run tp @s ~~~

tag @s[scores={move=1..4}] remove katanaranged2