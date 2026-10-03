playanimation @s[scores={move=10}] animation.point

tag @s[scores={move=1..2},tag=form2] remove form2

tag @s[scores={move=4..,Stun=1..},tag=form2] remove form2
playanimation @s[scores={move=4..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=4..,Stun=1..}] move 2

execute as @s[scores={move=4,forms=1..2}] at @s run summon ds:ember_insect ^2^1^
execute as @s[scores={move=4,forms=1..2}] at @s run summon ds:ember_insect ^1^1^0.5
execute as @s[scores={move=4,forms=1..2}] at @s run summon ds:ember_insect ^^1^1
execute as @s[scores={move=4,forms=1..2}] at @s run summon ds:ember_insect ^-1^1^0.5
execute as @s[scores={move=4,forms=1..2}] at @s run summon ds:ember_insect ^-2^1^1

execute as @s[scores={move=4,forms=3..5}] at @s run summon ds:ember_insect ^2^1^
execute as @s[scores={move=4,forms=3..5}] at @s run summon ds:ember_insect ^1.5^1^0.25
execute as @s[scores={move=4,forms=3..5}] at @s run summon ds:ember_insect ^1^1^0.5
execute as @s[scores={move=4,forms=3..5}] at @s run summon ds:ember_insect ^^1^1
execute as @s[scores={move=4,forms=3..5}] at @s run summon ds:ember_insect ^-1^1^0.5
execute as @s[scores={move=4,forms=3..5}] at @s run summon ds:ember_insect ^-1.5^1^0.25
execute as @s[scores={move=4,forms=3..5}] at @s run summon ds:ember_insect ^-2^1^1

execute as @s[scores={move=4,forms=6..}] at @s run summon ds:ember_insect ^2.25^1^-0.25
execute as @s[scores={move=4,forms=6..}] at @s run summon ds:ember_insect ^2^1^
execute as @s[scores={move=4,forms=6..}] at @s run summon ds:ember_insect ^1.5^1^0.25
execute as @s[scores={move=4,forms=6..}] at @s run summon ds:ember_insect ^1^1^0.5
execute as @s[scores={move=4,forms=6..}] at @s run summon ds:ember_insect ^^1^1
execute as @s[scores={move=4,forms=6..}] at @s run summon ds:ember_insect ^-1^1^0.5
execute as @s[scores={move=4,forms=6..}] at @s run summon ds:ember_insect ^-1.5^1^0.25
execute as @s[scores={move=4,forms=6..}] at @s run summon ds:ember_insect ^-2^1^1
execute as @s[scores={move=4,forms=6..}] at @s run summon ds:ember_insect ^2.25^1^-0.25

execute as @s[scores={move=3}] at @s run execute as @e[type=ds:ember_insect,r=5,c=9] at @s run particle ds:fire_hit2
execute as @s[scores={move=3}] at @s run execute as @e[type=ds:ember_insect,r=5,c=9] at @s run particle ds:fire_hit4
execute as @s[scores={move=3}] at @s run execute as @e[type=ds:ember_insect,r=5,c=9] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 0.2 1.6
execute as @s[scores={move=3}] at @s run camerashake add @a[r=30] 2 0.15
execute as @s[scores={move=1..3}] at @s run scoreboard players set @e[type=ds:ember_insect,r=15,c=9] Deleter 200

