playanimation @s[scores={move=100..}] animation.astaroth_charge

tp @s ~~~ 
tp @s ~~~ facing @p[m=!c]


execute as @s[scores={move=81..}] at @s run particle ds:rift_charging1 ~~33~
execute as @s[scores={move=81..91}] at @s run particle ds:rift_charging2 ~~33~
execute as @s[scores={move=21..81}] at @s run particle ds:equinox_orb2 ~~33~
execute as @s[scores={move=21..61}] at @s run particle ds:equinox_orb3 ~~33~
execute as @s[scores={move=21..61}] at @s run particle ds:equinox_orb ~~33~
execute as @s[scores={move=21..51}] at @s run particle ds:stars2 ~~33~
execute as @s[scores={move=21..91}] at @s run playsound mob.wither.shoot @a ~~33~ 999999 0.25 999999
execute as @s[scores={move=21..91}] at @s run playsound mob.wither.spawn @a ~~33~ 999999 0.5 999999
execute as @s[scores={move=21..91}] at @s run camerashake add @a[r=100] 2 0.15

execute as @s[scores={move=20}] at @s run summon ds:projectile equinoxorb ~~33~
execute as @s[scores={move=20}] at @s run execute as @p[r=150] at @s run summon ds:projectile equinoxorbtrg ~~~
execute as @s[scores={move=15..20}] at @s run scoreboard players set @e[name=equinoxorb,c=1] Deleter 51
execute as @s[scores={move=15..20}] at @s run scoreboard players set @e[name=equinoxorbtrg,c=1] Deleter 51