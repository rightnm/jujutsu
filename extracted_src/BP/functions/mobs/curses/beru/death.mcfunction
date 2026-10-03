scoreboard players set @s Stun 5
particle ds:egg_aura1
particle ds:egg_aura1
particle ds:egg_aura2
particle ds:egg_aura2
particle ds:egg_aura3
particle ds:egg_aura3
particle ds:egg_aura1
particle ds:egg_aura1
particle ds:egg_aura1
execute unless score mobeventstoggle Mode = three Mode run give @p[r=100,m=!spectator] ds:beru_daggers

playsound mob.wither.death @a ~~~ 999999 0.75 999999
playsound mob.phantom.death @a ~~~ 999999 0.5 999999
tp @s ~~~
execute unless score mobeventstoggle Mode = three Mode run scoreboard players random @s chance 1 10

camerashake add @a[r=40] 2 0.15
execute unless score exp_multiplier Mode = eleven Mode run xp 100l @a[r=70,m=!spectator]
scoreboard players random @a[r=70,m=!spectator] expadd 1500 2250
damage @s 2 suicide