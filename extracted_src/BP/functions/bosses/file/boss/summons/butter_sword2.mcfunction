tag @s[tag=!Frames] add Frames
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 30
tp @s ^^^1.5
tp @s ^^^1.5
tp @s ^^^1.5 facing @e[family=!heroic,scores={knockdown=1..},c=1,tag=!Frames]

playsound mob.witch.throw @a ~~~ 0.2 1.5
damage @e[family=!heroic,tag=!Frames,r=4] 20 suicide
scoreboard players set @e[family=!heroic,tag=!Frames,r=4] Stun 25
particle ds:butter1 ~~1~

execute if entity @p[tag=itemUse:ds:butter_blade] at @s run scoreboard players set @s chance 1
execute as @s[scores={chance=1,Deleter=11..}] run particle ds:butter2 ~~1~
execute as @s[scores={chance=1,Deleter=11..}] run particle ds:butter3 ~~1~
execute as @s[scores={chance=1,Deleter=11..}] run execute as @p[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},scores={Stun=0},c=1] at @s run particle ds:butter_tp
execute as @s[scores={chance=1,Deleter=11..}] run particle ds:butter4 ~~1~
execute as @s[scores={chance=1,Deleter=11..}] run playsound mob.flash @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={chance=1,Deleter=11..}] run tp @p[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},scores={Stun=0},c=1] ~~0.25~
execute as @s[scores={chance=1,Deleter=11..}] run execute as @e[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},scores={Stun=0},c=1] at @s run particle ds:butter_tp
execute as @s[scores={chance=1,Deleter=11..}] run scoreboard players set @s Deleter 10



execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run playsound mob.sword @a ~~~ 0.1 2
execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run particle ds:butter2 ~~1~

execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run particle ds:butter3 ~~1~

execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run execute as @p[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},scores={Stun=0},c=1] at @s run particle ds:butter_tp
execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run particle ds:butter4 ~~1~
execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run playsound mob.flash @a[r=100] ~~~ 99999 2 99999
execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run tp @p[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},scores={Stun=0},c=1] ^^^2
execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run execute as @p[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},scores={Stun=0},c=1] at @s run particle ds:butter_tp
execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run scoreboard players random @p[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},scores={Stun=0},c=1] chance 1 7
execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run scoreboard players set @p[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},scores={Stun=0},c=1] move 0
execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run scoreboard players set @p[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},scores={Stun=0},c=1] Disabled 0
execute if entity @e[tag=!Frames,r=4,type=!xp_orb,type=!item] run scoreboard players set @s Deleter 10

tp @s[scores={Deleter=0..10}] ~ -200 ~
