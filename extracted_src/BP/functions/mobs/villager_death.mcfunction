scoreboard players set @s Stun 5
tp @s ~~~
scoreboard players add @a[scores={combat=1..},r=50,tag=curse,m=!spectator] expadd 2
scoreboard players add @a[scores={combat=1..},r=50,tag=curse,m=!spectator] expadd 2
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] guilty_score 1
damage @s 2 suicide
execute as @a[tag=curse,r=20,m=!spectator] at @s run function missions/credit/killcredit_villager
function negative_field_chance
