
playanimation @s[scores={move=100..}] animation.imaginary_purple
execute as @s[scores={move=100}] at @s run playsound mob.hollow2 @a ~~~ 1000 1 1000

execute as @s[family=gojo] at @s run tp @s ~~~ facing @e[scores={combat=1..},rm=1,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1,r=60]

tag @s[type=!item,scores={move=1..2}] remove form5
scoreboard players set @s[scores={move=1..52}] Frames 5



execute as @s[scores={move=50..,Stun=1..}] at @s run function cancel_attack

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=75..}] Camera 4

execute as @e[type=!item,name=ImagineTRG] at @s run tp @s ~~~ facing @e[type=!item,c=1]
execute as @e[type=!item,name=ImagineTRG,scores={Deleter=1..4}] at @s run tp @s ~~-30~

execute as @s[scores={move=1..}] at @s run kill @e[type=!item,type=ds:knockback,r=15]
execute as @s[scores={move=1..}] at @s run kill @e[type=!item,type=ds:running,r=8]
execute as @s[scores={move=1..}] at @s run kill @e[type=!item,type=ds:lapse_explode,r=15]
execute as @s[scores={move=1..}] at @s run kill @e[type=!item,type=ds:red_reversal,r=25]
execute as @s[scores={move=100..}] at @s run tp @s @s
execute as @s[scores={move=100..}] at @s run tp @s ~~2~

execute as @e[type=!item,name=ImagineRed,c=1] at @s run function limitless/limitless5proj
execute as @e[type=!item,name=ImagineBlue,c=1] at @s run function limitless/limitless5proj

execute as @s[scores={move=25..}] at @s run scriptevent ds:antiair

execute as @s[scores={move=100}] at @s run particle ds:hollow_blue_stars ^-2.5^1^1
execute as @s[scores={move=100}] at @s run particle ds:hollow_red_stars ^2.5^1^1
execute as @s[scores={move=98}] at @s run summon ds:projectile ImagineBlue ^-2.5 ^1.5 ^1
execute as @s[scores={move=98}] at @s run summon ds:projectile ImagineRed ^2.5 ^1.5 ^1
execute as @s[scores={move=88..}] at @s run scoreboard players set @e[type=!item,name=ImagineBlue,c=1] Deleter 6
execute as @s[scores={move=88..}] at @s run scoreboard players set @e[type=!item,name=ImagineRed,c=1] Deleter 6
execute as @s[scores={move=98}] at @s run summon ds:projectile ImagineTRG ^^1^1
execute as @s[scores={move=6..}] at @s run scoreboard players set @e[type=!item,name=ImagineTRG,c=1] Deleter 6


execute as @e[type=!item,name=ImagineTRG] at @s run tp @s ~~~
execute as @s[scores={move=1..97}] at @s run tp @e[type=!item,name=ImagineTRG,c=1] ^^1.25^1.33 facing @s
execute as @s[scores={move=1..97}] at @s run tp @e[type=!item,name=ImagineTRG,c=1] ^^1.25^1.33 facing @s




execute as @s[scores={move=100}] at @s anchored eyes run camera @s fade time 0.1 0 0.2 color 0 0 0


effect @s[scores={move=21..60}] slowness 1 2 true

title @s[tag=!impactframesoff,scores={move=45}] title 
title @s[tag=!impactframesoff,scores={move=44}] title 
title @s[tag=!impactframesoff,scores={move=43}] title §l

title @s[tag=!impactframesoff,scores={move=41}] title 
title @s[tag=!impactframesoff,scores={move=40}] title 
title @s[tag=!impactframesoff,scores={move=39}] title §l

execute as @s[scores={move=84..85}] at @s run playanimation @e[type=!item,name=ImagineTRG,c=1] animation.imaginary_collide
execute as @s[scores={move=84}] at @s run playsound mob.water @a ~~~ 1000 0.5 1000
execute as @s[scores={move=85}] at @s run camera @a[r=10] fade time 0.1 0 0.2 color 255 255 255


execute as @s[scores={move=36}] at @s run camera @a[r=40] fade time 0 0 1 color 235 55 235
execute as @s[scores={move=44}] at @s run effect @a[r=20] night_vision 5 1 true
execute as @s[scores={move=44}] at @s run summon ds:projectile ImaginaryP ^^1^1
execute as @s[scores={move=45}] at @s run summon ds:projectile ImaginaryPTRG2 ^^1^60
execute as @s[scores={move=44}] at @s run camerashake add @a[r=40] 2 0.25
execute as @s[scores={move=41..44}] at @s run scoreboard players set @e[type=!item,name=ImaginaryP,c=1] Deleter 30
execute as @s[scores={move=41..45}] at @s positioned ^^^65 run scoreboard players set @e[type=!item,name=ImaginaryPTRG2,c=1] Deleter 30