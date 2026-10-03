playanimation @s[scores={move=30..}] animation.primesoul.katana_combo2

execute as @s[scores={move=30}] at @s run particle ds:dirt0
execute as @s[scores={move=30..}] at @s run particle ds:stars ~~1~
execute as @s[scores={move=30..}] at @s run playsound mob.turbulence @a ~~~ 99999 1.25 99999
execute as @s[scores={move=30..}] at @s run particle ds:parrymarker



tp @s ~ ~ ~ facing @p[m=!c]


execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run particle ds:origin_flashslash1b 
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run particle ds:origin_flashslash2b 
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run particle ds:origin_flashslash3b 
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 positioned ~ 240 ~ run particle ds:judgement_cut_slashes4
execute as @s[scores={move=5..7}] at @s positioned ^^6^16 run particle ds:judgement_cut_slashes1
execute as @s[scores={move=6}] at @s positioned ^^6^16 run particle ds:invert


execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run execute as @a[scores={punch=1..},r=16] at @s anchored eyes positioned ^^^0.5 run function parry
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run playsound mob.slash @a[r=100] ~~-40~ 99999 4.5 99999
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run playsound mob.slash1 @a[r=100] ~~-40~ 99999 3 99999
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run scoreboard players set @e[tag=!Frames,family=!heroic,r=16] Hit 3
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run damage @e[tag=!Frames,family=!heroic,r=16] 3 suicide
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run scoreboard players set @e[tag=!Frames,family=!heroic,r=16] Stun 8
execute as @s[scores={move=5..25}] at @s positioned ^^6^16 run scoreboard players add @e[tag=!Frames,family=!heroic,r=16] Evade 2

tag @s[scores={move=1..3}] remove katanault1