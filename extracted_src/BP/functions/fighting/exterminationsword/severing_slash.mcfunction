playanimation @s[scores={move=20},tag=wep1,tag=exterminationsword] animation.extermination_ab1


tag @s[scores={move=1..7},tag=wep1,tag=exterminationsword] remove wep1

tag @s[scores={move=15..,Stun=1..},tag=wep1,tag=exterminationsword] remove wep1
scoreboard players set @s[scores={move=15..,Stun=1..},tag=wep1,tag=exterminationsword] move 0

scoreboard players set @e[scores={move=4..14},tag=wep1,tag=exterminationsword] Frames 4
scoreboard players set @e[scores={move=4..14},tag=wep1,tag=exterminationsword] Move 4

execute as @s[scores={move=9},tag=wep1,tag=exterminationsword] at @s run tp @s @s
execute as @s[scores={move=9},tag=wep1,tag=exterminationsword] at @s run summon ds:projectile ^^1.15^2 facing ^^^20 none SeveringSlice 
execute as @s[scores={move=9},tag=wep1,tag=exterminationsword] at @s run scoreboard players set @e[name=SeveringSlice,c=1] Deleter 25
execute as @s[scores={move=12},tag=wep1,tag=exterminationsword] at @s run playsound mob.slash1 @a[r=100] ~~~ 1000000 0.7 1000000
execute as @s[scores={move=12},tag=wep1,tag=exterminationsword] at @s run playsound beacon.power @a[r=100] ~~~ 1000000 1.1 1000000
execute as @s[scores={move=12},tag=wep1,tag=exterminationsword] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 1000000 0.5 1000000
execute as @s[scores={move=10},tag=wep1,tag=exterminationsword] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=10},tag=wep1,tag=exterminationsword] at @s run particle ds:ground_slam2 ^^1^2