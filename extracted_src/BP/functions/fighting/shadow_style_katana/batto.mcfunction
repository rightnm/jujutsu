playanimation @s[scores={move=39..}] animation.shadow_katana.ab1

tag @s[scores={move=1..2}] remove wep1

tag @s[scores={move=31..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=31..,Stun=1..}] move 0

scoreboard players set @s[scores={move=24..32}] Frames 7
scoreboard players set @s[scores={move=11..32}] Move 7
scoreboard players set @s[scores={move=21..30}] Camera 7

execute as @s[scores={move=26..31}] at @s run scriptevent ds:knockback 12
execute as @s[scores={move=17..21}] at @s run tp @s @s

scoreboard players random @s[scores={move=30}] blackflashchance 1 269
scoreboard players set @s[scores={move=30},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=25}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=26..31}] atk 2

event entity @s[scores={move=20..31}] katana2_sheathdown
event entity @s[scores={move=1..10}] katana2_sheathed

execute as @s[scores={move=20..31}] at @s run execute as @e[tag=!Frames,r=3.99] at @s run tp @s ~~~ facing @e[scores={move=20..31},c=1]

execute as @s[scores={move=31}] at @s run summon ds:projectile ^^0.25^1 facing ^^0.25^20 none batto 
execute as @s[scores={move=30..31}] at @s run scoreboard players set @e[name=batto,c=1] Deleter 15
execute as @s[scores={move=29..30}] at @s run playanimation @e[name=batto,c=1] animation.batto_draw
execute as @s[scores={move=15..30}] at @s run execute as @e[name=batto,c=1,scores={Deleter=0..5}] at @s run tp @s ~~-100~

effect @s[scores={move=30}] speed 1 30 true
effect @s[scores={move=20..25}] speed 0 50 true

execute as @s[scores={move=26..30}] at @s run scoreboard players set @e[tag=!Frames,r=3.99,tag=!battoslashed] Stun 30
execute as @s[scores={move=26..30}] at @s run scoreboard players add @e[tag=!Frames,r=3.99,tag=!battoslashed] Hit 7
execute as @s[scores={move=26..30}] at @s if entity @e[tag=!Frames,r=3.99,tag=!battoslashed] run playsound mob.sword @a ~~~ 1 0.85
execute as @s[scores={move=26..30}] at @s if entity @e[tag=!Frames,r=3.99,tag=!battoslashed] run playsound mob.slash1 @a ~~~ 1 1.15
execute as @s[scores={move=26..30}] at @s run scoreboard players operation @e[tag=!Frames,r=3.99,tag=!battoslashed] damagehalf += @s damageadd
execute as @s[scores={move=26..30}] at @s run scoreboard players add @e[tag=!Frames,r=3.99,tag=!battoslashed] Evade 30
execute as @s[scores={move=26..30}] at @s run damage @e[tag=!Frames,r=3.99,tag=!battoslashed] 30 entity_attack entity @s
execute as @s[scores={move=26..30}] at @s run tag @e[tag=!Frames,r=3.99] add battoslashed

execute as @s[scores={move=15..20}] at @s run tag @e[tag=battoslashed] remove battoslashed

execute as @s[scores={move=15..}] at @s run tp @e[type=ds:simple_domain,c=1] ~~~

execute as @s[scores={move=30}] at @s positioned ^^1^5 run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=30}] at @s positioned ^^1^5 run playsound  mob.wither.shoot @a ~~~ 0.2 0.4 


execute as @s[scores={move=26..30}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1
execute as @s[scores={move=26..30}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=26..30}] at @s positioned ^^1^1 run particle ds:ground_slam3
