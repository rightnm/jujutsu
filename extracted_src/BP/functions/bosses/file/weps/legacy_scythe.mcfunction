
scoreboard players add @s[scores={punch=1,Stun=0,Disabled=0,move=0}] scroll 1
scoreboard players set @s[scores={scroll=4..}] scroll 1
playanimation @s[scores={punch=1,Stun=0,Disabled=0,move=0,scroll=1}] animation.scythe.slash
playanimation @s[scores={punch=1,Stun=0,Disabled=0,move=0,scroll=2}] animation.scythe.slash2
playanimation @s[scores={punch=1,Stun=0,Disabled=0,move=0,scroll=3}] animation.scythe.slash3
effect @s haste 1 3 true
execute as @s[scores={punch=1..,Stun=0,Disabled=0,move=0}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.9] 20 suicide
execute as @s[scores={punch=1..,Stun=0,Disabled=0,move=0}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Hit 3

execute as @s[scores={punch=1,Stun=0,Disabled=0,move=0,scroll=1}] at @s positioned ^^^3 run playsound mob.swordslash @a ~~~ 0.2 1.7 
execute as @s[scores={punch=1,Stun=0,Disabled=0,move=0,scroll=2}] at @s positioned ^^^3 run playsound mob.swordslash @a ~~~ 0.2 1.6 
execute as @s[scores={punch=1,Stun=0,Disabled=0,move=0,scroll=3..}] at @s positioned ^^^3 run playsound mob.swordslash @a ~~~ 0.2 1.8 

execute as @s[scores={punch=1,Stun=0,Disabled=0,move=0}] at @s run summon ds:projectile scytheorb ~~7~
execute as @s[scores={punch=1..,Stun=0,Disabled=0,move=0}] at @s run particle ds:legacy_scythe ~~1~
execute as @s[scores={punch=1,Stun=0,Disabled=0,move=0}] at @s positioned ^^^3 run playsound mob.endermen.portal @a ~~~ 0.2 0.7
execute as @s[scores={punch=1,Stun=0,Disabled=0,move=0}] at @s run scriptevent ds:knockback 4
tag @s[tag=!lscythe] add lscythe

execute as @e[name=scytheorb] at @s run function bosses/file/weps/scytheorb

playanimation @s[tag=itemUse:ds:legacy_scythe,scores={move=0,wep1=0,Stun=0,Sneaking=0}] animation.scythe.stun
execute as @s[tag=itemUse:ds:legacy_scythe,scores={move=0,wep1=0,Stun=0,Sneaking=0}] at @s run execute as @a[r=50] at @s run playsound music.soul @s ~~~ 999999 1.5 999999
execute as @s[tag=itemUse:ds:legacy_scythe,scores={move=0,wep1=0,Stun=0,Sneaking=0}] at @s run scoreboard players set @e[tag=!Frames,r=50,rm=1] Stun 100
scoreboard players set @s[tag=itemUse:ds:legacy_scythe,scores={move=0,wep1=0,Stun=0,Sneaking=0}] wep1 300