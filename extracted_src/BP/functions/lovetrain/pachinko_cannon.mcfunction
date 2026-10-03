execute as @s[name="Pachinko Cannon"] at @s run tp @s ^^^3 facing @e[type=!item,name=PachinkoCannonTRG,c=1]

tag @s add Frames
execute as @s[scores={Deleter=5..19}] at @s run scoreboard players set @e[type=!item,tag=!Frames,family=!projectile,r=4.5,type=!ds:knockback,type=!ds:pachinko_impact1] Stun 20
execute as @s[scores={Deleter=5..19}] at @s run scoreboard players add @e[type=!item,tag=!Frames,family=!projectile,r=4.5,type=!ds:knockback,type=!ds:pachinko_impact1] Evade 10
execute as @s[scores={Deleter=5..19}] at @s run scoreboard players add @e[type=!item,tag=!Frames,family=!projectile,r=4.5,type=!ds:knockback,type=!ds:pachinko_impact1] Hit 3
execute as @s[scores={Deleter=5..19},type=ds:pachinko1] at @s run damage @e[type=!item,tag=!Frames,family=!projectile,r=4.5,type=!ds:knockback,type=!ds:pachinko_impact1] 5 override 
execute as @s[scores={Deleter=5..19},type=ds:pachinko2] at @s run damage @e[type=!item,tag=!Frames,family=!projectile,r=4.5,type=!ds:knockback,type=!ds:pachinko_impact1] 8 override 
execute as @s[scores={Deleter=5..19},type=ds:pachinko3] at @s run damage @e[type=!item,tag=!Frames,family=!projectile,r=4.5,type=!ds:knockback,type=!ds:pachinko_impact1] 12 override 
execute as @s[scores={Deleter=5..19},type=ds:pachinko4] at @s run damage @e[type=!item,tag=!Frames,family=!projectile,r=4.5,type=!ds:knockback,type=!ds:pachinko_impact1] 18 override 
execute as @s[scores={Deleter=5..19}] at @s if entity @e[type=!item,tag=!Frames,family=!projectile,r=4.5,type=!ds:knockback,type=!ds:pachinko_impact1] run summon ds:knockback

execute as @s[type=ds:pachinko3] at @s run particle ds:gold_pachinko2
execute as @s[type=ds:pachinko4] at @s run particle ds:rainbow_pachinko2

function damages/blunt_damage

execute as @s[scores={Deleter=1..}] at @s run effect @e[type=!item,r=30] resistance 1 3 true
execute as @s[scores={Deleter=1..}] at @s run effect @e[type=!item,r=30] resistance 1 3 true
execute as @s[scores={Deleter=1..19}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={Deleter=1..19}] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={Deleter=1..19}] at @s run summon ds:lapse_explode ^^^-3
execute as @s[scores={Deleter=1..19}] at @s run summon ds:lapse_explode ^^^-4
execute as @s[scores={Deleter=1..19}] at @s run summon ds:lapse_explode ^^^-5

execute as @s[scores={Deleter=1..4},type=ds:pachinko1] at @s run particle ds:doorcrash_green1 ~~~
execute as @s[scores={Deleter=1..4},type=ds:pachinko1] at @s run particle ds:doorcrash_green2 ~~~
execute as @s[scores={Deleter=1..4},type=ds:pachinko1] at @s run particle ds:doorcrash_green3 ~~~

execute as @s[scores={Deleter=1..4},type=ds:pachinko2] at @s run particle ds:doorcrash_red1 ~~~
execute as @s[scores={Deleter=1..4},type=ds:pachinko2] at @s run particle ds:doorcrash_red2 ~~~
execute as @s[scores={Deleter=1..4},type=ds:pachinko2] at @s run particle ds:doorcrash_red3 ~~~

execute as @s[scores={Deleter=1..4},type=ds:pachinko3] at @s run particle ds:doorcrash_gold1 ~~~
execute as @s[scores={Deleter=1..4},type=ds:pachinko3] at @s run particle ds:doorcrash_gold2 ~~~
execute as @s[scores={Deleter=1..4},type=ds:pachinko3] at @s run particle ds:doorcrash_gold3 ~~~

execute as @s[scores={Deleter=1..4},type=ds:pachinko4] at @s run particle ds:doorcrash_rainbow1 ~~~
execute as @s[scores={Deleter=1..4},type=ds:pachinko4] at @s run particle ds:doorcrash_rainbow2 ~~~
execute as @s[scores={Deleter=1..4},type=ds:pachinko4] at @s run particle ds:doorcrash_rainbow3 ~~~

execute as @s[scores={Deleter=4}] at @s run playsound mob.magic2 @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={Deleter=4}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={Deleter=4}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.85 99999
execute as @s[scores={Deleter=4}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2 99999

execute as @s[scores={Deleter=1..19}] at @s run kill @e[type=item,r=7]
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact1 ~~~
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact2 ~~~
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact3 ~~~
execute as @s[scores={Deleter=1..4}] at @s run tp @s ~~-200~

