scoreboard players add @s Stun 0
scoreboard players add @s move 0
scoreboard players add @s Disabled 0
scoreboard players add @s chance 0
effect @s slow_falling 11 1 true

execute as @s unless entity @e[tag=nue_fight,r=100] run tag @e[tag=nue_fight] remove nue_fight
execute as @s unless entity @e[tag=nue_fight,r=100] run kill @s

effect @s[scores={Disabled=100}] levitation 1 7 true
execute as @s[scores={Disabled=7}] at @s run tp @s ~~~ facing @p
execute as @s[scores={Disabled=57}] at @s run tp @s ~~~ facing @p
execute as @s[scores={Disabled=107}] at @s run tp @s ~~~ facing @p
execute as @s[scores={Disabled=157}] at @s run tp @s ~~~ facing @p
execute as @s[scores={Disabled=207}] at @s run tp @s ~~~ facing @p
execute as @s[scores={Disabled=5}] at @s run summon ds:knockback ^^^-1
execute as @s[type=ds:nueboss,scores={Disabled=0,move=0,chance=0,Stun=0}] at @s positioned ^^^20.5 if entity @e[type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!nue,tag=!Frames,c=1,tag=!nue_tame,type=!arrow,r=20.49] run scoreboard players random @s chance 1 2

scoreboard players set @s[type=ds:nueboss,scores={chance=1,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=1,move=1..}] Disabled 80

scoreboard players set @s[type=ds:nueboss,scores={chance=2,Stun=0,move=0}] move 51
scoreboard players set @s[scores={chance=2,move=1..}] Disabled 80

scoreboard players set @s[scores={move=1..4}] chance 0


playanimation @s[scores={chance=1,move=15}] animation.nue.sweep

playanimation @s[scores={chance=1,move=1..5}] animation.armor_stand.no_pose

execute as @s[scores={move=10..,chance=1}] at @s run tp @s ~~~ facing @p
execute as @s[scores={move=1..,chance=1}] at @s run tp @s @s
execute as @s[scores={move=1..,chance=1}] at @s if block ^^^1.33 air run tp @s ^^^1.33 facing ^^^20
execute as @s[scores={move=1..,chance=1}] at @s run camerashake add @a[r=20] 0.15 0.1
execute as @s[scores={move=1..,chance=1}] at @s run damage @e[r=6,tag=!Frames,family=!shikigami.,family=!nue,type=!ds:knockback,type=!ds:projectile,type=!ds:nueboss] 6 entity_attack entity @s
execute as @s[scores={move=1..,chance=1}] at @s run scoreboard players set @e[r=6,tag=!Frames,family=!shikigami.,family=!nue,type=!ds:knockback,type=!ds:projectile,type=!ds:nueboss] Stun 25
execute as @s[scores={move=1..,chance=1}] at @s run scoreboard players add @e[r=6,tag=!Frames,family=!shikigami.,family=!nue,type=!ds:knockback,type=!ds:projectile,type=!ds:nueboss] Evade 6
execute as @s[scores={move=1..,chance=1}] at @s if entity @e[r=6,tag=!Frames,family=!shikigami.,family=!nue,type=!ds:knockback,type=!ds:projectile,type=!ds:nueboss] run summon ds:knockback
execute as @s[scores={move=4..,chance=1}] at @s if entity @e[r=6,tag=!Frames,family=!shikigami.,family=!nue,type=!ds:knockback,type=!ds:projectile,type=!ds:nueboss] run scoreboard players remove @s move 2
execute as @s[scores={move=3..,chance=1}] at @s unless block ^^^2 air run scoreboard players set @s move 2

execute as @s[scores={move=3..,chance=1}] at @s unless block ^^^2 air  if entity @e[family=mahoraga,r=35] run function damages/air_damage

playanimation @s[scores={chance=2,move=50}] animation.nue.dive

execute as @s[scores={move=42..,chance=2}] at @s if block ~~1.5~ air run tp @s ~~1.5~ facing @p
execute as @s[scores={move=39,chance=2}] at @s run summon ds:projectile NueBolt ^^1^1
execute as @s[scores={move=39,chance=2}] at @s run summon ds:projectile NueBoltTRG ^^-12^60
execute as @s[scores={move=39,chance=2}] at @s positioned ^^1^60 run scoreboard players set @e[name=NueBoltTRG,c=1] Deleter 40
execute as @s[scores={move=39,chance=2}] at @s run scoreboard players set @e[name=NueBolt,c=1] Deleter 40
execute as @s[scores={move=39,chance=2}] at @s run camerashake add @a[r=50] 2 0.25



