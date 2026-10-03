




execute as @s at @s unless entity @s[scores={Energy=0..}] run playanimation @s animation.boss_minion_awaken
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s cutscene 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 20
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 600

execute as @p[m=!c,r=200] at @s unless entity @e[type=ds:glitchyturtle,c=1,r=40] run spreadplayers ~ ~ 10 20 @e[type=ds:glitchyturtle,c=1] 


playanimation @s[scores={Stun=0,move=0,cutscene=0}] animation.glitchyturtle_idle

execute as @s if entity @p[r=40] run scoreboard players random @s[scores={cutscene=0,move=0,Disabled=0,Disabled2=0}] chance 3 8

execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run tag @s add minion_dying
execute as @s[scores={detect_health=0..5,cutscene=0}] at @s run scoreboard players set @s cutscene 300
execute as @s[tag=minion_dying,scores={cutscene=1..}] at @s run function bosses/file/boss/summons/minion_dying


execute as @s[scores={move=0}] at @s run tp @s ~~~ facing @p

scoreboard players add @s[scores={Stun=1..}] Mode 1
execute as @s[scores={Mode=20..,detect_health=2..}] at @s run spreadplayers ~ ~ 12 20 @s
execute as @s[scores={Mode=20..,detect_health=2..}] at @s run scoreboard players set @s Mode 0

scoreboard players set @s[scores={chance=3,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 25
execute as @s[scores={chance=3,move=1..}] at @s run function flames/inferno_punch

scoreboard players set @s[scores={chance=4,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 5
execute as @s[scores={chance=4}] at @s run function bosses/file/boss/summons/glitchyturtle_ab1

scoreboard players set @s[scores={chance=5,Stun=0,move=0}] move 76
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 5
execute as @s[scores={chance=5}] at @s run function bosses/file/boss/summons/glitchyturtle_ab2



scoreboard players remove @s[scores={Energy=1..}] Energy 1
scoreboard players set @s[scores={chance=6,Stun=0,move=0,Energy=0..1}] move 81
scoreboard players set @s[scores={chance=6,Stun=0,move=1..,Energy=0..1}] Disabled 5
scoreboard players set @s[scores={chance=6,Stun=0,move=1..,Energy=0..1}] Energy 600
execute as @s[scores={chance=6}] at @s run function bosses/file/boss/summons/glitchyturtle_ab3


scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 61
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 85
execute as @s[scores={chance=8,move=1..}] at @s run function flames/flames1c



scoreboard players set @s[scores={chance=3..,move=0..1}] chance 0
