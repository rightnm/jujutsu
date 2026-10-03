scoreboard players set @s Stun 5
tp @s ~~~

function missions/credit/killcredit_grade3sorcerer
function missions/credit/killcredit_grade4sorcerer
execute unless score mobeventstoggle Mode = three Mode run summon ds:projectile sorcererloot
particle ds:blood
particle ds:blood
particle ds:blood
particle ds:blood
particle ds:blood
particle ds:blood
scoreboard players add @p[scores={combat=1..},r=50,m=!spectator] guilty_score 1
execute unless score mobeventstoggle Mode = three Mode run scoreboard players random @e[type=ds:projectile,name=sorcererloot,c=1,r=3] chance 1 10
execute unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:projectile,name=sorcererloot,c=1,r=3] Deleter 5
execute as @e[type=ds:projectile,name=sorcererloot,c=1,r=3] at @s if entity @s[scores={chance=1}] if entity @a[r=20] unless score mobeventstoggle Mode = three Mode run structure load sorcerer_outfit ~~~
scoreboard players add @p[scores={combat=1..},r=50,m=!spectator] expadd 3
scoreboard players add @p[scores={combat=1..},r=50,tag=lonewolf,m=!spectator] expadd 3
scoreboard players add @p[scores={combat=1..},r=50,tag=curse,m=!spectator] expadd 3
kill @e[type=ds:projectile,name=sorcererloot,c=1,r=3]

function negative_field_chance