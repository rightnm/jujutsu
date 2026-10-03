
playanimation @s[scores={Deleter=52..}] animation.mahoraga.death

execute as @s[scores={Deleter=54}] at @s run kill @e[type=item,r=60]

execute as @s[scores={Deleter=5..}] run scoreboard players set @e[r=60] Frames 5


execute as @s[scores={Deleter=1..6}] at @s run tp @s ~~-50~

execute as @s[scores={Deleter=1..}] at @s run tp @s ~~~

execute as @s[scores={Deleter=1..15}] at @s run particle ds:swamp_puddle1 ^^0.44^0.75
execute as @s[scores={Deleter=1..15}] at @s run particle ds:swamp_puddle2 ^^^0.75
execute as @s[scores={Deleter=1..15}] at @s run particle ds:swamp_puddle3 ^^^0.75
execute as @s[scores={Deleter=1..15}] at @s run particle ds:swamp_puddle4 ^^^0.75
execute as @s[scores={Deleter=1..15}] at @s run particle ds:swamp_puddle5 ^^^0.75

execute as @s[scores={Deleter=16}] at @s run execute as @p[tag=shikigami,scores={forms=10..},c=1,r=60,tag=!mahoraga_tame] at @s run function shikigami/shikigami/mahoraga_tame
execute as @s[scores={Deleter=12}] at @s unless score mobeventstoggle Mode = three Mode run scoreboard players random @s chance 1 100

execute as @s[scores={Deleter=12}] at @s run scoreboard objectives add itemdrop dummy
execute as @s[scores={Deleter=9,chance=1..}] at @s unless score mobeventstoggle Mode = three Mode run summon ds:wheel_drop "§r§d§lEight-Handled Wheel of Adaption" ~~~
execute as @s[scores={Deleter=9,chance=1..}] at @s unless score mobeventstoggle Mode = three Mode run playsound mob.wither.spawn @a ~~~ 999999 0.7 999999
execute as @s[scores={Deleter=7..9,chance=1..}] at @s unless score mobeventstoggle Mode = three Mode run tag @e[type=ds:wheel_drop,c=1] add Frames
execute as @s[scores={Deleter=7..9,chance=1..}] at @s unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:wheel_drop,c=1] itemdrop 1

execute as @s[scores={Deleter=9,chance=1..3}] at @s unless score mobeventstoggle Mode = three Mode run summon ds:exterminationsword_drop "§r§d§lSword of Extermination" ~1~~1
execute as @s[scores={Deleter=9,chance=1..3}] at @s unless score mobeventstoggle Mode = three Mode run playsound mob.wither.spawn @a ~~~ 999999 0.7 999999
execute as @s[scores={Deleter=7..9,chance=1..3}] at @s unless score mobeventstoggle Mode = three Mode run tag @e[type=ds:exterminationsword_drop,c=1] add Frames
execute as @s[scores={Deleter=7..9,chance=1..3}] at @s unless score mobeventstoggle Mode = three Mode run scoreboard players set @e[type=ds:exterminationsword_drop,c=1] itemdrop 1

execute as @s[scores={Deleter=9}] at @s unless score mobeventstoggle Mode = three Mode run scoreboard players random @a[scores={combat=1..},r=50] expadd 1250 2525