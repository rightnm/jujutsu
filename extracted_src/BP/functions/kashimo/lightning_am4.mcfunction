playanimation @s[scores={move=20}] animation.energy_wave

tag @s[scores={move=1..2},tag=form5a] remove form5a

tag @s[scores={move=16..,Stun=1..},tag=form5a] remove form5a
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=5..16}] Frames 6
scoreboard players set @s[scores={move=1..}] Move 4

scoreboard players set @s[scores={move=15..17}] atk 2


execute as @s[scores={move=19}] at @s run playsound mob.electricity @a ~~~

execute as @s[scores={move=15..}] at @s anchored eyes run particle ds:energy_charge1 ^^0.3^-0.35
execute as @s[scores={move=17..}] at @s anchored eyes run camerashake add @a[r=20] 1 0.1

execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:electro_carve1a 
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=16] 4 0.5


execute as @s[scores={move=10..15}] at @s  run scriptevent ds:lightning 2,2,2, 1,0.25,0.75, 1,0.25,0.75, 0,0,5, 1,0,0


effect @s[scores={move=19..}] resistance 1 10 true
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run playsound music.energy @a[r=100] ~~~ 99999 1.75 99999
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 1.75 99999
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked3 @a[r=100] ~~~ 99999 0.73 99999
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shock1 @a[r=100] ~~~ 99999 0.4 99999
execute as @s[scores={move=5..9}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_area1a
execute as @s[scores={move=15}] at @s anchored eyes run summon ds:projectile EnergyWave ^^-1^0.25
execute as @s[scores={move=15}] at @s anchored eyes run summon ds:projectile EnergyWaveTRG ^^^50
execute as @s[scores={move=14..15}] at @s anchored eyes run scoreboard players set @e[name=EnergyWave,c=1] Deleter 22
execute as @s[scores={move=14..15}] at @s anchored eyes positioned ^^^40 run scoreboard players set @e[name=EnergyWaveTRG,c=1] Deleter 22



