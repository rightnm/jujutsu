scoreboard players set @s Stun 5
tp @s ~~~
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] expadd 250
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] guilty_score 3
execute unless score mobeventstoggle Mode = three Mode as @p[r=50] run structure load gamblers ~~~
execute as @s if entity @p[tag=high_sorcerer_quest,c=1,tag=curse,m=!spectator] run function missions/credit/killcredit_high_sorcerer
function missions/credit/killcredit_grade1sorcerer
damage @s 2 suicide

function negative_field_chance