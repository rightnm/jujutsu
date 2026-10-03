execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 21
tp @s ^^^3
damage @e[tag=!heroic,family=!projectile,type=!item,type=!xp_orb,r=3,type=!ds:soulking,type=!ds:bluelemon,type=!ds:xeroscoof] 20
tag @e[tag=!heroic,family=!projectile,type=!item,type=!xp_orb,r=3,type=!gg:impact_frame,type=!ds:soulking,type=!ds:bluelemon,type=!ds:xeroscoof] add voidcrush
execute if entity @e[tag=voidcrush,r=3,c=1] run tag @e[type=ds:soulking,c=1] add voidcrush_atk
execute if entity @e[tag=voidcrush,r=3,c=1] run scoreboard players set @e[type=ds:soulking,c=1] chance 0
execute if entity @e[tag=voidcrush,r=3,c=1] run scoreboard players set @e[type=ds:soulking,c=1] move 81

execute if entity @e[tag=voidcrush,r=3,c=1] run tag @p[hasitem={item=ds:void_katana,location=slot.weapon.mainhand},c=1] add voidcrush_atk
execute if entity @e[tag=voidcrush,r=3,c=1] run scoreboard players set @p[hasitem={item=ds:void_katana,location=slot.weapon.mainhand},c=1] chance 0
execute if entity @e[tag=voidcrush,r=3,c=1] run scoreboard players set @p[hasitem={item=ds:void_katana,location=slot.weapon.mainhand},c=1] move 81

playanimation @s animation.soulking.ab3b
particle ds:void_slash1c ~~~
