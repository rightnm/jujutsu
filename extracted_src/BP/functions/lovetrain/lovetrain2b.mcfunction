playanimation @s[scores={move=20}] animation.lovetrain.pachinko_rush

scoreboard players set @s[scores={move=3..}] Move 5

tag @s[scores={move=1..2}] remove form2b

tag @s[scores={move=16..,Stun=1..}] remove form2b
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0


execute as @s[scores={move=14..16}] at @s run tp @s ~~~
execute as @s[scores={move=18}] at @s run scoreboard objectives add luck dummy
execute as @s[scores={move=11..17}] at @s run scoreboard players random @s luck 1 100
execute as @s[scores={move=11..17},tag=gambler] at @s run scoreboard players random @s luck 41 100

scoreboard players set @s[scores={move=11..17}] Frames 7
execute as @s[scores={move=11..16,luck=1..40}] at @s run summon ds:pachinko1 ^^1^0.25 facing ^^^20 none "Pachinko Ball"
execute as @s[scores={move=11..16,luck=41..70}] at @s run summon ds:pachinko2 ^^1^0.25 facing ^^^20 none "Pachinko Ball"
execute as @s[scores={move=11..16,luck=71..90}] at @s run summon ds:pachinko3 ^^1^0.25 facing ^^^20 none "Pachinko Ball"
execute as @s[scores={move=11..16,luck=91..100}] at @s run summon ds:pachinko4 ^^1^0.25 facing ^^^20 none "Pachinko Ball"

execute as @s[scores={move=7}] at @s run summon ds:projectile  "PachinkoTRG" ^^1^50 
execute as @s[scores={move=10..16}] at @s run scoreboard players set @e[name="Pachinko Ball",r=10] Deleter 25
execute as @s[scores={move=6..7}] at @s positioned ^^^50   run scoreboard players set @e[name="PachinkoTRG",c=1] Deleter 25

scoreboard objectives add LeftMove dummy
scoreboard objectives add RightMove dummy
scoreboard objectives add UpMove dummy
scoreboard players remove @e[scores={LeftMove=1..}] LeftMove 1
execute as @e[family=projectile,type=!item,scores={LeftMove=1..}] at @s run tp @s ^0.41 ^ ^
execute as @e[family=projectile,type=!item,scores={LeftMove=1..}] at @s run tp @s ^0.41 ^ ^
scoreboard players remove @e[scores={RightMove=1..}] RightMove 1
execute as @e[family=projectile,type=!item,scores={RightMove=1..}] at @s run tp @s ^-0.41 ^ ^
execute as @e[family=projectile,type=!item,scores={RightMove=1..}] at @s run tp @s ^-0.41 ^ ^
scoreboard players remove @e[scores={UpMove=1..}] UpMove 1
execute as @e[family=projectile,type=!item,scores={UpMove=1..}] at @s run tp @s ^ ^0.61 ^
execute as @e[family=projectile,type=!item,scores={UpMove=1..}] at @s run tp @s ^ ^0.61 ^

execute as @s[scores={move=11..14,luck=1..40}] at @s run scoreboard players random @e[name="Pachinko Ball",r=10] UpMove 1 3
execute as @s[scores={move=11..14,luck=1..40}] at @s run scoreboard players random @e[name="Pachinko Ball",r=10] LeftMove 1 3
execute as @s[scores={move=11..14,luck=1..40}] at @s run scoreboard players random @e[name="Pachinko Ball",r=10] RightMove 1 3
execute as @s[scores={move=11..16,luck=1..40}] at @s run  particle ds:doorcrash_green2 ^^1^1
execute as @s[scores={move=11..16,luck=1..40}] at @s run  particle ds:doorcrash_green3 ^^1^1
execute as @s[scores={move=11..16,luck=1..40}] at @s run  playsound mob.magic2 @a ~~~ 1 1.3
execute as @s[scores={move=11..16,luck=41..70}] at @s run particle ds:doorcrash_red2 ^^1^1
execute as @s[scores={move=11..16,luck=41..70}] at @s run particle ds:doorcrash_red3 ^^1^1
execute as @s[scores={move=11..16,luck=41..70}] at @s run  playsound mob.magic2 @a ~~~ 1 1.15
execute as @s[scores={move=11..16,luck=71..90}] at @s run particle ds:doorcrash_gold2 ^^1^1
execute as @s[scores={move=11..16,luck=71..90}] at @s run particle ds:doorcrash_gold3 ^^1^1
execute as @s[scores={move=11..16,luck=71..90}] at @s run playsound mob.magic4 @a ~~~ 1 0.8
execute as @s[scores={move=11..16,luck=91..}] at @s run particle ds:doorcrash_rainbow2 ^^1^1
execute as @s[scores={move=11..16,luck=91..}] at @s run particle ds:doorcrash_rainbow3 ^^1^1
execute as @s[scores={move=11..16,luck=91..}] at @s run playsound mob.magic4 @a ~~~ 1 0.5

execute as @s[scores={move=11,luck=91..}] at @s run playsound mob.wither.shoot @a ~~~ 1 1.5



scoreboard players add @s[scores={move=16,luck=41..70}] fever 1
scoreboard players add @s[scores={move=16,luck=71..90}] fever 3 
scoreboard players add @s[scores={move=16,luck=91..100}] fever 5
