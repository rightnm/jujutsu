scoreboard players set @s Stun 5
tp @s ~~~
execute unless score mobeventstoggle Mode = three Mode run scoreboard players random @s chance 1 10
execute as @s[scores={chance=1..10}] at @s unless score mobeventstoggle Mode = three Mode positioned ^-3^1^ run function random_crystal_drop
execute as @s[scores={chance=1..6}] at @s unless score mobeventstoggle Mode = three Mode positioned ^3^1^ run function random_crystal_drop
camerashake add @a[r=40] 2 0.15
execute unless score exp_multiplier Mode = eleven Mode run xp 30l @a[r=50,scores={combat=1..},m=!spectator]
scoreboard players random @a[scores={combat=1..},r=50,m=!spectator] expadd 250 350
damage @s 2 suicide