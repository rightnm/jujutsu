scoreboard players set @s Stun 5
tp @s ~~~
execute unless score mobeventstoggle Mode = three Mode as @p[r=50] run structure load yujis ~~~
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] expadd 45
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] guilty_score 5
execute as @s if entity @p[tag=high_sorcerer_quest,c=1,tag=curse,m=!spectator] run function missions/credit/killcredit_high_sorcerer
function missions/credit/killcredit_grade3sorcerer
damage @s 2 suicide

function negative_field_chance
tag @e[type=ds:todo,r=100] add cant_summon_yuji