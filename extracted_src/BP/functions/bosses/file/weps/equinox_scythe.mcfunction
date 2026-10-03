particle ds:riftaura

scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0,Sneaking=0}] BasicM1 12
scoreboard players add @s[scores={punch=1,Disabled2=0,Stun=0,Sneaking=0}] scroll 1
scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0,Sneaking=0}] M1Reset 20
scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0,scroll=2,Sneaking=0}] Disabled2 10


scoreboard players set @s[scores={scroll=3..}] scroll 1
playanimation @s[scores={BasicM1=0,move=0,cutscene=0,Stun=0,M1Reset=0}] animation.equinox_slicer.idle
playanimation @s[scores={BasicM1=11..12,scroll=1}] animation.equinox_slicer.attack1
playanimation @s[scores={BasicM1=11..12,scroll=2}] animation.equinox_slicer.attack2

tag @s[scores={BasicM1=5..6}] add Frames
tag @s[scores={BasicM1=3..4}] remove Frames
execute as @s[scores={BasicM1=5}] at @s run particle ds:equinox_slicer3 ~~1.5~
execute as @s[scores={BasicM1=5}] at @s run particle ds:equinox_slicer4 ~~1.5~
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=7] 20 suicide
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=7] Hit 3
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run playsound mob.swordslash @a[r=50] ~~~ 99999 0.7 99999 
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run playsound mob.slash @a[r=50] ~~~ 99999 0.7 99999 
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run playsound mob.distort3 @a[r=50] ~~~ 99999 1.44 99999 
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run camerashake add @a[r=10] 2 0.15


execute unless entity @e[tag=arenaboss] as @e[name=realityfangs,type=ds:projectile,c=1] at @s run function bosses/file/boss/scythe/realityfangs


tag @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep1=0,Stun=0,Sneaking=0,detect_jump=0}] add scytheranged1
scoreboard players set @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep1=0,Stun=0,Sneaking=0,detect_jump=0}] move 41
scoreboard players set @s[tag=itemUse:ds:equinox_scythe,scores={move=41..,wep1=0,Stun=0,Sneaking=0,detect_jump=0}] wep1 100
tellraw @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep1=1..,Stun=0,Sneaking=0,detect_jump=0}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}


tag @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep2=0,Stun=0,Sneaking=0,detect_jump=1..}] add scytheranged2 
scoreboard players set @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep2=0,Stun=0,Sneaking=0,detect_jump=1..}] move 76
scoreboard players set @s[tag=itemUse:ds:equinox_scythe,scores={move=76..,wep2=0,Stun=0,Sneaking=0,detect_jump=1..}] wep2 90
tellraw @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep2=1..,Stun=0,Sneaking=0,detect_jump=1..}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}


tag @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep3=0,Stun=0,Sneaking=1..,detect_jump=0}] add scytheult1
scoreboard players set @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep3=0,Stun=0,Sneaking=1..,detect_jump=0}] move 46
scoreboard players set @s[tag=itemUse:ds:equinox_scythe,scores={move=46..,wep3=0,Stun=0,Sneaking=1..,detect_jump=0}] wep3 800
tellraw @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep3=1..,Stun=0,Sneaking=1..,detect_jump=0}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}


tag @s[scores={move=0,wep4=0,Stun=0,Sneaking=1..,detect_jump=0,punch=1}] add scytheult3
scoreboard players set @s[scores={move=0,wep4=0,Stun=0,Sneaking=1..,detect_jump=0,punch=1}] move 146
scoreboard players set @s[scores={move=146..,wep4=0,Stun=0,Sneaking=1..,detect_jump=0,punch=1}] wep4 1200
tellraw @s[scores={move=0,wep4=1..,Stun=0,Sneaking=1..,detect_jump=0,punch=1}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}

tag @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep3=0,Stun=0,Sneaking=1..,detect_jump=1..}] add scytheult2
scoreboard players set @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep3=0,Stun=0,Sneaking=1..,detect_jump=1..}] move 56
scoreboard players set @s[tag=itemUse:ds:equinox_scythe,scores={move=46..,wep3=0,Stun=0,Sneaking=1..,detect_jump=1..}] wep3 6000
tellraw @s[tag=itemUse:ds:equinox_scythe,scores={move=0,wep3=1..,Stun=0,Sneaking=1..,detect_jump=1..}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}



tag @s[scores={move=0},tag=scytheranged1] remove scytheranged1
tag @s[scores={move=0},tag=scytheranged2] remove scytheranged2
tag @s[scores={move=0},tag=scytheult1] remove scytheult1
tag @s[scores={move=0},tag=scytheult2] remove scytheult2
tag @s[scores={move=0},tag=scytheult3] remove scytheult3

execute as @s[tag=scytheranged1,scores={move=1..}] at @s run function bosses/file/boss/scythe/ranged1
execute as @s[tag=scytheranged2,scores={move=1..}] at @s run function bosses/file/boss/scythe/ranged2
execute as @s[tag=scytheult1,scores={move=1..}] at @s run function bosses/file/boss/scythe/ult1
execute as @s[tag=scytheult3,scores={move=1..}] at @s run function bosses/file/boss/scythe/ult3
execute as @s[tag=scytheult2,scores={move=1..}] at @s run function bosses/file/boss/scythe/ult2
