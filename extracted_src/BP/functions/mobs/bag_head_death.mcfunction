scoreboard players set @s Stun 5
execute as @s[tag=!bagclone] at @s run kill @e[type=ds:bag_head,r=50]
execute as @s[tag=bagclone] at @s run scoreboard players add @e[tag=!bagclone,type=ds:bag_head,c=1] clones 1
tp @s ~~~
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] expadd 100
execute unless score mobeventstoggle Mode = three Mode as @p[r=50] run structure load baghead  ~~~
execute as @s if entity @p[tag=high_sorcerer_quest,c=1,tag=curse,m=!spectator] run function missions/credit/killcredit_high_sorcerer
function missions/credit/killcredit_grade2sorcerer
damage @s 2 suicide

function negative_field_chance