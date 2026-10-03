playanimation @s[scores={move=20}] animation.lapse_blue1

tag @e[scores={move=1..2}] remove form2

tag @e[scores={move=14..,Stun=1..}] remove form2
scoreboard players set @s[scores={move=14..,Stun=1..}] move 0

execute as @s[scores={move=10}] at @s run camerashake add @a[r=15] 2 0.1

execute as @s[scores={move=12..}] at @s run playsound beacon.ambient @a ^^1^1 0.2 3
execute as @s[scores={move=10}] at @s run playsound beacon.deactivate @a ^^1^1 1 1.25
execute as @s[scores={move=10}] at @s run playsound mob.beam3 @a ^^1^1 1 0.6

execute as @s[scores={move=10}] at @s run summon ds:projectile Lapse ^^1^1
execute as @s[scores={move=10}] at @s run summon armor_stand LapseTRG ^^1^55

execute as @s[scores={move=1..10},family=gojo] at @s run tp @e[name=LapseTRG,c=1] @e[family=villain,c=1,r=40]
execute as @s[scores={move=1..10},family=gojo] at @s run tp @e[name=LapseTRG,c=1] @e[family=purecurse,c=1,r=40]

execute as @s[scores={move=9..10}] at @s run scoreboard players set @e[name=Lapse,c=1] Deleter 45
execute as @s[scores={move=9..10}] at @s positioned ^^^55 run scoreboard players set @e[name=LapseTRG,c=1] Deleter 45
scoreboard players set @s[scores={move=8}] move 2

