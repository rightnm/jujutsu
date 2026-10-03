




















# I RECOMMEND NOT TO SEARCH THROUGH THIS FILE AS IT MAY SPOIL OR RUIN STEPS REQUIRED FOR SECRETS IN THIS MOD. IF YOU WANT TO EXPERIENCE THE SECRETS PLEASE DO IT THE LEGITIMATE WAY AS IT WILL BE MORE INTERESTING AND FUN



































execute as @p[tag=devastator,r=5.5] at @s positioned ^^1^2 run playsound mob.shock2 @a[r=100] ~~~ 99999 2 99999
execute as @p[tag=devastator,r=5.5] at @s positioned ^^1^2 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2 99999
execute as @p[tag=devastator,r=5.5] at @s positioned ^^1^2 run playsound mob.wither.spawn @a[r=100] ~~~ 99999 4 99999
execute as @p[tag=devastator,r=5.5] at @s positioned ^^1^2 run playsound mob.distort2 @a[r=100] ~~~ 99999 2 99999
execute as @p[tag=devastator,r=5.5] at @s positioned ^^1^2 run camerashake add @a[r=100] 1 0.15
execute as @p[tag=devastator,r=5.5] at @s positioned ^^1^2 run particle ds:invert
scoreboard players set @e[type=ds:rift,r=3] Deleter 111
execute as @p[tag=griefable] unless entity @e[type=ds:void_reactor,r=200] run function 4x4sphere
scoreboard players set @s Stun 15

tag @e[type=ds:rift_stabilizer,r=5] add broken
scoreboard players set @e[type=ds:rift_stabilizer,r=5] Deleter 34

particle ds:conflict_essence
particle ds:large_impact2
damage @e[tag=!Frames,r=2.96,tag=!devastator] 40 suicide
scoreboard players set @e[tag=!Frames,r=2.96,tag=!devastator] Hit 5
execute as @p[tag=devastator,r=60] positioned ^^^3 run function devastate


