



playanimation @a[scores={move=22}] animation.flash_strike

scoreboard players set @a[scores={move=15..,Stun=1..}] move 0
execute as @a[scores={move=1..14}] at @s run tp @s ~~~
execute as @a[scores={move=13}] at @s run tag @s add Frames
execute as @a[scores={move=1..2}] at @s run tag @s remove Frames


execute as @a[scores={move=5..12}] at @s if block ^^^1 air run tp @s ^^^0.75
execute as @a[scores={move=5..12}] at @s if block ^^^1 air run tp @s ^^^0.75
execute as @a[scores={move=5..12}] at @s if block ^^^1 air run tp @s ^^^0.75
execute as @a[scores={move=5..12}] at @s if block ^^^1 air run tp @s ^^^0.75
execute as @a[scores={move=5..12}] at @s if block ^^^1 air run playsound mob.wither.shoot @a ^^1^1 0.25 1.25
execute as @a[scores={move=5..12}] at @s if block ^^^1 air run playsound mob.wither.hurt @a ^^1^1 0.25 1.75
execute as @a[scores={move=12}] at @s if block ^^^1 air run playsound random.explode @a ~~~ 1 1.5
execute as @a[scores={move=12}] at @s if block ^^^1 air run camerashake add @a[r=20] 3 0.25
execute as @a[scores={move=12}] at @s if block ^^^1 air run effect @a[r=20] night_vision 1 1 true
execute as @a[scores={move=5..2}] at @s if block ^^^1 air run effect @a[r=20] night_vision 0 10 true
execute as @a[scores={move=5..12}] at @s run damage @e[r=5,tag=!Frames] 15
execute as @a[scores={move=5..12}] at @s run scoreboard players set @e[r=5,tag=!Frames] Stun 10
execute as @a[scores={move=5..12}] at @s run scoreboard players add @e[r=5,tag=!Frames] Evade 20
execute as @a[scores={move=5..12}] at @s run scoreboard players add @e[r=5,tag=!Frames] Hit 5
execute as @a[scores={move=5..12}] at @s if block ^^^1 air run particle ds:flash_strike1 ~~1~
execute as @a[scores={move=5..12}] at @s if block ^^^1 air run particle ds:flash_strike2 ~~1~
execute as @a[scores={move=5..12}] at @s if block ^^^1 air run particle ds:flash_strike3 ~~1~


tag @s[scores={move=1..3}] remove wep4

