execute as @s at @s positioned ^^^17.5 unless entity @e[type=ds:rift,name=spike_trg1,c=1,r=20] run summon ds:rift "spikes_trg1" ~~~
clear @s[tag=!creative] ds:unstable_transfigured_human 0 1
scoreboard players set @s Disabled2 12


execute as @s at @s run summon ds:transfigured_human_proj "transfigure_spikes" ^^^1 
execute as @s at @s run playsound mob.witch.throw @a[r=50] ^^1^1 9999 1.25 9999
playanimation @s animation.finger_bearer.hit2

tp @s[type=!player] ~~~ facing @e[scores={detect_health=0..},family=!purecurse,type=!item,type=!xp_orb,family=!projectile,tag=!creative,tag=!curse,c=1]
scoreboard players remove @s[type=!player] human_soul_counter 1


