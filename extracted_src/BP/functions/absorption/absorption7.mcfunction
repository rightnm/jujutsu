playanimation @s[scores={move=30..31}] animation.absorption.ab7

scoreboard players set @s[scores={move=30..}] Frames 25
scoreboard players set @s[scores={move=30..}] Move 25
scoreboard players set @s[scores={move=19..20}] Camera 15

tag @s[scores={move=1..3}] remove form7

execute if block ~~-1~ air run tp @s ~~-1~
execute if block ~~-0.1~ air run tp @s ~~-0.1~
execute if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=20}] at @s run effect @a[r=33] night_vision 1 1 true
execute as @s[scores={move=25..}] at @s run particle ds:absorption
execute as @s[scores={move=25..}] at @s run playsound mob.electricity @a[r=100] ~~-6~ 99999 1.5 99999
execute as @s[scores={move=25..}] at @s run camerashake add @a[r=25] 0.15 0.15

execute as @s[scores={move=20,absorption=0..99}] at @s run particle ds:absorption_ex
execute as @s[scores={move=15..20,absorption=100..}] at @s run particle ds:absorption_exb

execute as @s[scores={move=20}] at @s run camerashake add @a[r=100] 4 0.25

execute as @s[scores={move=10..}] at @s run camera @s set minecraft:free pos ^^10^10 facing ~~~
execute as @s[scores={move=1..5}] at @s run camera @s clear

execute as @s[scores={move=20}] at @s run playsound mob.blasted4 @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=20}] at @s run  playsound mob.distort3 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=20}] at @s run  playsound mob.electricity @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=20}] at @s run  playsound mob.shock1 @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=20}] at @s run  playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=20}] at @s run  playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=20}] at @s run particle ds:ground_pound1 ~~~
execute as @s[scores={move=20}] at @s run particle ds:ground_pound2 ~~~
execute as @s[scores={move=20}] at @s run particle ds:ground_pound3 ~~~
execute as @s[scores={move=20}] at @s run particle ds:ground_pound4 ~~~
execute as @s[scores={move=20}] at @s run  damage @e[tag=!Frames,r=20] 20 override
execute as @s[scores={move=20}] at @s run  scoreboard players set @e[tag=!Frames,r=20] Stun 30
execute as @s[scores={move=20}] at @s run  scoreboard players set @e[tag=!Frames,r=20] Hit 5
execute as @s[scores={move=20}] at @s run  scoreboard players add @e[tag=!Frames,r=20] Evade 25

execute as @s[scores={move=11}] at @s run summon gg:impact_frame
execute as @s[scores={move=11}] at @s run particle ds:invert
execute as @s[scores={move=11}] at @s run particle ds:blue_tint
execute as @s[scores={move=10}] at @s run particle ds:red_tint
execute as @s[scores={move=10}] at @s run particle ds:invert
execute as @s[scores={move=10}] at @s run playsound mob.blasted4 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=10}] at @s run playsound mob.blasted3 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=20}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=20}] at @s run playsound mob.distort2 @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=10,absorption=0..99}] at @s run particle ds:absorption_ex
execute as @s[scores={move=10,absorption=100..}] at @s run particle ds:absorption_exb
execute as @s[scores={move=20}] at @s run particle ds:dirt2
execute as @s[scores={move=15}] at @s run particle ds:dirt3
execute as @s[scores={move=10}] at @s run particle ds:power_wave1 ~~1~
execute as @s[scores={move=10}] at @s run particle ds:power_wave2 ~~1~
execute as @s[scores={move=10}] at @s run camerashake add @a[r=100] 4 0.25 rotational
execute as @s[scores={move=10}] at @s run  damage @e[tag=!Frames,r=20] 20 override
execute as @s[scores={move=10}] at @s run  scoreboard players set @e[tag=!Frames,r=25] knockdown 100
execute as @s[scores={move=10}] at @s run  scoreboard players set @e[tag=!Frames,r=25] Hit 5
execute as @s[scores={move=10}] at @s run  scoreboard players add @e[tag=!Frames,r=25] Evade 25
execute as @s[scores={move=10}] at @s run  scoreboard players operation @e[tag=!Frames,r=25] damage += @s absorption
execute as @s[scores={move=10}] at @s run  scoreboard players operation @e[tag=!Frames,r=25] damage /= two endurance
execute as @s[scores={move=10}] at @s run  effect @e[tag=!Frames,r=25] levitation 1 19 true
execute as @s[scores={move=10}] at @s run summon ds:mahoraga_knockback2

execute as @s[scores={move=10}] at @s run  function damages/electric_damage
execute as @s[scores={move=20}] at @s run  function damages/electric_damage
execute as @s[scores={move=15}] at @s run  function damages/electric_damage

scoreboard players remove @s[scores={move=5..10,absorption=5..}] absorption 5

execute as @s[scores={move=1..}] at @s run tp @s ~~~

