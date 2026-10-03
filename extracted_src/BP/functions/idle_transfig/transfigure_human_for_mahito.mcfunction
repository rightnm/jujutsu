tp @s ~~~ facing @e[type=ds:mahito,c=1]
playanimation @s animation.absorbed
scoreboard players set @s Stun 20
tag @s[tag=!rctunless] add rctunless
scoreboard players set @s dying 6
playsound mob.disfigure1 @a[r=25] ~~1~ 99999 0.75 99999
playsound mob.drowned.say @a[r=25] ~~1~ 99999 0.85 99999
scoreboard players add @e[type=ds:mahito,c=1] human_soul_counter 1