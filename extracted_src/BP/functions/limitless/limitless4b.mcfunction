playanimation @s[scores={move=14}] animation.spacial_blitz

execute as @s[scores={move=15}] at @s run tp @s @s



tag @s[scores={move=11..,Stun=1..}] remove form4b
scoreboard players set @s[scores={move=11..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Frames 4

execute as @s[scores={move=10}] at @s run playsound music.distort3 @a ~~~ 9999 0.5 9999
execute as @s[scores={move=10}] at @s run playsound beacon.deactivate @a ~~~ 9999 0.5 9999
execute as @s[scores={move=5..10}] at @s run playsound random.fizz @a ~~~ 9999 0.45 9999
execute as @s[scores={move=5..10}] at @s run playsound random.fizz @a ~~~ 9999 0.75 9999

execute as @s[scores={move=9}] at @s run camerashake add @a[r=40] 0.1 0.15
execute as @s[scores={move=9}] at @s run particle ds:spacial_blitz1 ~~1~
execute as @s[scores={move=9}] at @s run particle ds:spacial_blitz2 ~~1~
execute as @s[scores={move=9}] at @s run particle ds:spacial_blitz3 ~~1~

execute as @s[scores={move=2..8}] at @s run function damages/fire_damage

execute as @s[scores={move=2..8}] at @s run tp @s ~~~
execute as @s[scores={move=2..8}] at @s run execute as @e[r=30,tag=!Frames] at @s run tp @s
execute as @s[scores={move=2..8}] at @s run execute as @e[r=30,tag=!Frames] at @s run tp @s ~~~ facing @p[scores={move=1..14}]
execute as @s[scores={move=2..8}] at @s run damage @e[r=30,tag=!Frames] 4 override
execute as @s[scores={move=2..8}] at @s run scoreboard players add @e[r=30,tag=!Frames] Hit 3
execute as @s[scores={move=2..8}] at @s run scoreboard players set @e[r=30,tag=!Frames] Stun 15
execute as @s[scores={move=2..8}] at @s run scoreboard players add @e[r=30,tag=!Frames] Evade 4

tag @e[scores={move=1..2}] remove form4b