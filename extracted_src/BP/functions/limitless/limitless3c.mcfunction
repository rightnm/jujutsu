playanimation @s[scores={move=50}] animation.reversal_red2
execute as @s[scores={levitate=1..,move=50}] at @s if block ~~-1~ air if block ~~-2~ air run playanimation @s animation.reversal_red2b
execute as @s[scores={levitate=1..,move=50}] at @s if block ~~-1~ air if block ~~-2~ air run particle ds:flashstep1 ~~~
tag @e[scores={move=1..2}] remove form3c

scoreboard players set @e[scores={move=1..}] Frames 5

execute as @s[scores={move=6}] at @s run camerashake add @a[r=50] 4 0.25
execute as @s[scores={move=45}] at @s run camera @a[r=20] fade time 1 0 1 color 255 75 75

execute as @s[scores={move=45}] at @s run playsound mob.red1 @a ~~~  100000 0.37 100000
execute as @s[scores={move=6}] at @s run playsound mob.shock2 @a ~~~  100000 0.35 100000
execute as @s[scores={move=6}] at @s run playsound mob.shock1 @a ~~~  100000 0.5 100000

execute as @s[scores={move=1..16}] at @s run tp @s ~~~


execute as @s[scores={move=10}] at @s positioned ^^^7 run damage @e[r=6.9,tag=!form3c,tag=!Frames] 100 override
execute as @s[scores={move=10}] at @s run summon ds:projectile Reversal ^^1^1
execute as @s[scores={move=10}] at @s run summon ds:projectile ReversalTRG ^^1^55
execute as @s[scores={move=9..11}] at @s run scoreboard players set @e[name=Reversal,c=1] Deleter 17
execute as @s[scores={move=9..11}] at @s positioned ^^^55 run scoreboard players set @e[name=ReversalTRG,c=1] Deleter 17

