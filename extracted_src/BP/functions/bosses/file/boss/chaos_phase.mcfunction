execute unless entity @p[tag=arenaboss] unless entity @e[type=ds:primesoul] run function nostopcheating

tp @e[type=ds:primesoul] ~ 260 ~
tag @e[type=ds:primesoul,tag=!minion_phase] add minion_phase
tag @s[type=ds:chaos,tag=!Big] add Big
tp @s[scores={move=0}] -59936 240 -59936 facing @p[tag=!unselect]
execute if entity @a[r=10] run summon ds:mahoraga_knockback2


execute unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 0
execute unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 0
execute unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 100
scoreboard players remove @s[scores={Energy=1..,move=0}] Energy 1

scoreboard players set @s[scores={move=1..}] Disabled 100
scoreboard players random @s[scores={Energy=0,Disabled=0}] chance 1 3
execute as @s[scores={chance=1..,move=0,Disabled=0}] at @s run particle ds:chaos_aura ~~5~

scoreboard players set @s[scores={chance=1,Stun=0,move=0}] move 66
scoreboard players set @s[scores={chance=1,Stun=0,move=1..}] Disabled 50
execute as @s[scores={chance=1,move=1..}] at @s run function bosses/file/boss/chaos_laser

scoreboard players set @s[scores={chance=2,Stun=0,move=0}] move 61
scoreboard players set @s[scores={chance=2,Stun=0,move=1..}] Disabled 50
execute as @s[scores={chance=2,move=1..}] at @s run function bosses/file/boss/chaos_beam

execute as @s[scores={detect_health=0..1}] at @s run execute as @a[r=200] at @s run playsound music.chaos @s ~~~ 99999 0.2 99999
execute as @s[scores={detect_health=0..1}] at @s run  camerashake add @a[r=200] 4 1 rotational
execute as @s[scores={detect_health=0..1}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4Ｉ ＨＯＰＥ ＹＯＵ＇ＲＥ ＲＥＡＤＹ！"}]}
execute as @s[scores={detect_health=0..1}] at @s run playsound music.ready @a[r=300]
execute as @s[scores={detect_health=0..1}] at @s run fog @a[r=200] push minecraft:fog_the_end reality_arena
execute as @s[scores={detect_health=0..1}] at @s run tag @e[tag=minion_phase] remove minion_phase
execute as @s[scores={detect_health=0..1}] at @s run scoreboard players set @e[type=ds:primesoul] phase 8
execute as @s[scores={detect_health=0..1}] at @s run event entity @e[type=ds:primesoul] wings_2
execute as @s[scores={detect_health=0..1}] at @s run event entity @e[type=ds:primesoul] prime_weapon_off
execute as @s[scores={detect_health=0..1}] at @s run playsound mob.enderdragon.death @a ~~~ 99999 1.25 99999
execute as @s[scores={detect_health=0..1}] at @s run camera @a[r=300] fade time 0 1 1 color 255 255 255
execute as @s[scores={detect_health=0..1}] at @s run event entity @s ds:disappear

execute as @e[name="equinox_beam"] at @s run function bosses/file/equinox_beam

scoreboard players set @s[scores={move=1..3,chance=!0}] chance 0