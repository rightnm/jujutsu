playanimation @s[scores={move=34}] animation.mahoraga.water_burst


execute as @s[scores={move=8..27}] at @s  run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air [] replace water
execute as @s[scores={move=8..21}] at @s  run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air [] replace water
execute as @s[scores={move=8..17}] at @s  run fill ~13 ~13 ~13 ~-13 ~-13 ~-13 air [] replace water

execute as @s[scores={move=8..27}] at @s  run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air [] replace flowing_water
execute as @s[scores={move=8..21}] at @s  run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air [] replace flowing_water
execute as @s[scores={move=8..17}] at @s  run fill ~13 ~13 ~13 ~-13 ~-13 ~-13 air [] replace flowing_water

execute as @s[scores={move=1..20}] at @s  run summon ds:red_reversal
execute as @s[scores={move=1..20}] at @s  run effect @e[r=20] resistance 1 3 true
execute as @s[scores={move=1..20}] at @s  run effect @s resistance 1 20 true

execute as @s[scores={move=10..}] at @s  run particle ds:water_burst1 ~~2.5~
execute as @s[scores={move=10..27}] at @s  run particle ds:water_burst2 ~~2.5~
execute as @s[scores={move=10..20}] at @s  run particle ds:water_burst3 ~~2.5~
execute as @s[scores={move=10..20}] at @s  run particle ds:water_burst4 ~~2.5~
execute as @s[scores={move=10..20}] at @s  run particle ds:water_burst5 ~~2.5~


execute as @s[scores={move=10..20}] at @s  run scoreboard players set @e[r=32,tag=!Frames,tag=!mahoraga_tame] Stun 20
execute as @s[scores={move=20}] at @s unless entity @e[scores={ab=1..},r=32] run summon ds:mahoraga_knockback2
execute as @s[scores={move=10..20}] at @s  run scoreboard players add @e[r=32,tag=!Frames,tag=!mahoraga_tame] Evade 6
execute as @s[scores={move=10..20}] at @s  run damage @e[r=32,tag=!Frames,tag=!mahoraga_tame] 6 entity_attack entity @s
execute as @s[scores={move=10..20}] at @s  run playsound random.splash @a[r=90] ~~~ 90 1.15 90
execute as @s[scores={move=10..20}] at @s  run playsound random.splash @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=10..20}] at @s  run playsound random.splash @a[r=90] ~~~ 90 0.65 90
execute as @s[scores={move=10..20}] at @s  run playsound random.swim @a[r=90] ~~~ 90 0.5 90
execute as @s[scores={move=10..20}] at @s  run playsound mob.wither.shoot @a[r=90] ~~~ 90 1.35 90
execute as @s[scores={move=10..20}] at @s  run playsound mob.wither.shoot @a[r=90] ~~~ 90 1.45 90
execute as @s[scores={move=10..20}] at @s  run camerashake add @a[r=62] 2 0.25

execute as @s[scores={move=5..7}] at @s  run particle ds:agito_dash1 ~~-2~
execute as @s[scores={move=5..7}] at @s  run particle ds:agito_dash2 ~~~
execute as @s[scores={move=5..7}] at @s  run tp @s @p[r=200]
