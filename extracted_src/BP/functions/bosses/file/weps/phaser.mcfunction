playanimation @s[tag=!itemUse:ds:truephaser] animation.phaser_aim
playanimation @s[tag=itemUse:ds:truephaser,scores={sight=0}] animation.phaser_shoot
execute as @s[tag=itemUse:ds:truephaser,scores={sight=0}] at @s run scriptevent ds:dismantle_quick
execute as @s[tag=itemUse:ds:truephaser,scores={sight=0}] at @s run playsound mob.shock2 @a ~~~ 0.2 1.25 
scoreboard players set @s[tag=itemUse:ds:truephaser,scores={sight=0}] sight 1