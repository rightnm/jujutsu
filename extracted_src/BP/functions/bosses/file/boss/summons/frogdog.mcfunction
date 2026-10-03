



execute as @s at @s unless entity @s[scores={Energy=0..}] run playanimation @s animation.boss_minion_awaken
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s cutscene 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 20
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 600


execute as @p[m=!c,r=200] at @s unless entity @e[type=ds:frogdog,c=1,r=40] run scoreboard players set @e[type=ds:frogdog] Mode 21

playanimation @s[scores={Stun=0,move=0,cutscene=0}] animation.frogdog_idle

execute as @s if entity @p[r=80] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 3 6

execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run tag @s add minion_dying
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s cutscene 300
execute as @s[tag=minion_dying,scores={cutscene=1..}] at @s run function bosses/file/boss/summons/minion_dying



scoreboard players add @s[scores={Stun=1..}] Mode 1
execute as @s[scores={Mode=20..,detect_health=2..}] at @s run function bosses/file/boss/summons/frog_tp_away


scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 5
execute as @s[scores={chance=3}] at @s run function bosses/file/boss/summons/frogdog_ab1

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 5
execute as @s[scores={chance=4}] at @s run function bosses/file/boss/summons/frogdog_ab1

scoreboard players remove @s[scores={Energy=1..}] Energy 1
scoreboard players set @s[scores={chance=5,Stun=0,move=0,Energy=0..1}] move 61
scoreboard players set @s[scores={chance=5,Stun=0,move=1..,Energy=0..1}] Disabled 5
scoreboard players set @s[scores={chance=5,Stun=0,move=1..,Energy=0..1}] Energy 600
execute as @s[scores={chance=5}] at @s run function bosses/file/boss/summons/frogdog_ab2



scoreboard players set @s[scores={chance=3..,move=0..1}] chance 0
