playanimation @s[scores={move=34..}] animation.todo.rock_throw

scoreboard players set @s[scores={move=10..}] Move 11

scoreboard players set @s[scores={move=4..17}] move 3

playanimation @s[scores={move=21..,Stun=1..}] animation.cancel
scoreboard players set @s[scores={move=21..,Stun=1..}] move 3

event entity @s[scores={move=34..}] pebble_on
event entity @s[scores={move=18..20}] heart_off

tag @s[scores={move=1..3}] remove form4

execute as @s[scores={move=34}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 99999 1.5 99999
execute as @s[scores={move=28}] at @s run playsound dig.ancient_debris @a[r=25] ~~~ 99999 0.95 99999

tag @s[scores={move=20..21}] add pebblethrown
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1 run scriptevent ds:pebble
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1 run playsound mob.wither.shoot @a[r=25] ~~~ 99999 2.25 99999
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1 run playsound mob.witch.throw @a[r=25] ~~~ 99999 1.25 99999
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1 run playsound mob.blaze.shoot @a[r=25] ~~~ 99999 2.25 99999
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1 run camerashake add @s 0.2 0.15
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1 run particle ds:large_impact1


