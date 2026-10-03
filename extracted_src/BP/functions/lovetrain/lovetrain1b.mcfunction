playanimation @s[scores={move=20}] animation.lovetrain.shutter_doors1

scoreboard players set @s[scores={move=3..}] Move 5

tag @s[scores={move=1..2}] remove form1b

tag @s[scores={move=16..,Stun=1..}] remove form1b
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

execute as @s[scores={move=19}] at @s run playsound mob.wither.shoot @a ~~~ 1 1.4

execute as @s[scores={move=14..16}] at @s run tp @s ~~~
execute as @s[scores={move=17}] at @s run scoreboard players random @s luck 1 100
execute as @s[scores={move=17},tag=gambler] at @s run scoreboard players random @s luck 41 100

execute as @s[scores={move=16,luck=1..40}] at @s positioned ^^^12 run execute as @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,type=!armor_stand,type=!ds:projectile,r=11.99,c=2] at @s run summon ds:shutterdoors1  "Shutter Doors" ~~1~
execute as @s[scores={move=16,luck=41..70}] at @s positioned ^^^12  run execute as @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,type=!armor_stand,type=!ds:projectile,r=11.99,c=2] at @s run  summon ds:shutterdoors2  "Shutter Doors" ~~1~
execute as @s[scores={move=16,luck=71..90}] at @s positioned ^^^12  run execute as @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,type=!armor_stand,type=!ds:projectile,r=11.99,c=2] at @s run  summon ds:shutterdoors3  "Shutter Doors" ~~1~
execute as @s[scores={move=16,luck=91..100}] at @s positioned ^^^12  run execute as @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,type=!armor_stand,type=!ds:projectile,r=11.99,c=2] at @s run summon ds:shutterdoors4  "Shutter Doors" ~~1~
execute as @s[scores={move=16,luck=1..100}] at @s positioned ^^^12  run execute as @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,type=!armor_stand,type=!ds:projectile,r=11.99,c=2] at @s run scoreboard players set @e[name="Shutter Doors",c=2] Deleter 55
execute as @s[scores={move=16,luck=1..100}] at @s positioned ^^^12  run execute as @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,type=!armor_stand,type=!ds:projectile,r=11.99,c=2] at @s run tag @e[name="Shutter Doors",c=2] add closing
execute as @s[scores={move=16,luck=1..100}] at @s positioned ^^^12  run execute as @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,type=!armor_stand,type=!ds:projectile,r=11.99,c=2] at @s run tag @e[name="Shutter Doors",c=2] add closing2

execute as @s[scores={move=11,luck=1..}] at @s run playsound random.anvil_land @a ~~~ 1 0.94

scoreboard players add @s[scores={move=16,luck=41..70}] fever 1
scoreboard players add @s[scores={move=16,luck=71..90}] fever 3 
scoreboard players add @s[scores={move=16,luck=91..100}] fever 5
