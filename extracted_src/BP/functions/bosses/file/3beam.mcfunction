playanimation @s[scores={move=60..}] animation.rift_prison.3_beam


execute as @s[scores={move=53}] at @s run particle ds:large_impact2 ~~3.5~
execute as @s[scores={move=53}] at @s run camerashake add @a[r=200] 2 0.2
execute as @s[scores={move=53}] at @s run playsound mob.impact @a[r=200] ~~3.5~ 99999 3 99999
execute as @s[scores={move=53}] at @s run execute as @a[r=200] at @s run summon ds:projectile equinox_beam


execute as @s[scores={move=39}] at @s run particle ds:large_impact2 ~~3.5~
execute as @s[scores={move=39}] at @s run camerashake add @a[r=200] 2 0.2
execute as @s[scores={move=39}] at @s run playsound mob.impact @a[r=200] ~~3.5~ 99999 3 99999
execute as @s[scores={move=39}] at @s run execute as @a[r=200] at @s run summon ds:projectile equinox_beam


execute as @s[scores={move=25}] at @s run particle ds:large_impact2 ~~3.5~
execute as @s[scores={move=25}] at @s run camerashake add @a[r=200] 2 0.2
execute as @s[scores={move=25}] at @s run playsound mob.impact @a[r=200] ~~3.5~ 99999 3 99999
execute as @s[scores={move=25}] at @s run execute as @a[r=200] at @s run summon ds:projectile equinox_beam

