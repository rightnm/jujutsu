tp @s ~~~ facing @e[tag=transfiguring,c=1]
playanimation @s animation.absorbed
scoreboard players set @s Stun 20
scoreboard players set @s dying 6
tag @s[tag=!rctunless] add rctunless
playsound mob.disfigure1 @a[r=25] ~~1~ 99999 0.75 99999
playsound mob.drowned.say @a[r=25] ~~1~ 99999 0.85 99999

scoreboard players random @p[tag=transfiguring] chance 1 2
give @p[tag=transfiguring,scores={chance=1}] ds:stable_transfigured_human
give @p[tag=transfiguring,scores={chance=2}] ds:unstable_transfigured_human
scoreboard players set @p[tag=transfiguring] chance 0