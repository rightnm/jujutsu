playanimation @s[scores={move=30..}] animation.primesoul.katana_combo2

execute as @s[scores={move=30}] at @s run particle ds:dirt0
execute as @s[scores={move=30..}] at @s run particle ds:stars ~~1~
execute as @s[scores={move=30..}] at @s run playsound mob.wither.hurt @a ~~~ 99999 2.6 99999

tp @s ~ ~ ~ facing @p[m=!c]

execute as @e[type=ds:projectile,name=jceq] unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 6
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=3..}] at @s run particle ds:equinox_jce1 ~~~ 
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=3..}] at @s run particle ds:equinox_jce2 ~~~ 
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=3..}] at @s run particle ds:equinox_jce3 ~~~ 
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=3..}] at @s run particle ds:equinox_jce4 ~~~ 
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=3..}] at @s run particle ds:equinox_jce5 ~~~ 
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=2..3}] at @s run damage @e[tag=!Frames,r=3] 10 suicide
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=2..3}] at @s run scoreboard players set @e[tag=!Frames,r=3] Stun 12
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=2..3}] at @s run scoreboard players set @e[tag=!Frames,r=3] Hit 3
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=2..3}] at @s run execute as @e[tag=!Frames,r=3] at @s run playsound mob.sword @a[r=200] ~~~ 99999 3 99999
execute as @e[type=ds:projectile,name=jceq,scores={Deleter=0..2}] at @s run tp @s ~~-200~


execute as @s[scores={move=30}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1.15 99999
execute as @s[scores={move=30}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=26}] at @s run playsound mob.jcut @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={move=26}] at @s run execute as @a[tag=!Frames,r=200] at @s run summon ds:projectile jceq ~~1~
execute as @s[scores={move=23..27}] at @s run execute as @e[name=jceq,c=1] at @s run execute as @a[scores={punch=1..},r=5,tag=!Frames] at @s  anchored eyes positioned ^^^1 run function parry


execute as @s[scores={move=20}] at @s run playsound mob.jcut @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={move=20}] at @s run execute as @a[tag=!Frames,r=200] at @s run summon ds:projectile jceq ~~1~
execute as @s[scores={move=17..21}] at @s run execute as @e[name=jceq,c=1] at @s run execute as @a[scores={punch=1..},r=5,tag=!Frames] at @s  anchored eyes positioned ^^^1 run function parry


execute as @s[scores={move=14}] at @s run playsound mob.jcut @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={move=14}] at @s run execute as @a[tag=!Frames,r=200] at @s run summon ds:projectile jceq ~~1~
execute as @s[scores={move=11..15}] at @s run execute as @e[name=jceq,c=1] at @s run execute as @a[scores={punch=1..},r=5,tag=!Frames] at @s  anchored eyes positioned ^^^1 run function parry


tag @s[scores={move=1..3}] remove katanacombo2