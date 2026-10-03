playanimation @s[scores={move=20,amberbeast=0}] animation.lightning_bolt
playanimation @s[scores={move=20,amberbeast=1..}] animation.lightning_bolt2

tag @s[scores={move=1..2},tag=form1] remove form1

tag @s[scores={move=16..,Stun=1..},tag=form1] remove form1
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=16}] Frames 6

scoreboard players set @s[scores={move=15..17}] atk 2


execute as @s[scores={move=19}] at @s run playsound mob.electricity @a ~~~


execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact1
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact2
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact3
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact5
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=16] 4 0.15

execute as @s[scores={move=13..15,amberbeast=0}] at @s  run scriptevent ds:lightning 1,1,2, 0.35,0.65,1, 0.35,0.65,1, 0,0,5, 1,0,0
execute as @s[scores={move=13..15,amberbeast=1..}] at @s  run scriptevent ds:lightning 1,1,2, 1,0.25,0.75, 1,0.25,0.75, 0,0,5, 1,0,0

execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 1.75 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked3 @a[r=100] ~~~ 99999 1.3 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked2 @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_shockwave1
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_sparkle1
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes run summon ds:projectile LightningBolt ^^-1^0.25
execute as @s[scores={move=15,amberbeast=0}] at @s anchored eyes run summon ds:projectile LightningBoltTRG ^^^40
execute as @s[scores={move=14..15,amberbeast=0}] at @s anchored eyes run scoreboard players set @e[name=LightningBolt,c=1] Deleter 12
execute as @s[scores={move=14..15,amberbeast=0}] at @s anchored eyes positioned ^^^40 run scoreboard players set @e[name=LightningBoltTRG,c=1] Deleter 12

execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 1.75 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked3 @a[r=100] ~~~ 99999 1.3 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked2 @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_shockwave1a
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_sparkle1a
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes run summon ds:projectile LightningBolt ^^^0.25
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes run summon ds:projectile LightningBoltTRG ^^^40
execute as @s[scores={move=15,amberbeast=1..}] at @s anchored eyes run tag @e[type=ds:projectile,name=LightningBolt,c=1] add amber
execute as @s[scores={move=14..15,amberbeast=1..}] at @s anchored eyes run scoreboard players set @e[name=LightningBolt,c=1] Deleter 12
execute as @s[scores={move=14..15,amberbeast=1..}] at @s anchored eyes positioned ^^^40 run scoreboard players set @e[name=LightningBoltTRG,c=1] Deleter 12


