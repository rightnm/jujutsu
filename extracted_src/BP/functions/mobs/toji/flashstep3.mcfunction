execute as @s[tag=!simpledomain_protecting,tag=!invisible] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 0.25 0.7
execute as @s[tag=!simpledomain_protecting,tag=!invisible] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 0.25 1.7
execute as @s[tag=!simpledomain_protecting] at @s run scoreboard players set @s Frames 6
execute as @s[tag=!simpledomain_protecting] at @s run scoreboard players set @s flashstep 8
execute as @s[tag=!simpledomain_protecting] at @s run scoreboard players add @s Disabled 5
execute as @s[tag=!simpledomain_protecting] at @s run particle ds:sonido1

execute as @s[tag=simpledomain_protecting,tag=!invisible] positioned ^^^-1 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 0.25 0.7
execute as @s[tag=simpledomain_protecting,tag=!invisible] positioned ^^^-1 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 0.25 1.7
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] at @s run scoreboard players set @s Frames 6
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] at @s run scoreboard players set @s flashstep 8
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] at @s run scoreboard players add @s Disabled 5
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] at @s run particle ds:sonido1

execute as @s[tag=simpledomain_protecting,tag=!invisible] positioned ^^^-1 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 0.25 0.7
execute as @s[tag=simpledomain_protecting,tag=!invisible] positioned ^^^-1 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 0.25 1.7
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] at @s run scoreboard players set @s Frames 6
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] at @s run scoreboard players set @s flashstep 8
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] at @s run scoreboard players add @s Disabled 5
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] at @s run particle ds:sonido1


execute as @s[tag=!simpledomain_protecting] run tp @s ^^^-1 facing ~~1~
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] positioned ^^^1 run tp @s ^^^-1 facing ~~1~
execute as @s[tag=simpledomain_protecting] positioned ^^^-1 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] positioned ^^^1 run tp @s ^^^-1 facing ~~1~



execute at @s rotated ~ 0 positioned ^^^1 if entity @e[tag=target,tag=!unselect,family=!small,tag=!dying,r=0.15,c=1] run effect @s speed 0 50 true
execute at @s rotated ~ 0 positioned ^^^1 if entity @e[tag=target,tag=!unselect,family=!small,tag=!dying,r=0.15,c=1] run effect @s slowness 1 2 true
execute at @s rotated ~ 0 positioned ^^^1 if entity @e[tag=target,tag=!unselect,family=!small,tag=!dying,r=0.15,c=1] at @s run particle ds:sonido1
execute at @s[tag=!invisible] rotated ~ 0 positioned ^^^1 if entity @e[tag=target,tag=!unselect,family=!small,tag=!dying,r=0.15,c=1] at @s run particle ds:evade3

execute at @s rotated ~ 0 positioned ^^^1 run scoreboard players set @e[tag=target,tag=!unselect,family=!small,tag=!dying,r=0.15,c=1] Stun 17
execute at @s rotated ~ 0 positioned ^^^1 run scoreboard players set @e[tag=target,tag=!unselect,family=!small,tag=!dying,r=0.15,c=1] Camera 17