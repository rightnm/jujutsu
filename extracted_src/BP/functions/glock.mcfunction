playanimation @s[tag=!shoot,scores={Stun=0,Disabled=0,move=0,cutscene=0}] animation.glock.aim



execute as @s[tag=!shoot,tag=itemUse:ds:glock,hasitem={item=ds:9mm_ammo},scores={Stun=0,Disabled=0,move=0,cutscene=0},tag=!unselect] run tag @s add shoot
execute as @s[tag=!shoot,tag=itemUse:ds:glock,scores={Stun=0,Disabled=0,move=0,cutscene=0},tag=unselect] run tag @s add shoot

playanimation @s[tag=shoot] animation.glock.shoot
clear @s[tag=shoot,hasitem={item=ds:9mm_ammo},tag=!unselect] ds:9mm_ammo 0 1
execute as @s[tag=shoot] at @s run scriptevent ds:dismantle_quick
execute as @s[tag=shoot] at @s run  playsound mob.glock @a[r=500] ~~1~ 99999 1 99999
execute as @s[tag=shoot] at @s run camerashake add @a[r=10] 1 0.1
execute as @s[tag=shoot] at @s run effect @a[r=100] night_vision 1 1 true
execute as @s[tag=shoot] at @s run effect @a[r=100] clear night_vision
scoreboard players set @s[tag=shoot] Disabled 5


tag @s[tag=shoot] remove shoot