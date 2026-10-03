
playanimation @s[scores={move=70..71}] animation.absorption.ab8

scoreboard players set @s[scores={move=30..}] Frames 25
scoreboard players set @s[scores={move=30..}] Move 25
scoreboard players set @s[scores={move=1..}] Camera 15

tag @s[scores={move=1..3}] remove form8

execute as @s[scores={move=70..}] at @s run tp @s ~~~~ 0

execute as @s[scores={move=70..}] at @s run camera @s set minecraft:free pos ^^0.15^1.5 facing ^^^

execute as @s[scores={move=68..69}] at @s run camera @s set minecraft:free ease 1.5 in_out_circ pos ^^1.6^1.5 facing ^^1.6^

execute as @s[scores={move=10}] at @s run camera @s set minecraft:free ease 1.5 in_out_circ pos ^^40^40 facing ^^1.6^

execute as @s[scores={move=70..}] at @s run playsound music.nuke @a[r=100] ~~-5~ 99999 1.6 99999

execute as @s[scores={move=30..}] at @s run playsound mob.electricity @a[r=100] ~~-5~ 99999 1.25 99999
execute as @s[scores={move=30..}] at @s run camerashake add @a[r=20] 0.15 0.15
execute as @s[scores={move=10..}] at @s run particle ds:absorption
execute as @s[scores={move=10..}] at @s run particle ds:turbo_intensity2
execute as @s[scores={move=10..}] at @s run particle ds:turbo_intensity3
execute as @s[scores={move=10..}] at @s run particle ds:turbo_intensity3b
execute as @s[scores={move=10..}] at @s run particle ds:turbo_intensity3c
execute as @s[scores={move=10..}] at @s run particle ds:turbo_intensity3e
execute as @s[scores={move=10..}] at @s run particle ds:absorption_ex7
execute as @s[scores={move=10..45}] at @s run particle ds:absorption_ex7b
execute as @s[scores={move=10..25}] at @s run particle ds:absorption_exb ~~1~

execute as @s[scores={move=1..14}] at @s run tp @s ~~~~ 0

execute as @s[scores={move=5..10}] at @s run particle ds:absorption_exc ~~1~
execute as @s[scores={move=5..10}] at @s run particle ds:absorption_leftover2 ~~1~
execute as @s[scores={move=5..10}] at @s run particle ds:absorption_leftover3 ~~1~

execute as @s[scores={move=20}] at @s run  function damages/electric_damage
execute as @s[scores={move=5}] at @s run  function damages/electric_damage
execute as @s[scores={move=15}] at @s run  function damages/electric_damage
execute as @s[scores={move=10}] at @s run  function damages/electric_damage

camera @s[scores={move=1..3}] clear

execute as @s[scores={move=12}] at @s run  playsound mob.blasted3 @a ~~~ 999999999 0.95 9999999999
execute as @s[scores={move=12}] at @s run  playsound mob.blasted4 @a ~~~ 999999999 0.95 9999999999
execute as @s[scores={move=12}] at @s run  summon gg:impact_frame
execute as @s[scores={move=11}] at @s run particle ds:invert
execute as @s[scores={move=10}] at @s run particle ds:blue_tint
execute as @s[scores={move=9}] at @s run particle ds:red_tint
execute as @s[scores={move=10}] at @s run  summon gg:impact_frame
execute as @s[scores={move=9}] at @s run particle ds:invert
execute as @s[scores={move=11}] at @s run  effect @a[r=300] night_vision 1 1 true
execute as @s[scores={move=11}] at @s run camerashake add @a[r=300] 4 0.25 rotational
execute as @s[scores={move=8..12}] at @s run playsound mob.shock1 @a[r=1000] ~~~ 999999 0.5 999999
execute as @s[scores={move=10}] at @s run scoreboard players operation @e[tag=!Frames,r=50] damage += @s absorption
execute as @s[scores={move=8}] at @s run  summon ds:mahoraga_knockback2
execute as @s[scores={move=10}] at @s run damage @e[tag=!Frames,r=50] 20 override
execute as @s[scores={move=10}] at @s run scoreboard players set @e[tag=!Frames,r=50] knockdown 100
execute as @s[scores={move=10}] at @s run effect  @e[tag=!Frames,r=50] levitation 1 20
execute as @s[scores={move=10}] at @s run  playsound mob.electricity @a[r=1000] ~~~ 99999 0.33 999999
execute as @s[scores={move=8}] at @s if entity @p[tag=griefable] run function 32x32sphere
execute as @s[scores={move=5}] at @s if entity @p[tag=griefable] run fill ~5~5~5 ~-5~-5~-5 air
execute as @s[scores={move=5}] at @s if entity @p[tag=griefable] positioned ~~-21~ run fill ~2~2~2 ~-2~-3~-2 air
scoreboard players set @s[scores={move=1..6}] absorption 0

