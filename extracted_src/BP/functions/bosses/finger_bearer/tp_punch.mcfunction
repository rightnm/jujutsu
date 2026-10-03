playanimation @s[scores={move=44..}] animation.finger_bearer.tp_punch

scoreboard players set @s[scores={move=1..28}] chance 0

execute as @s[scores={move=37..40}] at @s run execute as @p[tag=!Frames,r=90,rm=58,tag=!unselect] at @s run tp @e[type=ds:finger_bearer,c=1,scores={move=37..40}] ^^^-1.5 facing @s
execute as @s[scores={move=39..41}] at @s run playsound mob.blaze.shoot @a[r=90] ~~~ 999999 2.5 999999
execute as @s[scores={move=39..41}] at @s run particle ds:evade ~~~
execute as @s[scores={move=39..41}] at @s run particle ds:evade1 ~~~
execute as @s[scores={move=39..41}] at @s run particle ds:evade2 ~~~
execute as @s[scores={move=39..41}] at @s run particle ds:evade3 ~~~
execute as @s[scores={move=39..41}] at @s run particle ds:dodge ~~~

execute as @s[scores={move=28..29}] at @s run tp @s ~~~ facing @p
execute as @s[scores={move=29}] at @s positioned ^^^7 run scoreboard players add @e[r=6.95,tag=!Frames] Stun 30
execute as @s[scores={move=29}] at @s  positioned ^^^7 run scoreboard players add @e[r=6.95,tag=!Frames] knockdown 80
execute as @s[scores={move=29}] at @s positioned ^^^7  run scoreboard players add @e[r=6.95,tag=!Frames] Evade 12
execute as @s[scores={move=29}] at @s positioned ^^^7  run scoreboard players add @e[r=6.95,tag=!Frames] Hit 8
execute as @s[scores={move=29}] at @s  positioned ^^^7 run damage @e[r=6.95,tag=!Frames] 12 entity_attack entity @s
execute as @s[scores={move=29}] at @s  positioned ^^^7 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=29}] at @s positioned ^^^7  run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=28}] at @s positioned ^^^7  run particle ds:ground_slam2 ^^1^2