execute as @s[name="Pachinko Ball"] at @s run tp @s ^^^1.33 facing @e[name=PachinkoTRG,c=1]
execute as @s[name="Pachinko Ball"] at @s run tp @s ^^^1.33 facing @e[name=PachinkoTRG,c=1]

execute as @s[scores={Deleter=5..}] at @s run scoreboard players set @e[tag=!Frames,type=!item,family=!projectile,r=2,type=!ds:knockback,type=!ds:pachinko_impact1] Stun 20
execute as @s[scores={Deleter=5..}] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,r=2,type=!ds:knockback,type=!ds:pachinko_impact1] Evade 10
execute as @s[scores={Deleter=5..}] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,r=2,type=!ds:knockback,type=!ds:pachinko_impact1] Hit 3
execute as @s[scores={Deleter=5..},type=ds:pachinko1] at @s run damage @e[tag=!Frames,type=!item,family=!projectile,r=2,type=!ds:knockback,type=!ds:pachinko_impact1] 2 override 
execute as @s[scores={Deleter=5..},type=ds:pachinko2] at @s run damage @e[tag=!Frames,type=!item,family=!projectile,r=2,type=!ds:knockback,type=!ds:pachinko_impact1] 4 override 
execute as @s[scores={Deleter=5..},type=ds:pachinko3] at @s run damage @e[tag=!Frames,type=!item,family=!projectile,r=2,type=!ds:knockback,type=!ds:pachinko_impact1] 10 override 
execute as @s[scores={Deleter=5..},type=ds:pachinko4] at @s run damage @e[tag=!Frames,type=!item,family=!projectile,r=2,type=!ds:knockback,type=!ds:pachinko_impact1] 15 override 
execute as @s[scores={Deleter=5..}] at @s if entity @e[tag=!Frames,type=!item,family=!projectile,r=2,type=!ds:knockback,type=!ds:pachinko_impact1] run summon ds:knockback
execute as @s[scores={Deleter=5..}] at @s if entity @e[tag=!Frames,type=!item,family=!projectile,r=2,type=!ds:knockback,type=!ds:pachinko_impact1] run scoreboard players set @s Deleter 4

function damages/blunt_damage

execute as @s[type=ds:pachinko3] at @s run particle ds:gold_pachinko
execute as @s[type=ds:pachinko4] at @s run particle ds:rainbow_pachinko

execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:ground_slam1 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:ground_slam2 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:ground_slam3 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:rubble3 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run summon ds:pachinko_impact1
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run scoreboard players set @s Deleter 4

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

execute as @s[scores={Deleter=1..4}] at @s run kill @e[type=item,r=7]
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact1 ~~~
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact2 ~~~
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact3 ~~~
execute as @s[scores={Deleter=1..4}] at @s run tp @s ~~-200~

