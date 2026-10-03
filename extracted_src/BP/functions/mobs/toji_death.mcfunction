scoreboard players set @s Stun 5
tp @s ~~~
execute unless score mobeventstoggle Mode = three Mode as @p[r=50] run structure load tojis ~~~
execute unless score mobeventstoggle Mode = three Mode run summon ds:projectile tojiloot
execute unless score mobeventstoggle Mode = three Mode run scoreboard players random @e[type=ds:projectile,name=tojiloot,c=1,r=3] chance 1 14
execute unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:projectile,name=tojiloot,c=1,r=3] Deleter 5
execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=1..4}] if entity @a[r=50] unless score mobeventstoggle Mode = three Mode run summon ds:inverted_spear_drop ~~1~
execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=1..4}] if entity @a[r=50] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:inverted_spear_drop,c=1,r=3] Deleter 3600
execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=1..4}] if entity @a[r=50] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:inverted_spear_drop,c=1,r=3] itemdrop 1

execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=12}] if entity @a[r=50] unless score mobeventstoggle Mode = three Mode run summon ds:soul_sword_drop ~~1~
execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=12}] if entity @a[r=50] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:soul_sword_drop,c=1,r=3] Deleter 3600
execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=12}] if entity @a[r=50] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:soul_sword_drop,c=1,r=3] itemdrop 1

execute as @s if entity @p[tag=high_sorcerer_quest,c=1,tag=curse,m=!spectator] run function missions/credit/killcredit_high_sorcerer

scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] expadd 325


damage @s 2 suicide