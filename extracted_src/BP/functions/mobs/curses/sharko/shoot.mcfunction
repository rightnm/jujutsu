playanimation @s[scores={move=30}] animation.sharko.shoot

execute as @s[scores={move=15..23}] at @s run execute as @e[scores={Hit=1..},r=45] at @s run function damages/slash_damage

execute as @s[scores={move=1..}] at @s run tp @s ~~~

execute as @s[scores={move=15..23}] at @s run particle ds:sharko_shoot1 ~~3~
execute as @s[scores={move=15..23}] at @s run particle ds:sharko_shoot2 ~~3~
execute as @s[scores={move=15..23}] at @s run camerashake add @a[r=40] 0.5 0.12
execute as @s[scores={move=15..23}] at @s run playsound mob.sword @a[r=40] ~~~ 99999 2.5 99999
execute as @s[scores={move=15..23}] at @s run playsound mob.blaze.shoot @a[r=40] ~~~ 99999 1.5 99999
execute as @s[scores={move=15..23}] at @s run damage @e[r=45,tag=!Frames,rm=0.5,type=!ds:sharko] 1 override
execute as @s[scores={move=15..23}] at @s run scoreboard players set @e[r=45,tag=!Frames,rm=0.5,type=!ds:sharko] Hit 3
execute as @s[scores={move=15..23}] at @s run scoreboard players set @e[r=45,tag=!Frames,rm=0.5,type=!ds:sharko] Stun 5
execute as @s[scores={move=15..23}] at @s run scoreboard players add @a[r=45,tag=!Frames,rm=0.5] Evade 1
