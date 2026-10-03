scoreboard players set @s Stun 5
tp @s ~~~
execute unless score mobeventstoggle Mode = three Mode run give @p[r=100,m=!spectator] ds:atomic_crystal
execute unless score mobeventstoggle Mode = three Mode run scoreboard players random @s chance 1 10
execute as @s[scores={chance=1..10}] at @s unless score mobeventstoggle Mode = three Mode positioned ^3^4^ run function random_crystal_drop
execute as @s[scores={chance=1..10}] at @s unless score mobeventstoggle Mode = three Mode positioned ^-5^6^ run function random_crystal_drop
execute as @s[scores={chance=1..10}] at @s unless score mobeventstoggle Mode = three Mode positioned ^-1^7^3 run function random_crystal_drop
execute as @s[scores={chance=1..10}] at @s unless score mobeventstoggle Mode = three Mode positioned ^3^^-2 run function random_crystal_drop
execute as @s[scores={chance=1..10}] at @s unless score mobeventstoggle Mode = three Mode positioned ^8^14^4 run function random_crystal_drop
execute as @s[scores={chance=1..10}] at @s unless score mobeventstoggle Mode = three Mode positioned ^3^22^12 run function random_crystal_drop
execute as @s[scores={chance=1..10}] at @s unless score mobeventstoggle Mode = three Mode positioned ^-7^30^-4 run function random_crystal_drop
execute as @s[scores={chance=1..6}] at @s unless score mobeventstoggle Mode = three Mode positioned ^3^1^ run function random_crystal_drop
execute as @s[scores={chance=1..6}] at @s unless score mobeventstoggle Mode = three Mode positioned ^-16^14^ run function random_crystal_drop
execute as @s[scores={chance=1..6}] at @s unless score mobeventstoggle Mode = three Mode positioned ^12^5^ run function random_crystal_drop

camerashake add @a[r=40] 2 0.15
execute unless score exp_multiplier Mode = eleven Mode run xp 100l @a[r=70,m=!spectator]
scoreboard players random @a[r=70,m=!spectator] expadd 1500 2250
damage @s 2 override