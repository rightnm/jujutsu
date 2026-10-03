playanimation @s[scores={move=35}] animation.lovetrain.pachinko_strike


execute as @s[scores={move=34}] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={move=34},tag=gambler] at @s run scoreboard players random @s chance 41 100
execute as @s[scores={move=1..11}] at @s run scoreboard players set @s chance 0

event entity @s[scores={move=3..33,chance=1..40}] pachinkohand1
event entity @s[scores={move=3..33,chance=41..70}] pachinkohand2
event entity @s[scores={move=3..33,chance=71..90}] pachinkohand3
event entity @s[scores={move=3..33,chance=91..}] pachinkohand4

execute as @s[scores={move=32,chance=1..40}] at @s run particle ds:doorcrash_green2 ^^0.35^0.4
execute as @s[scores={move=32,chance=1..40}] at @s run particle ds:doorcrash_green3 ^^0.35^0.4
execute as @s[scores={move=32,chance=1..40}] at @s run playsound mob.magic2 @a ~~~ 1 1.3
execute as @s[scores={move=32,chance=41..70}] at @s run particle ds:doorcrash_red2 ^^0.35^0.4
execute as @s[scores={move=32,chance=41..70}] at @s run particle ds:doorcrash_red3 ^^0.35^0.4
execute as @s[scores={move=32,chance=41..70}] at @s run playsound mob.magic2 @a ~~~ 1 1.15
execute as @s[scores={move=32,chance=71..90}] at @s run particle ds:doorcrash_gold2 ^^0.35^0.4
execute as @s[scores={move=32,chance=71..90}] at @s run particle ds:doorcrash_gold3 ^^0.35^0.4
execute as @s[scores={move=32,chance=71..90}] at @s run playsound mob.magic4 @a ~~~ 1 0.8
execute as @s[scores={move=32,chance=91..}] at @s run particle ds:doorcrash_rainbow2 ^^0.35^0.4
execute as @s[scores={move=32,chance=91..}] at @s run particle ds:doorcrash_rainbow3 ^^0.35^0.4
execute as @s[scores={move=32,chance=91..}] at @s run playsound mob.magic4 @a ~~~ 1 0.5

execute as @s[scores={move=32}] at @s run camerashake add @a[r=10] 2 0.15

event entity @s[scores={Stun=1..}] pachinkotextureoff
event entity @s[scores={move=1..12}] pachinkotextureoff

scoreboard players add @s[scores={move=32,chance=41..70}] fever 1
scoreboard players add @s[scores={move=32,chance=71..90}] fever 3 
scoreboard players add @s[scores={move=32,chance=91..100}] fever 5


tag @s[scores={move=1..2}] remove form2




scoreboard players set @s[scores={move=11..32}] Frames 7

execute as @s[scores={move=30}] at @s run summon ds:dash ^^^-0.1
execute as @s[scores={move=30}] at @s run effect @s speed 1 16 true
execute as @s[scores={move=30}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=30}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=30}] at @s run particle ds:evade3 ~~~

execute as @s[scores={move=21}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=21}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=21}] at @s run particle ds:evade3 ~~~



execute as @s[scores={move=19}] at @s run tp @s ~~~
execute as @s[scores={move=21..25}] at @s run effect @s slowness 1 2 true
execute as @s[scores={move=1..20}] at @s run effect @s slowness 1 2 true
execute as @s[scores={move=1..25}] at @s run effect @s speed 0 20 true
scoreboard players set @s[scores={move=5..19}] Move 5
scoreboard players set @s[scores={move=5..19}] Camera 5

execute as @s[scores={move=12..14,chance=1..40}] at @s run function damages/blunt_damage

execute as @s[scores={move=12..14,chance=1..40}] at @s run particle ds:doorcrash_green1 ^^^
execute as @s[scores={move=12..14,chance=1..40}] at @s run particle ds:doorcrash_green2 ^^^
execute as @s[scores={move=12..14,chance=1..40}] at @s run particle ds:doorcrash_green3 ^^^
execute as @s[scores={move=14,chance=1..40}] at @s run particle ds:pachinkostrike_green1 ^^^
execute as @s[scores={move=14,chance=1..40}] at @s run particle ds:pachinkostrike_green2 ^^^
execute as @s[scores={move=14,chance=1..40}] at @s run damage @e[tag=!Frames,r=4.25,type=!item] 9

