scoreboard players set @s Stun 5
tp @s ~~~
particle ds:finger_death1 ~~~
particle ds:finger_death2 ~~~
particle ds:finger_death3 ~~~
execute unless score mobeventstoggle Mode = three Mode run scoreboard players random @s chance 1 10
execute unless score mobeventstoggle Mode = three Mode run execute as @s[scores={chance=1..}] positioned ~~1~ run function finger_drop
playsound mob.shock1 @a ~~~ 
playsound mob.burn @a ~~~
camerashake add @a[r=40] 2 0.15
playsound mob.blaze.shoot @a ~~~ 1 0.75
execute unless score exp_multiplier Mode = eleven Mode run xp 50l @a[r=50,scores={combat=1..},m=!spectator]
scoreboard players random @a[scores={combat=1..},r=50,m=!spectator] expadd 150 250
damage @s 2 suicide