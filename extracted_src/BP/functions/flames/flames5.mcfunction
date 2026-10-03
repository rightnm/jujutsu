playanimation @s[scores={move=20}] animation.point

tag @s[scores={move=1..2},tag=form5] remove form5

tag @s[scores={move=10..,Stun=1..},tag=form5] remove form5
playanimation @s[scores={move=10..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=10..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4

execute as @s[scores={move=10}] at @s run summon ds:lava_wave ^^1^1 facing ^^1^20 none "Molten Wave"
execute as @s[scores={move=9..10}] at @s if entity @e[family=damage,tag=DomainExpansion,r=50,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] run tag @e[type=ds:lava_wave,c=1,r=20] add lavaoff
execute as @s[scores={move=9..10}] at @s run scoreboard players set @e[type=ds:lava_wave,c=1,r=20] Deleter 140
execute as @s[scores={move=8..10}] at @s run playanimation @e[type=ds:lava_wave,c=1,r=20] animation.lava_wave