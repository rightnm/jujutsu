execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=150..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 150
effect @s[scores={Energy=0}] fire_resistance 999999 1 true
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] ability1 0
scoreboard players add @s[scores={Energy=0}] ability2 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] cutscene 0

tag @s[scores={Energy=0}] add spawned
scoreboard players set @s[scores={Energy=0}] move 151
scoreboard players set @s[scores={Stun=0,move=151..}] Disabled 181
execute as @s[scores={move=1..},tag=spawned] at @s run function mobs/curses/kaiju/spawn_roar

execute positioned ~~36~  if entity @e[scores={atk=1},r=18] run scoreboard players operation @s damagehalf += @e[scores={atk=1}] damageadd
execute positioned ~~36~  if entity @e[scores={atk=1},r=18] run scoreboard players operation @s damagehalf /= three endurance 

execute if entity @e[scores={atk=1},r=18] run scoreboard players operation @s damagehalf += @e[scores={atk=1}] damageadd
execute if entity @e[scores={atk=1},r=18] run scoreboard players operation @s damagehalf /= three endurance 

scoreboard players set @s[scores={Energy=0}] Energy 9999
tag @s[tag=!Big] add Big
scoreboard players set @s[scores={knockdown=1..}] knockdown 0
scoreboard players set @s[scores={Flourish=1..}] Flourish 0
effect @s clear levitation

scoreboard players remove @s[scores={detect_health=0..500,Disabled=1..}] Disabled 1
scoreboard players remove @s[scores={detect_health=0..250,Disabled=1..}] Disabled 1
scoreboard players remove @s[scores={detect_health=0..100,Disabled=1..}] Disabled 1

effect @e[scores={Stun=15..},type=!player,type=!ds:kaiju_curse,r=15] weakness 1 7 true

execute if entity @p[tag=griefable] run fill ~7~30~7~-7~~-7 air
execute if entity @p[tag=griefable] run fill ~7~-1~7~-7~~-7 dirt [] replace grass

execute as @e[type=!ds:kaiju_curse,family=!projectie,family=!damage,type=!item,type=!xp_orb,type=!arrow,r=30,c=1] unless entity @s[scores={combat=0..}] run scoreboard players set @s combat 800

execute as @s[scores={move=0,cutscene=0,chance=0,Disabled=0,combat=1..}] positioned ^^^20 if entity @e[type=!item,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,type=!xp_orb,family=!despawncito,r=60,tag=!unselect,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 1 10



execute as @s[scores={detect_health=0..1,move=0},tag=!deathanim] at @s run tag @s add deathanim
execute as @s[scores={detect_health=0..1,cutscene=0,move=0}] at @s run scoreboard players set @s cutscene 91

execute as @s[scores={cutscene=1..},tag=deathanim] at @s run function mobs/curses/kaiju/death_anim
scoreboard players set @s[tag=deathanim] Disabled 100



camerashake add @a[r=100,scores={move=0,Camera=0}] 0.022 0.05 rotational

execute as @s[scores={chance=1..,move=0}] at @s if entity @e[type=!ds:kaiju_curse,family=!projectie,family=!damage,type=!item,type=!xp_orb,type=!arrow,r=15,c=1] unless entity @s[scores={combat=0..}] run summon ds:red_reverse

scoreboard players set @s[scores={chance=1,move=0}] move 151
scoreboard players set @s[scores={chance=1,move=1..}] Disabled 31
execute as @s[scores={chance=1,move=1..}] at @s run function mobs/curses/kaiju/roar

scoreboard players set @s[scores={chance=2,move=0}] move 44
scoreboard players set @s[scores={chance=2,move=1..}] Disabled 35
execute as @s[scores={chance=2,move=1..}] at @s run function mobs/curses/kaiju/kick

scoreboard players set @s[scores={chance=3..4,move=0}] move 44
scoreboard players set @s[scores={chance=3..4,move=1..}] Disabled 90
execute as @s[scores={chance=3..4,move=1..}] at @s run function mobs/curses/kaiju/stomp

scoreboard players set @s[scores={chance=5..6,move=0}] move 44
scoreboard players set @s[scores={chance=5..6,move=1..}] Disabled 70
execute as @s[scores={chance=5..6,move=1..}] at @s run function mobs/curses/kaiju/stomp2

scoreboard players set @s[scores={chance=7,move=0}] move 22
scoreboard players set @s[scores={chance=7,move=1..}] Disabled  20
execute as @s[scores={chance=7,move=1..}] at @s run function mobs/curses/kaiju/claw

scoreboard players set @s[scores={chance=8,move=0}] move 81
scoreboard players set @s[scores={chance=8,move=1..}] Disabled  40
execute as @s[scores={chance=8,move=1..}] at @s run function mobs/curses/kaiju/tail_whip

scoreboard players set @s[scores={chance=9,move=0,ability1=0}] move 101
scoreboard players set @s[scores={chance=9,move=1..}] Disabled 40
scoreboard players set @s[scores={chance=9,move=1..}] ability1 1200
execute as @s[scores={chance=9,move=1..}] at @s run function mobs/curses/kaiju/punch


scoreboard players set @s[scores={chance=10,move=0,ability2=0}] move 601
scoreboard players set @s[scores={chance=10,move=1..}] Disabled 40
scoreboard players set @s[scores={chance=10,move=1..}] ability2 3200
execute as @s[scores={chance=10,move=1..}] at @s run function mobs/curses/kaiju/atomic_breath



scoreboard players set @s[scores={move=1..3,chance=1..}] chance 0
scoreboard players set @s[scores={chance=1..,move=0}] chance 0