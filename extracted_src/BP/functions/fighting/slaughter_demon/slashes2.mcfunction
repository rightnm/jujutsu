playanimation @s animation.stunned i 0.25
particle ds:thousand_cuts2
particle ds:thousand_cuts3
particle ds:thousand_cuts6
particle ds:thousand_cuts7
particle ds:blood_splat2
playsound mob.slash1 @a[r=30] ~~~ 99999 2.4 99999
playsound mob.swordslash @a[r=30] ~~~ 99999 1.4 99999
playsound mob.wither.shoot @a[r=30] ~~~ 99999 1.4 99999
playsound mob.wither.shoot @a[r=30] ~~~ 99999 0.7 99999
scoreboard players set @s Hit 4
playsound mob.sword @a[r=30] ~~~  9999 1.25 9999
camerashake add @a[r=40] 0.5 0.08
execute as @e[tag=deadlypiercing,scores={move=929..},c=1] at @s run particle ds:flashstep1