execute as @s[scores={move=12..14,chance=41..70}] at @s run particle ds:doorcrash_red1 ^^^
execute as @s[scores={move=12..14,chance=41..70}] at @s run particle ds:doorcrash_red2 ^^^
execute as @s[scores={move=12..14,chance=41..70}] at @s run particle ds:doorcrash_red3 ^^^
execute as @s[scores={move=14,chance=41..70}] at @s run particle ds:pachinkostrike_red1 ^^^
execute as @s[scores={move=14,chance=41..70}] at @s run particle ds:pachinkostrike_red2 ^^^
execute as @s[scores={move=14,chance=41..70}] at @s run damage @e[tag=!Frames,r=4.25,type=!item] 14

execute as @s[scores={move=12..14,chance=71..90}] at @s run particle ds:doorcrash_gold1 ^^^
execute as @s[scores={move=12..14,chance=71..90}] at @s run particle ds:doorcrash_gold2 ^^^
execute as @s[scores={move=12..14,chance=71..90}] at @s run particle ds:doorcrash_gold3 ^^^
execute as @s[scores={move=14,chance=71..90}] at @s run particle ds:pachinkostrike_gold1 ^^^
execute as @s[scores={move=14,chance=71..90}] at @s run particle ds:pachinkostrike_gold2 ^^^
execute as @s[scores={move=14,chance=71..90}] at @s run damage @e[tag=!Frames,r=4.25,type=!item] 20

execute as @s[scores={move=12..14,chance=91..}] at @s run particle ds:doorcrash_rainbow1 ^^^
execute as @s[scores={move=12..14,chance=91..}] at @s run particle ds:doorcrash_rainbow2 ^^^
execute as @s[scores={move=12..14,chance=91..}] at @s run particle ds:doorcrash_rainbow3 ^^^
execute as @s[scores={move=14,chance=91..}] at @s run particle ds:pachinkostrike_rainbow1 ^^^
execute as @s[scores={move=14,chance=91..}] at @s run particle ds:pachinkostrike_rainbow2 ^^^
execute as @s[scores={move=14,chance=91..}] at @s run damage @e[tag=!Frames,r=4.25,type=!item] 27
execute as @s[scores={move=14}] at @s run particle ds:ground_slam1
execute as @s[scores={move=14}] at @s run particle ds:ground_slam2
execute as @s[scores={move=14}] at @s run particle ds:ground_slam3
execute as @s[scores={move=14}] at @s run particle ds:ground_slam4
execute as @s[scores={move=14}] at @s run particle ds:leap
execute as @s[scores={move=14}] at @s run particle ds:heavy_impact1
execute as @s[scores={move=14}] at @s run particle ds:heavy_impact2
execute as @s[scores={move=14}] at @s run particle ds:heavy_impact3
execute as @s[scores={move=14}] at @s run particle ds:rubble3
execute as @s[scores={move=14}] at @s run particle ds:crater2

execute as @s[scores={move=1..14}] at @s run tp @s ~~~
execute as @s[scores={move=14}] at @s run scoreboard players set @e[tag=!Frames,type=!item,r=4.25] knock 25
execute as @s[scores={move=14}] at @s run scoreboard players set @e[tag=!Frames,type=!item,r=4.25] knockdown 40
execute as @s[scores={move=14}] at @s run scoreboard players add @e[tag=!Frames,type=!item,r=4.25] Hit 3
execute as @s[scores={move=14}] at @s run scoreboard players add @e[tag=!Frames,type=!item,r=4.25] Evade 25
execute as @s[scores={move=14}] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=14}] at @s run playsound random.explode @a[r=120] ~~~ 99999 0.25 99999
execute as @s[scores={move=14}] at @s run playsound random.explode @a[r=120] ~~~ 99999 0.45 99999
execute as @s[scores={move=14}] at @s run playsound mob.wither.break_block @a[r=120] ~~~ 99999 0.5 99999
execute as @s[scores={move=14}] at @s run playsound mob.magic3 @a[r=120] ~~~ 99999 0.65 99999