playanimation @s[scores={move=20..}] animation.strong_slash

effect @s[scores={move=20..}] slowness 1 10 true

execute as @s[scores={move=11}] at @s run camerashake add @a[r=12] 2 0.15
execute as @s[scores={move=11}] at @s run playsound mob.blaze.shoot @a[r=25] ~~~ 99999 2.5 999999
execute as @s[scores={move=11}] at @s run playsound mob.witch.throw @a[r=25] ~~~ 99999 1 999999
execute as @s[scores={move=11}] at @s run summon ds:knives ^^1^3 facing ^^^9
scoreboard players set @s[scores={move=1..6}] chance 0