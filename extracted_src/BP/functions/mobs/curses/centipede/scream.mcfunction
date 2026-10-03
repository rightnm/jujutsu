playanimation @s[scores={move=50..}] animation.centipede.scream

execute as @s[scores={move=28..40}] at @s run playsound mob.phantom.death @a[r=200] ~~6~ 99999 0.3 9999
execute as @s[scores={move=28..40}] at @s run playsound mob.phantom.hurt @a[r=200] ~~6~ 99999 0.8 9999
execute as @s[scores={move=28..40}] at @s run camerashake add @a[r=40] 0.3 0.09 rotational
execute as @s[scores={move=28..40}] at @s run particle ds:scream_wave ~~6~
execute as @s[scores={move=28..40}] at @s run particle ds:large_slam5 ~~6~

execute as @s[scores={move=28..40}] at @s run effect @a[r=40] slowness 3 2
execute as @s[scores={move=20..25}] at @s run summon ds:centipede_curse ~~~
execute as @s[scores={move=20..25}] at @s run scoreboard players set @e[type=ds:centipede_curse,r=2,c=1] Deleter 400
execute as @s[scores={move=19..25}] at @s run spreadplayers ~ ~ 5 15 @e[type=ds:centipede_curse,r=2,c=1]