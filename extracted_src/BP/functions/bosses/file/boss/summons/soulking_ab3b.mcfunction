playanimation @s[scores={move=80..81}] animation.soulking.voidcrush
kill @e[name=voidslash,c=1]
tag @s remove wep3
tp @s @s

scoreboard players set @s Frames 5


execute as @e[family=heroic,type=!ds:primesoul,type=!ds:soulking] at @s run tp @s ~~~
scoreboard players set @e[family=heroic,type=!ds:primesoul,type=!ds:soulking] Stun 20
scoreboard players set @e[family=heroic,type=!ds:primesoul,type=!ds:soulking] chance 0

execute as @s run execute as @e[tag=voidcrush,c=1] at @s run tp @s ~~~
execute as @s run execute as @e[tag=voidcrush,c=1] at @s run tp @e[tag=voidcrush_atk,c=1] ^^^0.5 facing @s

execute as @s[scores={move=1..75}] run scoreboard players set @e[tag=voidcrush,c=1] knock 25

execute as @s[scores={move=75}] run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=75}] run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=75}] run playsound random.explode @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=75}] run particle ds:crater2 ^^^0.1
execute as @s[scores={move=75}] run summon gg:impact_frame

execute as @s[scores={move=1..70}] run particle ds:voidcrush ^^^0.4
execute as @s[scores={move=50}] run playsound music.meteoric @a[r=200] 
execute as @s[scores={move=50}] run summon gg:impact_frame
execute as @s[scores={move=50}] run particle ds:invert
execute as @s[scores={move=50}] run playsound mob.distort1 @a[r=100] ~~~ 9999 3 9999
execute as @s[scores={move=50}] run playsound mob.distort3 @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=50}] run playsound mob.wither.break_block @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=1..50}] run particle ds:voidcrush1 ^^^0.4
execute as @s[scores={move=1..50}] run particle ds:voidcrush2 ^^^0.4
execute as @s[scores={move=1..50}] run particle ds:voidcrush3 ^^^0.4
damage @e[tag=voidcrush] 1 suicide

execute as @s[scores={move=17..50}] run camerashake add @a[r=100] 0.15 0.15

execute as @s[scores={move=55}] run camera  @a[r=20] fade time 0 0 0.2 color 150 25 210
execute as @s[scores={move=21..50}] anchored eyes run camera @p[tag=voidcrush] set minecraft:free pos ^^-0.85^0.45 facing ^^0.1^
execute as @s[scores={move=7..19}] anchored eyes run camera @p[tag=voidcrush] set minecraft:free pos ^5^10.85^10.45 facing ^^0.1^
execute as @s[scores={move=21..50}] anchored eyes run camera @p[tag=voidcrush_atk] set minecraft:free pos ^^-0.85^0.45 facing ^^0.1^
execute as @s[scores={move=7..19}] anchored eyes run camera @p[tag=voidcrush_atk] set minecraft:free pos ^5^10.85^10.45 facing ^^0.1^
execute as @s[scores={move=15}] run camerashake add @a[r=100] 2 0.5
execute as @s[scores={move=15}] run summon gg:impact_frame
execute as @s[scores={move=12}] run particle ds:invert
execute as @s[scores={move=11}] run summon gg:impact_frame
execute as @s[scores={move=8}] run particle ds:invert

execute as @s[scores={move=5}] at @s run particle ds:dirt0
execute as @s[scores={move=5}] at @s run particle ds:reality_crater1 ~ 240 ~ 
execute as @s[scores={move=1..5}] at @s run particle ds:large_impact1
execute as @s[scores={move=1..5}] at @s run particle ds:large_impact2
execute as @s[scores={move=1..5}] at @s run particle ds:rubble3
execute as @s[scores={move=1..5}] at @s run camera @a clear
execute as @s[scores={move=1..5}] at @s run tag @e remove voidcrush
execute as @s[scores={move=1..4}] at @s run tag @e remove voidcrush_atk