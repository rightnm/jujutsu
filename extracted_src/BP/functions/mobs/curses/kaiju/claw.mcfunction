

playanimation @s[scores={move=21..}] animation.kaiju_curse.claw


effect @s[scores={move=21..}] slowness 1 10 true

execute as @s[scores={move=5..}] at @s run tp @s ~~~ facing @e[type=!ds:kaiju_curse,family=!projectie,family=!damage,type=!item,type=!xp_orb,type=!arrow,r=30,c=1]

execute as @s[scores={move=16}] at @s run camerashake add @a[r=500] 1 0.15
execute as @s[scores={move=16}] at @s positioned ^^15^18 run playsound mob.slash @a[r=250] ~~~ 999999 1.25 999999
execute as @s[scores={move=16}] at @s positioned ^^15^18 run playsound mob.slash @a[r=250] ~~~ 999999 1.1 999999
execute as @s[scores={move=16}] at @s positioned ^^15^18 run playsound mob.slash @a[r=250] ~~~ 999999 0.95 999999

execute as @s[scores={move=16}] at @s positioned ^^15^18 run execute as @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.blood1 @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=16}] at @s positioned ^^15^18 run execute as @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.sword @a[r=100] ~~~ 99999 0.85 99999
execute as @s[scores={move=16}] at @s positioned ^^15^18 run execute as @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=16}] at @s positioned ^^15^18 run execute as @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=16}] at @s positioned ^^15^18 run damage @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] 25 override
execute as @s[scores={move=16}] at @s positioned ^^15^18 run scoreboard players set @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Stun 25
execute as @s[scores={move=16}] at @s positioned ^^15^18 run scoreboard players set @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Hit 5
execute as @s[scores={move=16}] at @s positioned ^^15^18 run scoreboard players add @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Evade 15



execute as @s[scores={move=10}] at @s run camerashake add @a[r=500] 1 0.15
execute as @s[scores={move=10}] at @s positioned ^^15^18 run playsound mob.slash @a[r=250] ~~~ 999999 1.25 999999
execute as @s[scores={move=10}] at @s positioned ^^15^18 run playsound mob.slash @a[r=250] ~~~ 999999 1.1 999999
execute as @s[scores={move=10}] at @s positioned ^^15^18 run playsound mob.slash @a[r=250] ~~~ 999999 0.95 999999

execute as @s[scores={move=10}] at @s positioned ^^15^18 run execute as @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.blood1 @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=10}] at @s positioned ^^15^18 run execute as @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run playsound mob.sword @a[r=100] ~~~ 99999 0.85 99999
execute as @s[scores={move=10}] at @s positioned ^^15^18 run execute as @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=10}] at @s positioned ^^15^18 run execute as @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=10}] at @s positioned ^^15^18 run damage @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] 25 override
execute as @s[scores={move=10}] at @s positioned ^^15^18 run scoreboard players set @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Stun 25
execute as @s[scores={move=10}] at @s positioned ^^15^18 run scoreboard players set @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Hit 5
execute as @s[scores={move=10}] at @s positioned ^^15^18 run scoreboard players add @e[r=20,tag=!Frames,type=!ds:massive_knockback,type=!ds:kaiju_curse] Evade 15


