execute as @s[scores={Evasive=20}] at @s run particle ds:evade1 ~~~
execute as @s[scores={Evasive=20}] at @s run particle ds:evade2 ~~1~
execute as @s[scores={Evasive=20}] at @s run particle ds:evade3~~~
execute as @s[scores={Evasive=20}] at @s run particle ds:evade4~~~

execute as @s[scores={Evasive=20}] at @s run camerashake add @a[r=5] 1 0.1

execute as @s[scores={Evasive=20}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 0.74
execute as @s[scores={Evasive=20}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 1.7

execute as @s[scores={Evasive=2}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 0.74
execute as @s[scores={Evasive=2}] at @s run playsound mob.enderdragon.flap @a ~~~ 1 1.7

scoreboard players set @s[scores={Evasive=1..,domainamp=6..}] domainamp 5
scoreboard players set @s[scores={Evasive=1..,hollowwickerbasket=6..}] hollowwickerbasket 5

execute as @s[scores={Evasive=2}] at @s run camerashake add @a[r=5] 1 0.1
execute as @s[scores={Evasive=3..}] at @s run scriptevent ds:knockback 2 

tag @s[scores={Evasive=1..},tag=knock] remove knock
replaceitem entity @s[scores={Evasive=1..},hasitem={item=ds:dash,location=slot.hotbar,slot=1,quantity=0}] slot.hotbar 1 ds:dash 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute as @s[scores={Evasive=2}] at @s run particle ds:evade1 ~~~
execute as @s[scores={Evasive=2}] at @s run particle ds:evade2 ~~1~
execute as @s[scores={Evasive=2}] at @s run particle ds:evade3~~~
execute as @s[scores={Evasive=2}] at @s run particle ds:evade4~~~
execute as @s[scores={Evasive=1..}] at @s run effect @s slowness 0 10 true
execute as @s[scores={Evasive=1..}] at @s unless entity @s[scores={knockdown=0}] run scoreboard players set @s knockdown 0
execute as @s[scores={Evasive=1..,Stun=1..}] at @s run scoreboard players set @s Stun 0
execute as @s[scores={Evasive=1..,Hit=1..}] at @s run scoreboard players set @s Hit 0
execute as @s[scores={Evasive=19..}] at @s run scoreboard players set @s Frames 17
execute as @s[scores={Evasive=1..}] at @s run scoreboard players set @s Move 2
execute as @s[scores={Evasive=1..}] at @s run scoreboard players set @s Camera 2
execute as @s[scores={Evasive=1..,knock=1..}] at @s run scoreboard players set @s knock 0
execute as @s[scores={Evasive=1..,DashCD=1..}] at @s run scoreboard players set @s DashCD 0
execute as @s[scores={Evasive=1..,Evade=1..}] at @s run scoreboard players set @s Evade 0
execute as @s[scores={Evasive=20}] at @s run effect @s speed 1 11 true
execute as @s[scores={Evasive=3..}] at @s run effect @s invisibility 1 1 true
execute as @s[scores={Evasive=1..2}] at @s run effect @s invisibility 0 4 true