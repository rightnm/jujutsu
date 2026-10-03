damage @s 15
playanimation @e[name=dismantlem1,c=1] animation.dismantle.forwards2
scoreboard players set @s Hit 5
scoreboard players set @s Stun 25
scoreboard players add @s Evade 10
playsound mob.slice1 @a[r=100] ~~~ 9999 1.5 9999
particle ds:heavy_impact2 ~~1~
scoreboard players add @p[tag=sukuna,rm=1] fuga 1