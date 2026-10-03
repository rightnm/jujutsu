scoreboard players set @s[scores={Energy=0}] strength 10
scoreboard players set @s[scores={Energy=0}] Energy 1000

execute as @s[scores={Stun=0..20,Hit=1..,cutscene=0}] at @s run function _hitdodge

execute as @p[tag=special_mission_vessel,scores={atk=1..2}] at @s positioned ^^^3 run scoreboard players set @e[type=ds:riko_amanai,r=2.9] Frames 6
execute if entity  @p[tag=special_mission_vessel,r=5] run effect @e[family=purecurse,r=10] slowness 1 3 true
execute if entity  @p[tag=special_mission_vessel,r=5] run effect @e[family=q_clan,r=10] slowness 1 3 true

execute if entity  @p[tag=special_mission_vessel,r=5] run execute as @e[family=q_clan,r=5] at @s run scriptevent ds:knockback -1
execute if entity  @p[tag=special_mission_vessel,r=5] run execute as @e[family=purecurse,r=5] at @s run scriptevent ds:knockback -1


execute if entity @e[family=q_clan,r=10] at @s run tp @s ~~~
execute if entity @e[family=q_clan,r=10] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute if entity @e[family=q_clan,r=10] at @s run effect @s slowness 1 10 true
execute if entity @e[family=q_clan,r=10] at @s run effect @s resistance 1 1 true
execute if entity @e[family=q_clan,r=10] at @s run playanimation @s animation.riko_amanai.cowering


execute if entity @e[family=villain,r=10] at @s run tp @s ~~~
execute if entity @e[family=villain,r=10] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute if entity @e[family=villain,r=10] at @s run effect @s slowness 1 10 true
execute if entity @e[family=villain,r=10] at @s run effect @s resistance 1 1 true
execute if entity @e[family=villain,r=10] at @s run playanimation @s animation.riko_amanai.cowering


execute if entity @e[family=purecurse,r=10,family=!pest] at @s run tp @s ~~~
execute if entity @e[family=purecurse,r=10,family=!pest] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute if entity @e[family=purecurse,r=10,family=!pest] at @s run effect @s slowness 1 10 true
execute if entity @e[family=purecurse,r=10,family=!pest] at @s run effect @s resistance 1 1 true
execute if entity @e[family=purecurse,r=10,family=!pest] at @s run playanimation @s animation.riko_amanai.cowering


execute positioned 5031 62.5 2059 run particle ds:capture_point1
execute positioned 5031 62.5 2059 if entity @e[type=ds:riko_amanai,r=16] run function missions/vessel_mission/arrived_destination


# Distress Counter
scoreboard players add @s EnergyCap 1

execute as @s[scores={EnergyCap=50..}] at @s run function missions/vessel_mission/riko_distress
execute if block ~~1~ water run execute as @p[r=3.5] at @s run tp @e[type=ds:riko_amanai,c=1] ^^1^1 facing @s
scoreboard players set @s[scores={EnergyCap=50..}] EnergyCap 0

# Mob Spawner
scoreboard players add @s Mode 1
execute as @s[scores={Mode=600..}] at @s run function missions/vessel_mission/mob_spawn
