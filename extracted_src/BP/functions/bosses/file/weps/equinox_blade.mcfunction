particle ds:riftaura

scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0,Sneaking=0}] BasicM1 13
scoreboard players add @s[scores={punch=1,Disabled2=0,Stun=0,Sneaking=0}] scroll 1
scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0,Sneaking=0}] M1Reset 20
scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0,scroll=2,Sneaking=0}] Disabled2 15


scoreboard players set @s[scores={scroll=3..}] scroll 1
playanimation @s[scores={BasicM1=0,move=0,cutscene=0,Stun=0,M1Reset=0}] animation.equinox_slicer.idle
playanimation @s[scores={BasicM1=12..13,scroll=1}] animation.equinox_slicer.attack1
playanimation @s[scores={BasicM1=12..13,scroll=2}] animation.equinox_slicer.attack2

tag @s[scores={BasicM1=5..6}] add Frames
tag @s[scores={BasicM1=3..4}] remove Frames
execute as @s[scores={BasicM1=5}] at @s run particle ds:equinox_slicer3 ~~1.5~
execute as @s[scores={BasicM1=5}] at @s run particle ds:equinox_slicer4 ~~1.5~
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=7] 22 suicide
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=7] Hit 5
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run playsound mob.swordslash @a[r=50] ~~~ 99999 0.4 99999 
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run playsound mob.slash @a[r=50] ~~~ 99999 0.44 99999 
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run playsound mob.distort3 @a[r=50] ~~~ 99999 1 99999 
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run camerashake add @a[r=10] 2 0.15


execute unless entity @e[tag=arenaboss] as @e[name=realityfangs2,type=ds:projectile,c=5] at @s run function bosses/file/boss/blade/realityfangs


tag @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep1=0,Stun=0,Sneaking=0,detect_jump=0}] add bladecombo1
scoreboard players set @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep1=0,Stun=0,Sneaking=0,detect_jump=0}] move 91
scoreboard players set @s[tag=itemUse:ds:equinox_blade,scores={move=91..,wep1=0,Stun=0,Sneaking=0,detect_jump=0}] wep1 200
tellraw @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep1=1..,Stun=0,Sneaking=0,detect_jump=0}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}



tag @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep2=0,Stun=0,Sneaking=0,detect_jump=1..}] add bladeranged2
scoreboard players set @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep2=0,Stun=0,Sneaking=0,detect_jump=1..}] move 66
scoreboard players set @s[tag=itemUse:ds:equinox_blade,scores={move=66..,wep2=0,Stun=0,Sneaking=0,detect_jump=1..}] wep2 400
tellraw @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep2=1..,Stun=0,Sneaking=0,detect_jump=1..}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}


tag @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep3=0,Stun=0,Sneaking=1..,detect_jump=0}] add bladeranged1 
scoreboard players set @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep3=0,Stun=0,Sneaking=1..,detect_jump=0}] move 91
scoreboard players set @s[tag=itemUse:ds:equinox_blade,scores={move=91..,wep3=0,Stun=0,Sneaking=1..,detect_jump=0}] wep3 400
tellraw @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep3=1..,Stun=0,Sneaking=1..,detect_jump=0}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}


tag @s[scores={move=0,wep4=0,Stun=0,Sneaking=1..,detect_jump=0,punch=1}] add bladeult1
scoreboard players set @s[scores={move=0,wep4=0,Stun=0,Sneaking=1..,detect_jump=0,punch=1}] move 76
scoreboard players set @s[scores={move=76..,wep4=0,Stun=0,Sneaking=1..,detect_jump=0,punch=1}] wep4 900
tellraw @s[scores={move=0,wep4=1..,Stun=0,Sneaking=1..,detect_jump=0,punch=1}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}


tag @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep5=0,Stun=0,Sneaking=1..,detect_jump=1..}] add bladeult2
scoreboard players set @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep5=0,Stun=0,Sneaking=1..,detect_jump=1..}] move 76
scoreboard players set @s[tag=itemUse:ds:equinox_blade,scores={move=76..,wep5=0,Stun=0,Sneaking=1..,detect_jump=1..}] wep5 1200
tellraw @s[tag=itemUse:ds:equinox_blade,scores={move=0,wep5=1..,Stun=0,Sneaking=1..,detect_jump=1..}] {"rawtext":[{"text":"§cThis ability needs recharging: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}


tag @s[scores={move=0},tag=bladecombo1] remove bladecombo1
tag @s[scores={move=0},tag=bladeranged1] remove bladeranged1
tag @s[scores={move=0},tag=bladeranged2] remove bladeranged2
tag @s[scores={move=0},tag=bladeult1] remove bladeult1
tag @s[scores={move=0},tag=bladeult2] remove bladeult2

execute as @s[tag=bladecombo1,scores={move=1..}] at @s run function bosses/file/boss/blade/combo1
execute as @s[tag=bladeranged1,scores={move=1..}] at @s run function bosses/file/boss/blade/ranged1
execute as @s[tag=bladeranged2,scores={move=1..}] at @s run function bosses/file/boss/blade/ranged2
execute as @s[tag=bladeult1,scores={move=1..}] at @s run function bosses/file/boss/blade/ult1
execute as @s[tag=bladeult2,scores={move=1..}] at @s run function bosses/file/boss/blade/ult2
