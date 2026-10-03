damage @s[tag=!Frames,tag=!form1s] 25
execute as @e[type=ds:dismantle,c=1] at @s  unless entity @e[type=ds:dismantle_horizontal,r=1] run summon ds:dismantle_horizontal ^^^0.1 facing ^^^10
scoreboard players set @s[tag=!Frames,tag=!form1s] Hit 5
scoreboard players set @s[tag=!Frames,tag=!form1s] Stun 25
scoreboard players add @s[tag=!Frames,tag=!form1s] Evade 10
scoreboard players add @s[tag=!Frames,type=!player] Mode 5
function damages/slash_damage
scoreboard players add @p[tag=sukuna,rm=1] fuga 2
playsound mob.slice1 @a[r=200] ~~~ 99999 1.5 99999
particle ds:cleave_aureole ~~1~
kill @e[type=ds:dismantle,c=1]
