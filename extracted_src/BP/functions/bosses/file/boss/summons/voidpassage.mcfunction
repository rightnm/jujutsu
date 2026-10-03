

particle ds:voidpassage1 ~~~
particle ds:voidpassage2 ~~~
particle ds:voidpassage3 ~~~

camerashake add @a[r=25] 2 0.15
playsound mob.wither.hurt @a[r=100] ~~~ 0.15 4.5
playsound mob.slash1 @a[r=100] ~~~  0.15 2
damage @e[tag=!Frames,family=!heroic,r=4] 3 suicide
scoreboard players set @e[tag=!Frames,family=!heroic,r=4] Stun 15
scoreboard players set @e[tag=!Frames,family=!heroic,r=4] Hit 3
execute if entity @p[tag=arenaboss] run tag @e[tag=!Frames,family=!heroic,r=4] add voidmarked
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 15
execute unless entity @e[type=ds:soulking,r=5] if entity @e[type=ds:soulking,r=40] positioned ^^^4 run function bosses/file/boss/summons/voidpassage
execute unless entity @p[tag=wep2,hasitem={item=ds:void_katana,location=slot.weapon.mainhand},r=5] if entity @p[tag=wep2,hasitem={item=ds:void_katana,location=slot.weapon.mainhand},r=40] positioned ^^^4 run function bosses/file/boss/summons/voidpassage

