playanimation @s[scores={move=51}] animation.rock_kick
tag @s[scores={move=1..2}] remove form11

tag @s[scores={move=56..,Stun=1..}] remove form11
scoreboard players set @s[scores={move=56..,Stun=1..}] move 0

scoreboard players set @s[scores={move=15..49}] Frames 4
scoreboard players set @s[scores={move=35..}] Move 4
scoreboard players set @s[scores={move=45..}] Camera 4

execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.6 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=100] ~~~ 99999 0.45 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.46 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:ground_slam1
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:ground_slam2
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:ground_slam3
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:ground_slam4
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:large_slam2
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:crater3
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run particle ds:leap
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air run camerashake add @a[r=20] 3 0.3
execute as @s[scores={move=46}] at @s unless block ~~-0.25~ air positioned ^^^1.5 run summon ds:rocktoss "a rock"
execute as @s[scores={move=45..46}] at @s unless block ~~-0.25~ air positioned ^^^1 run scoreboard players set @e[type=ds:rocktoss,c=1,name="a rock"] Deleter 45

execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run playsound random.explode @a[r=100] ~~~ 99999 1.6 99999
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run playsound random.explode @a[r=100] ~~~ 99999 1.45 99999
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=35}] at @s positioned ^^1^1.5 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run particle ds:heavy_impact1
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run particle ds:heavy_impact2
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run particle ds:heavy_impact3
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run particle ds:heavy_impact5
execute as @s[scores={move=35}] at @s positioned ^^1^0.95 run camerashake add @a[r=10] 3 0.25


execute as @s[scores={move=36..40}] at @s run tp @e[name="a rock",c=1] ^^1^1.5 facing ^^^25

execute as @s[scores={move=36}] at @s positioned ^ ^5 ^40 run summon armor_stand "ARockTRG"
execute as @s[scores={move=35..36}] at @s positioned ^ ^5 ^40 run scoreboard players set @e[name="ARockTRG",c=1] Deleter 35

execute as @e[name="a rock",c=1,scores={Deleter=40..}] at @s run tp @s ~~0.15~
execute as @e[name="a rock",c=1] at @s run tp @s ^^^2 facing @e[name="ARockTRG",c=1]

execute as @e[name="a rock",c=1] at @s if entity @e[name=ARockTRG,r=5] run tp @s ~~-30~

execute as @e[name="a rock",c=1] at @s unless block ~~~ air run summon ds:lapse_explode
execute as @e[name="a rock",c=1] at @s unless block ~~~ air run kill @e[type=item,r=10]
execute as @e[name="a rock",c=1,scores={Deleter=5..}] at @s unless block ~~~ air run scoreboard players set @s Deleter 4

execute as @e[name="a rock",c=1] at @s if entity @e[name=ARockTRG,c=1] run damage @e[tag=!Frames,type=!ds:rocktoss,r=2.5] 8 override entity @s
execute as @e[name="a rock",c=1] at @s  if entity @e[name=ARockTRG,c=1] run scoreboard players add @e[tag=!Frames,type=!ds:rocktoss,r=2.5] Evade 8
execute as @e[name="a rock",c=1] at @s  if entity @e[name=ARockTRG,c=1] run scoreboard players set @e[tag=!Frames,type=!ds:rocktoss,r=2.5] Stun 25
execute as @e[name="a rock",c=1] at @s  if entity @e[name=ARockTRG,c=1] run scoreboard players set @e[tag=!Frames,type=!ds:rocktoss,r=2.5] Hit 4
execute as @e[name="a rock",c=1] at @s if entity @e[name=ARockTRG,c=1]  if entity @e[tag=!Frames,type=!ds:rocktoss,r=2.5] run summon ds:knockback
execute as @e[name="a rock",c=1] at @s  if entity @e[name=ARockTRG,c=1] run particle ds:ground_slam2