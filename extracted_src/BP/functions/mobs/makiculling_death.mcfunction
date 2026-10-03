scoreboard players set @s Stun 5
tp @s ~~~
execute unless score mobeventstoggle Mode = three Mode as @p[r=50] run structure load makis ~~~
execute unless score mobeventstoggle Mode = three Mode run summon ds:projectile makiloot
execute unless score mobeventstoggle Mode = three Mode run scoreboard players random @e[type=ds:projectile,name=makiloot,c=1,r=3] chance 1 50
execute unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:projectile,name=makiloot,c=1,r=3] Deleter 5

execute as @e[type=ds:projectile,name=makiloot,c=1,r=3] at @s if entity @s[scores={chance=2}] if entity @a[r=50] unless score mobeventstoggle Mode = three Mode run summon ds:soul_sword_drop ~~1~
execute as @e[type=ds:projectile,name=makiloot,c=1,r=3] at @s if entity @s[scores={chance=2}] if entity @a[r=50] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:soul_sword_drop,c=1,r=3] Deleter 3600
execute as @e[type=ds:projectile,name=makiloot,c=1,r=3] at @s if entity @s[scores={chance=2}] if entity @a[r=50] unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:soul_sword_drop,c=1,r=3] itemdrop 1

execute as @s if entity @p[tag=high_sorcerer_quest,c=1,tag=curse,m=!spectator] run function missions/credit/killcredit_high_sorcerer
function missions/credit/killcredit_grade1sorcerer

scoreboard players random @a[scores={combat=1..},r=50,m=!spectator] expadd 200 275

damage @s 2 suicide

execute as @s at @s if entity @e[tag=idle_transfig,r=8] if entity @e[family=yuji,r=50] unless entity @e[tag=idle_transfig,c=1,tag=yuji_rage_cutscene_mahito,r=8] run function idle_transfig/start_yuji_rage_cutscene
execute as @s at @s if entity @e[tag=idle_transfig,r=8] if entity @p[hasitem={item=ds:yuji_fists}] unless entity @e[tag=idle_transfig,c=1,tag=yuji_rage_cutscene_mahito,r=8] run function idle_transfig/start_yuji_rage_cutscene