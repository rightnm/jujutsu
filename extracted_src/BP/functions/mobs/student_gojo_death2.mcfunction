
function negative_field_chance
scoreboard players set @s Stun 5
tp @s ~~~
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] expadd 500
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] guilty_score 2
execute unless score mobeventstoggle Mode = three Mode as @p[r=50] run structure load student_gojo1 ~~~
execute as @s if entity @p[tag=high_sorcerer_quest,c=1,tag=curse,m=!spectator] run function missions/credit/killcredit_high_sorcerer
function missions/credit/killcredit_special_grade_sorcerer
damage @s 2 suicide

execute as @s at @s if entity @e[tag=idle_transfig,r=8] if entity @e[family=yuji,r=50] unless entity @e[tag=idle_transfig,c=1,tag=yuji_rage_cutscene_mahito,r=8] run function idle_transfig/start_yuji_rage_cutscene
execute as @s at @s if entity @e[tag=idle_transfig,r=8] if entity @p[hasitem={item=ds:yuji_fists}] unless entity @e[tag=idle_transfig,c=1,tag=yuji_rage_cutscene_mahito,r=8] run function idle_transfig/start_yuji_rage_cutscene