playanimation @s[scores={move=25}] animation.gatling

effect @s[scores={move=15..}] slowness 1 2 true
effect @s[scores={move=1..3}] slowness 0 20 true

tag @s[scores={move=1..2},tag=form3c] remove form3c

tag @s[scores={move=22..,Stun=1..},tag=form3c] remove form3c
playanimation @s[scores={move=22..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=22..,Stun=1..}] move 0

scoreboard players set @s[scores={move=5..22}] Frames 4
execute as @s[scores={move=5..22}] at @s anchored eyes positioned ^^-0.3^3.6 run playsound mob.blasted1 @a[r=400] ~~~ 9999 2.4 9999
execute as @s[scores={move=1}] at @s anchored eyes positioned ^^-0.3^3.6 run playsound mob.blasted1 @a[r=400] ~~~ 9999 1.2 9999

execute as @s[scores={move=20}] at @s anchored eyes positioned ^^-0.3^3.5 run function flames/gatling
execute as @s[scores={move=17}] at @s anchored eyes positioned ^^-0.3^3.5 run function flames/gatling
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^-0.3^3.5 run function flames/gatling
execute as @s[scores={move=11}] at @s anchored eyes positioned ^^-0.3^3.5 run function flames/gatling
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^3.5 run function flames/gatling
execute as @s[scores={move=8}] at @s anchored eyes positioned ^^-0.3^3.5 run function flames/gatling
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^-0.3^3.5 run function flames/gatling
execute as @s[scores={move=5..20}] at @s anchored eyes positioned ^^-0.3^3.5 run camerashake add @a[r=20] 0.075 0.08