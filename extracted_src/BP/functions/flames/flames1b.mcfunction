playanimation @s[scores={move=30}] animation.firewall

tag @s[scores={move=1..2},tag=form1b] remove form1b

tag @s[scores={move=18..,Stun=1..},tag=form1b] remove form1b
playanimation @s[scores={move=18..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=18..,Stun=1..}] move 0

scoreboard players set @s[scores={move=11..}] Move 4
scoreboard players set @s[scores={move=18..21}] Camera 4

execute as @s[scores={move=16..20}] at @s run tp @s @s

execute as @s[scores={move=18}] at @s run  playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.9 9999
execute as @s[scores={move=18}] at @s run  playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.75 9999
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^1.5 run effect @a[r=20] night_vision 1 1 true
execute as @s[scores={move=18}] at @s run summon ds:projectile ^^1^1 facing ^^1^20 none firewall
execute as @s[scores={move=16..18}] at @s run scoreboard players set @e[name=firewall,c=1,r=10] Deleter 120