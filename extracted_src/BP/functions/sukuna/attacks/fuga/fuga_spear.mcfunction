execute as @s[scores={Deleter=160..}] at @s run tp @s ^^^0.5
execute as @s[scores={Deleter=20..}] at @s run tp @s ^^^0.5

execute as @s[scores={Deleter=20..160}] at @s run summon ds:projectile spear_explosion ~~~
execute as @s[scores={Deleter=20..160}] at @s run spreadplayers ~~ 3 40 @e[name=spear_explosion,c=1]
execute as @e[type=ds:projectile,name=spear_explosion] at @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 9
execute as @e[type=ds:projectile,name=spear_explosion] at @s unless entity @s[scores={atk=0..}] run scoreboard players set @s atk 2

execute as @p[tag=griefable] run kill @e[type=item,r=45]

execute as @e[name=spear_explosion,scores={Deleter=8}] at @s run playsound mob.red2 @a[r=400] ~~~ 999999 2 999999
execute as @e[name=spear_explosion,scores={Deleter=7..8}] at @s run particle ds:fuga_stars1
execute as @e[name=spear_explosion,scores={Deleter=7..8}] at @s run particle ds:fuga_stars2
execute as @e[name=spear_explosion,scores={Deleter=8..9}] at @s run particle ds:fuga_spear_fall1
execute as @e[name=spear_explosion,scores={Deleter=8..9}] at @s run particle ds:fuga_spear_fall2
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run camerashake add @a[r=100] 2 0.1
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run playsound random.explode @a[r=200] ~~~ 99999 1 99999
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run particle ds:energy_explode1
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run particle ds:fuga_area
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run particle ds:fuga_spear_land1
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run particle ds:fuga_spear_land2
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run particle ds:flame_repulse_ex2
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run particle ds:stoic_explode1
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run particle ds:stoic_explode3
execute as @e[name=spear_explosion,scores={Deleter=3..4}] at @s if entity @e[tag=griefable] run effect @e[r=32] resistance 0 50 true
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run damage @e[tag=!Frames,r=32] 6 override
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=32] Stun 20
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run scoreboard players add @e[tag=!Frames,r=32] Evade 7
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run scoreboard players add @e[tag=!Frames,r=32] onfire 10
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s run function damages/fuga_damage
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s if entity @e[tag=griefable] run function flames/heat15x15
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s if entity @e[tag=griefable] run effect @e[r=34] resistance 1 20 true
execute as @e[name=spear_explosion,scores={Deleter=3}] at @s if entity @e[tag=griefable] run summon ds:energy_explosion
execute as @e[name=spear_explosion,scores={Deleter=1..3}] at @s run tp @s ~~-100~


kill @s[scores={Deleter=0..70}]