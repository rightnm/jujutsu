tp @s ~~~~ 0
execute unless entity @s[scores={Move=1..}] unless entity @s[scores={cutscene=1..}] unless entity @s[scores={dying=1..}] unless entity @s[scores={Stun=1..}] if block ~~-1~ air run tp @s ~~-1~
execute unless entity @s[scores={Move=1..}] unless entity @s[scores={cutscene=1..}] unless entity @s[scores={dying=1..}] unless entity @s[scores={Stun=1..}] if block ~~-0.5~ air run tp @s ~~-0.5~
execute unless entity @s[scores={Move=1..}] unless entity @s[scores={cutscene=1..}] unless entity @s[scores={dying=1..}] unless entity @s[scores={Stun=1..}] if block ~~-0.1~ air run tp @s ~~-0.1~
execute unless entity @s[scores={Deleter=1..}] run scoreboard players set @s Deleter 1200
event entity @s[scores={Deleter=0..1}] ds:disappear
scoreboard players set @s detect_health 10
tag @s[tag=!idle_transfig] add idle_transfig

execute unless entity @s[scores={Move=1..}] unless entity @s[scores={cutscene=1..}] unless entity @s[scores={dying=1..}] unless entity @s[scores={Stun=1..}] run playanimation @s animation.mahito.dying
execute unless entity @s[scores={Move=1..}] unless entity @s[scores={cutscene=1..}] unless entity @s[scores={dying=1..}] unless entity @s[scores={Stun=1..}] run scoreboard players set @e[family=yuji,r=3,scores={move=0,cutscene=0}] chance 9
damage @e[scores={cutscene=500..},c=1] 1 entity_attack entity @s
damage @e[scores={cutscene=200},c=1] 1 entity_attack entity @s
scoreboard players add @s[scores={cutscene=1..}] Deleter 2

execute as @s[scores={dying=1..}] at @s run scoreboard players set @e[type=!Player,r=10] chance 0
tag @s[scores={dying=3..}] add Frames
