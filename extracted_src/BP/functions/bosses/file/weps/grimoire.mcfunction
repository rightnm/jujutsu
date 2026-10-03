scoreboard players set @s[tag=itemUse:ds:truegrimoire,scores={sight=0,Stun=0}] BasicM1 4
scoreboard players set @s[tag=itemUse:ds:truegrimoire,scores={sight=0,Stun=0}] sight 33


execute as @s[scores={BasicM1=3}] at @s anchored eyes run particle ds:heavy_impact2 ^^^1 
execute as @s[scores={BasicM1=3}] at @s anchored eyes run particle ds:magic ^^^1 
execute as @s[scores={BasicM1=3}] at @s run playsound portal.travel @a[r=100] ~~1~ 0.25 10
execute as @s[scores={BasicM1=3}] at @s run scriptevent ds:dismantle
