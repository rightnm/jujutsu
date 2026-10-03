execute as @s[name="Cargo Crate"] at @s run tp @s ^^^2
execute as @s[scores={Deleter=1..86}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=1..86}] at @s unless block ~~~ air run summon ds:red_reversal
execute as @s[scores={Deleter=1..86}] at @s unless block ~~~ air run summon ds:red_reversal
execute as @s[scores={Deleter=1..86}] at @s unless block ~~~ air run particle ds:crater3
execute as @s[scores={Deleter=1..86}] at @s unless block ~~~ air run particle ds:large_slam1 ~~~
execute as @s[scores={Deleter=1..86}] at @s unless block ~~~ air run particle ds:large_slam2 ~~~
execute as @s[scores={Deleter=1..86}] at @s unless block ~~~ air run particle ds:large_slam3 ~~~
execute as @s[scores={Deleter=1..86}] at @s unless block ~~~ air run particle ds:large_slam4 ~~~
execute as @s[scores={Deleter=1..86}] at @s unless block ~~~ air run camerashake add @a[r=40] 2 0.15
execute as @s[scores={Deleter=1..86}] at @s run kill @e[type=item,r=20]

tag @s add Frames
execute as @s[scores={Deleter=5..}] at @s run scoreboard players set @e[type=!item,tag=!Frames,family=!projectile,r=6,type=!ds:knockback,type=!ds:pachinko_impact1] Stun 30
execute as @s[scores={Deleter=5..}] at @s run scoreboard players add @e[type=!item,tag=!Frames,family=!projectile,r=6,type=!ds:knockback,type=!ds:pachinko_impact1] Evade 10
execute as @s[scores={Deleter=5..}] at @s run scoreboard players set @e[type=!item,tag=!Frames,family=!projectile,r=6,type=!ds:knockback,type=!ds:pachinko_impact1] knockdown 95
execute as @s[scores={Deleter=5..}] at @s run scoreboard players add @e[type=!item,tag=!Frames,family=!projectile,r=6,type=!ds:knockback,type=!ds:pachinko_impact1] Hit 3
execute as @s[scores={Deleter=5..},type=ds:cargo1] at @s run damage @e[type=!item,tag=!Frames,family=!projectile,r=6,type=!ds:knockback,type=!ds:pachinko_impact1] 10 override 
execute as @s[scores={Deleter=5..},type=ds:cargo2] at @s run damage @e[type=!item,tag=!Frames,family=!projectile,r=6,type=!ds:knockback,type=!ds:pachinko_impact1] 16 override 
execute as @s[scores={Deleter=5..},type=ds:cargo3] at @s run damage @e[type=!item,tag=!Frames,family=!projectile,r=6,type=!ds:knockback,type=!ds:pachinko_impact1] 24 override 
execute as @s[scores={Deleter=5..},type=ds:cargo4] at @s run damage @e[type=!item,tag=!Frames,family=!projectile,r=6,type=!ds:knockback,type=!ds:pachinko_impact1] 30 override 
execute as @s[scores={Deleter=5..}] at @s if entity @e[type=!item,tag=!Frames,family=!projectile,r=5,type=!ds:knockback,type=!ds:pachinko_impact1] run summon ds:knockback

execute as @s[type=ds:cargo3] at @s run particle ds:gold_cargo
execute as @s[type=ds:cargo4] at @s run particle ds:rainbow_cargo

function damages/blunt_damage


execute as @s[scores={Deleter=1..4},type=ds:cargo1] at @s run particle ds:doorcrash_green1 ~~~
execute as @s[scores={Deleter=1..4},type=ds:cargo1] at @s run particle ds:doorcrash_green2 ~~~
execute as @s[scores={Deleter=1..4},type=ds:cargo1] at @s run particle ds:doorcrash_green3 ~~~

execute as @s[scores={Deleter=1..4},type=ds:cargo2] at @s run particle ds:doorcrash_red1 ~~~
execute as @s[scores={Deleter=1..4},type=ds:cargo2] at @s run particle ds:doorcrash_red2 ~~~
execute as @s[scores={Deleter=1..4},type=ds:cargo2] at @s run particle ds:doorcrash_red3 ~~~

execute as @s[scores={Deleter=1..4},type=ds:cargo3] at @s run particle ds:doorcrash_gold1 ~~~
execute as @s[scores={Deleter=1..4},type=ds:cargo3] at @s run particle ds:doorcrash_gold2 ~~~
execute as @s[scores={Deleter=1..4},type=ds:cargo3] at @s run particle ds:doorcrash_gold3 ~~~

execute as @s[scores={Deleter=1..4},type=ds:cargo4] at @s run particle ds:doorcrash_rainbow1 ~~~
execute as @s[scores={Deleter=1..4},type=ds:cargo4] at @s run particle ds:doorcrash_rainbow2 ~~~
execute as @s[scores={Deleter=1..4},type=ds:cargo4] at @s run particle ds:doorcrash_rainbow3 ~~~

execute as @s[scores={Deleter=4}] at @s run playsound mob.magic2 @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={Deleter=4}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={Deleter=4}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.85 99999
execute as @s[scores={Deleter=4}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2 99999

execute as @s[scores={Deleter=1..}] at @s run kill @e[type=item,r=7]
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact1 ~~~
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact2 ~~~
execute as @s[scores={Deleter=1..4}] at @s run particle ds:heavy_impact3 ~~~
execute as @s[scores={Deleter=1..4}] at @s run tp @s ~~-200~

