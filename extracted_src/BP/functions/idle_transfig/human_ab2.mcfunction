playanimation @s[scores={move=30..31}] animation.mahito.human_ab2

tag @s[scores={move=1..2},tag=form9] remove form9

tag @s[scores={move=26..,Stun=1..},tag=form9] remove form9
playanimation @s[scores={move=26..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=26..,Stun=1..}] move 0


execute as @s[scores={move=30}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 0.5 99999
execute as @s[scores={move=26..29}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1.25 999990

execute as @s[scores={move=6..8}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1.25 99999


execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1 run playsound mob.glock @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=33] 0.4 0.150
execute as @s[scores={move=20}] at @s run scriptevent ds:transfigured_bullet
execute as @s[scores={move=20},tag=!creative] at @s run scriptevent ds:remove_humans 1


execute as @s[scores={move=16}] at @s anchored eyes positioned ^^^1 run playsound mob.glock @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=16}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=33] 0.4 0.150
execute as @s[scores={move=16}] at @s run scriptevent ds:transfigured_bullet
execute as @s[scores={move=16},tag=!creative] at @s run scriptevent ds:remove_humans 1

execute as @s[scores={move=11}] at @s anchored eyes positioned ^^^1 run playsound mob.glock @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=11}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=33] 0.4 0.150
execute as @s[scores={move=11}] at @s run scriptevent ds:transfigured_bullet
execute as @s[scores={move=11},tag=!creative] at @s run scriptevent ds:remove_humans 1

