
particle ds:large_impact1 ~~1~
scoreboard players set @s[tag=!Frames] Hit 15
scoreboard players set @s[tag=!Frames] Stun 50
scoreboard players add @s[type=!player,tag=!Frames] Mode 50
scoreboard players add @s[tag=!Frames] Evade 1
damage @s[type=ds:kashimo] 999
playsound mob.sword @a[r=100] ~~~ 0.1 1.25
particle ds:cleave_aureole ~~1~
damage @s[tag=!Frames] 150
particle ds:blood_mist ~~1~
scoreboard players add @p[tag=sukuna,rm=1] fuga 10
particle ds:rapid_dismantle4 ~~1~