scoreboard players random @s[scores={BasicM1=6..}] strength2 1 2
playanimation @s[scores={BasicM1=6,strength2=1}] animation.mahoraga.quick_slash

execute as @s[scores={BasicM1=4,strength2=1}] at @s positioned ^^^3.55 run scoreboard players add @e[r=3.5,tag=!Frames,tag=!mahoraga_tame] Evade 2
execute as @s[scores={BasicM1=4,strength2=1}] at @s positioned ^^^3.55 run scoreboard players add @e[r=3.5,tag=!Frames,tag=!mahoraga_tame] Hit 3
execute as @s[scores={BasicM1=4,strength2=1}] at @s positioned ^^^3.55 run damage @e[r=3.5,tag=!Frames,tag=!mahoraga_tame] 2 override entity @s
execute as @s[scores={BasicM1=4,strength2=1}] at @s positioned ^^^3.55 run damage @e[r=3.5,tag=!Frames,tag=!mahoraga_tame,family=purecurse] 5 suicide entity @s
execute as @s[scores={BasicM1=4,strength2=1}] at @s positioned ^^^3.55 run damage @e[r=3.5,tag=!Frames,tag=!mahoraga_tame,tag=curse] 5 suicide entity @s
execute as @s[scores={BasicM1=5,strength2=1}] at @s positioned ^^^3.5 run playsound mob.slash1 @a[r=90] ~~~ 0.25 2.442

playanimation @s[scores={BasicM1=6,strength2=2}] animation.mahoraga.quick_punch

execute as @s[scores={BasicM1=4,strength2=2}] at @s positioned ^^^3.55 run scoreboard players add @e[r=3.5,tag=!Frames,tag=!mahoraga_tame] Evade 2
execute as @s[scores={BasicM1=4,strength2=2}] at @s positioned ^^^3.55 run scoreboard players add @e[r=3.5,tag=!Frames,tag=!mahoraga_tame] Hit 3
execute as @s[scores={BasicM1=4,strength2=2}] at @s positioned ^^^3.55 run damage @e[r=3.5,tag=!Frames,tag=!mahoraga_tame] 3 override entity @s
execute as @s[scores={BasicM1=5,strength2=2}] at @s positioned ^^^3.5 run playsound mob.witch.throw @a[r=90] ~~~ 1 0.75

scoreboard players set @s[scores={BasicM1=1..3}] chance 0
scoreboard players set @s[scores={BasicM1=1..3}] BasicM1 0