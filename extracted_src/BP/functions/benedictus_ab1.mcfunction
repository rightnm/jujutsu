playanimation @s[scores={move=20..}] animation.benedictus_charge

tp @s ~~~ 
tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=15}] at @s run playsound portal.travel @a[r=100] ~~5~ 99999 5 99999
execute as @s[scores={move=15}] at @s run particle ds:stars ~~1~
execute as @s[scores={move=16}] at @s run summon gg:impact_frame
execute as @s[scores={move=15}] at @s run particle ds:invert ~~1~
execute as @s[scores={move=15}] at @s run effect @a[r=100] night_vision 1 1 true

execute as @s[scores={move=15}] at @s run execute as @e[type=!ds:projectile,family=!projectile,type=!item,type=!xp_orb,family=!damage,family=!despawncito,r=70,type=!ds:benedictus,type=!gg:impact_frame] at @s run summon ds:projectile "lightbeam"
execute as @s[scores={move=10}] at @s run execute as @e[type=!ds:projectile,family=!projectile,type=!item,type=!xp_orb,family=!damage,family=!despawncito,r=70,type=!ds:benedictus,type=!gg:impact_frame] at @s run summon ds:projectile "lightbeam"
execute as @s[scores={move=5}] at @s run execute as @e[type=!ds:projectile,family=!projectile,type=!item,type=!xp_orb,family=!damage,family=!despawncito,r=70,type=!ds:benedictus,type=!gg:impact_frame] at @s run summon ds:projectile "lightbeam"

