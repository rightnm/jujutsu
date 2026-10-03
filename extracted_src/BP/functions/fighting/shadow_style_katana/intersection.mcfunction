playanimation @s[scores={move=20..}] animation.shadow_katana.ab3

tag @s[scores={move=1..2}] remove wep3

scoreboard players set @s Frames 6
scoreboard players set @s Move 6

effect @s[scores={move=18..}] resistance 1 10 true

execute as @s[scores={move=2..18}] at @s run playsound mob.slash1 @a[r=20] ~~~ 0.1 2.25
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run damage @e[tag=!Frames,r=20] 2 override
execute as @s[scores={move=3}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run damage @e[tag=!Frames,r=20] 12 override
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run scoreboard players set @e[tag=!Frames,r=20] Hit 2
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run scoreboard players set @e[tag=!Frames,r=20] Stun 5
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run particle ds:intersection1 ~~1~
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run particle ds:intersection2 ~~1~
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run particle ds:intersection3 ~~1~
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run particle ds:intersection4 ~~1~
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run particle ds:intersection1 ~~1~
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run particle ds:intersection2 ~~1~
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run particle ds:intersection3 ~~1~
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run particle ds:intersection4 ~~1~
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run execute as @e[r=20,tag=!Frames,rm=0.15] at @s run particle ds:intersection
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run execute as @e[r=20,tag=!Frames,rm=0.15] at @s run playsound mob.sword @a[r=30] ~~~ 0.1 2.3

execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run camerashake add @a[r=25] 2 0.08
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run execute as @e[family=projectile,r=20,tag=!Frames,scores={Deleter=0..70},rm=0.15] at @s run particle ds:intersection
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run kill @e[family=projectile,r=20,tag=!Frames,scores={Deleter=0..70},rm=0.15]
execute as @s[scores={move=2..18}] at @s run execute as @e[type=ds:simple_domain,c=1,r=20] at @s run kill @e[type=arrow,r=20,tag=!Frames,rm=0.15]