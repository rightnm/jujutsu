playanimation @s[scores={move=100..}] animation.cyclone_bomb

tp @s ~~~ 
tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=100..}] at @s run tp @s ~~8~

execute as @s[scores={move=100,detect_health=400..}] at @s run particle ds:novabomb_charge1 ~~12~
execute as @s[scores={move=21..,detect_health=400..}] at @s run particle ds:novabomb_charge2 ~~12~
execute as @s[scores={move=21..,detect_health=400..}] at @s run particle ds:novabomb_charge3 ~~12~
execute as @s[scores={move=21..,detect_health=400..}] at @s run particle ds:novabomb_charge4 ~~12~

execute as @s[scores={move=100,detect_health=1..399}] at @s run particle ds:novabomb_charge1b ~~12~
execute as @s[scores={move=21..,detect_health=1..399}] at @s run particle ds:novabomb_charge2b ~~12~
execute as @s[scores={move=21..,detect_health=1..399}] at @s run particle ds:novabomb_charge3b ~~12~
execute as @s[scores={move=21..,detect_health=1..399}] at @s run particle ds:novabomb_charge4b ~~12~

execute as @s[scores={move=91}] at @s run playsound beacon.power @a[r=100] ~~5~ 99999 5 99999
execute as @s[scores={move=91}] at @s run playsound mob.red1 @a[r=100] ~~5~ 99999 0.15 99999
execute as @s[scores={move=91}] at @s run playsound beacon.power @a[r=100] ~~5~ 99999 0.5 99999
execute as @s[scores={move=21..91}] at @s run camerashake add @a[r=100] 2 0.15

execute as @s[scores={move=20}] at @s run playsound mob.blitz2 @a[r=100] ~~5~ 99999 0.5 99999

execute as @s[scores={move=35}] at @s run summon ds:projectile novabomb ~~10~
execute as @s[scores={move=20}] at @s run execute as @p[r=150] at @s run summon ds:projectile novabombtrg ~~~
execute as @s[scores={move=15..20}] at @s run scoreboard players set @e[name=novabomb,c=1] Deleter 51
execute as @s[scores={move=15..20}] at @s run scoreboard players set @e[name=novabombtrg,c=1] Deleter 51