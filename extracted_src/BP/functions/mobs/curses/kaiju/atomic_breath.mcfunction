

playanimation @s[scores={move=600..}] animation.kaiju_curse.atomic_breath

execute as @s[scores={move=7..}] at @s run tickingarea add ~33~~33  ~-33~~-33 atomicbreath
execute as @s[scores={move=1..6}] at @s run tickingarea remove atomicbreath


effect @s[scores={move=41..}] slowness 2 10 true

tp @s ~~~ facing @e[name="atomicbreath1",c=1]

execute as @s[scores={move=5..}] at @s run tp @s @s

execute as @s[scores={move=1..5}] at @s run event entity @s glowing_off

execute as @s[scores={move=240..340}] at @s run execute as @e[type=!player,r=60] at @s run tp @s ~~~

execute as @s[scores={move=240..340}] at @s run  damage @e[tag=!Frames,type=!ds:kaiju_curse,r=12] 5 override
execute as @s[scores={move=240..340}] at @s run camerashake add @a[r=100] 1 0.15
execute as @s[scores={move=240..340}] at @s positioned ^^^50 run damage @e[tag=!Frames,type=!ds:kaiju_curse,r=55] 1 override

scoreboard players set @s[scores={move=250..,Frames=0..10}] Frames 15

execute as @s[scores={move=600..}] at @s run event entity @s glowing_off

execute as @s[scores={move=575}] at @s run event entity @s glowing_on
execute as @s[scores={move=575}] at @s run playsound music.atomicbreath1 @a[r=100]
execute as @s[scores={move=575}] at @s run playsound mob.atomicbreath1 @a[rm=100] ~~~ 99999 1 99999

execute as @s[scores={move=344}] at @s run playsound music.atomicbreath2 @a[r=100]
execute as @s[scores={move=344}] at @s run playsound mob.atomicbreath2 @a[rm=100] ~~~ 99999 1 99999
execute as @s[scores={move=340}] at @s run effect @a[r=200] night_vision 12 1 true
execute as @s[scores={move=340}] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=340}] at @s run summon gg:impact_frame
execute as @s[scores={move=340}] at @s run particle ds:invert ^^5^7
execute as @s[scores={move=338}] at @s run function clear_impframe
execute as @s[scores={move=337}] at @s run summon gg:impact_frame
execute as @s[scores={move=337}] at @s run particle ds:invert ^^5^7
execute as @s[scores={move=336}] at @s run function clear_impframe

execute as @s[scores={move=340}] at @s run summon ds:projectile ^^^10 facing ^^^30 none "atomicbreath1" 
execute as @e[name=atomicbreath1] at @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 51

execute as @e[name=atomicbreath1,scores={Deleter=40..}] at @s run tp @s ^^^0.5
execute as @e[name=atomicbreath1,scores={Deleter=30..39}] at @s run tp @s ^^^1.25
execute as @e[name=atomicbreath1,scores={Deleter=1..29}] at @s run tp @s ^^^2.75
execute as @e[name=atomicbreath1] at @s run particle ds:large_slam1
execute as @e[name=atomicbreath1] at @s run particle ds:large_slam2
execute as @e[name=atomicbreath1] at @s run particle ds:large_slam3
execute as @e[name=atomicbreath1] at @s run particle ds:explosion
execute as @e[name=atomicbreath1] at @s run particle ds:atomic_breath_explode
execute as @e[name=atomicbreath1] at @s run function mobs/curses/kaiju/breath 