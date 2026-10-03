playanimation @s[scores={move=75..}] animation.primesoul.spear_ranged2

execute as @s[scores={move=10..}] run tp @s ~ 260 ~ facing @p[m=!c]
execute as @s[scores={move=7..9}] run tp @s ~ 240 ~ facing @p[m=!c]

execute as @s[scores={move=65}] run execute as @a[r=200] at @s run summon ds:projectile "equinox_ltn" ~ 240.1 ~
execute as @s[scores={move=65}] run execute as @a[r=200] at @s run particle ds:white_lightning_up ~~3~
execute as @s[scores={move=65}] run execute as @a[r=200] at @s run particle ds:reactor_activate2 ~~2~
execute as @s[scores={move=65}] run execute as @a[r=200] at @s run playsound mob.electricity @a[r=200] ~~10~ 9999 2 9999
execute as @s[scores={move=65}] run execute as @a[r=200] at @s run camerashake add @a[r=200] 2 0.15

execute as @s[scores={move=50}] run execute as @a[r=200] at @s run summon ds:projectile "equinox_ltn" ~ 240.1 ~
execute as @s[scores={move=50}] run execute as @a[r=200] at @s run particle ds:white_lightning_up ~~3~
execute as @s[scores={move=50}] run execute as @a[r=200] at @s run particle ds:reactor_activate2 ~~2~
execute as @s[scores={move=50}] run execute as @a[r=200] at @s run playsound mob.electricity @a[r=200] ~~10~ 9999 2 9999
execute as @s[scores={move=50}] run execute as @a[r=200] at @s run camerashake add @a[r=200] 2 0.15


execute as @s[scores={move=35}] run execute as @a[r=200] at @s run summon ds:projectile "equinox_ltn" ~ 240.1 ~
execute as @s[scores={move=35}] run execute as @a[r=200] at @s run particle ds:white_lightning_up ~~3~
execute as @s[scores={move=35}] run execute as @a[r=200] at @s run particle ds:reactor_activate2 ~~2~
execute as @s[scores={move=35}] run execute as @a[r=200] at @s run playsound mob.electricity @a[r=200] ~~10~ 9999 2 9999
execute as @s[scores={move=35}] run execute as @a[r=200] at @s run camerashake add @a[r=200] 2 0.15

execute as @s[scores={move=17}] run execute as @a[r=200] at @s run summon ds:projectile "equinox_ltn" ~ 240.1 ~
execute as @s[scores={move=17}] run execute as @a[r=200] at @s run summon ds:projectile "equinox_ltn" ~ 240.1 ~
execute as @s[scores={move=17}] run execute as @a[r=200] at @s run summon ds:projectile "equinox_ltn" ~ 240.1 ~
execute as @s[scores={move=16..17}] run execute as @a[r=200] at @s run spreadplayers ~ ~ 1 10 @e[name="equinox_ltn",c=3]

execute as @e[name=equinox_ltn] at @s run function bosses/file/boss/equinox_ltn


tag @s[scores={move=1..3}] remove spearranged2
