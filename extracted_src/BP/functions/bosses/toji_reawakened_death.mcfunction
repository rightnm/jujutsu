scoreboard players set @s Stun 5
tp @s ~~~
stopsound @a[r=100] music.mahoraga
stopsound @a[r=100] music.prowess
execute unless score mobeventstoggle Mode = three Mode as @p[r=50] run summon ds:projectile tojiloot
execute unless score mobeventstoggle Mode = three Mode run scoreboard players random @e[type=ds:projectile,name=tojiloot,c=1,r=3] chance 1 4
execute unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:projectile,name=tojiloot,c=1,r=3] Deleter 7

execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=1}] unless score mobeventstoggle Mode = three Mode run summon ds:playful_cloud_drop ~~1~
execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=1}] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:playful_cloud_drop,c=1,r=3] Deleter 3600
execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=1}] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:playful_cloud_drop,c=1,r=3] itemdrop 1

execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=2}] unless score mobeventstoggle Mode = three Mode run summon ds:sharpened_cloud_drop ~~1~
execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=2}] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:sharpened_cloud_drop,c=1,r=3] Deleter 3600
execute as @e[type=ds:projectile,name=tojiloot,c=1,r=3] at @s if entity @s[scores={chance=2}] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:sharpened_cloud_drop,c=1,r=3] itemdrop 1

scoreboard players random @a[scores={combat=1..},r=50,m=!spectator] expadd 500 700
damage @s 2 suicide