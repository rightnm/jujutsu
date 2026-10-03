playanimation @s[scores={move=25..26}] animation.soulking.ab4


scoreboard players set @s Frames 5


execute as @s[scores={move=25}] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=25}] at @s run execute as @a[r=200] at @s run playsound music.sekiro @s ~~~ 1 1.5

execute as @s[scores={move=8..17}] at @s run particle ds:voidblast ~~1~
execute as @s[scores={move=8..17}] at @s run particle ds:voidblast1 ~~1~
execute as @s[scores={move=8..17}] at @s run particle ds:voidblast2 ~~1~
execute as @s[scores={move=8..17}] at @s run particle ds:voidcrush3 ~~1~

execute as @s[scores={move=8..17}] at @s run camerashake add @a[r=25] 2 0.15
execute as @s[scores={move=21}] at @s run playsound mob.distort1 @a[r=100] ~~-25~ 99999 5 99999
execute as @s[scores={move=8..17}] at @s run playsound mob.distort3 @a[r=100] ~~-25~ 99999 2.5 99999
execute as @s[scores={move=8..17}] at @s  run damage @e[tag=!Frames,family=!heroic,r=10] 2 suicide
execute as @s[scores={move=8..17}] at @s  run scoreboard players set @e[tag=!Frames,family=!heroic,r=10] Stun 15
execute as @s[scores={move=8..17}] at @s  run scoreboard players set @e[tag=!Frames,family=!heroic,r=10] Hit 3
execute as @s[scores={move=8..17}] at @s  run tag @e[tag=!Frames,family=!heroic,r=10] add voidmarked
execute as @s[scores={move=7}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=7}] at @s run summon ds:red_reverse ~~~

execute as @s[scores={move=6..7}] at @s run effect  @e[tag=!Frames,family=!heroic,r=10] levitation 1 18 true


execute as @s[scores={move=1..7}] at @s run tp @s ~~~
scoreboard players set @s Stun 20
