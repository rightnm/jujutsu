execute as @s[tag=!Stopped,scores={Deleter=0..}] at @s run tp @s ^^^2 facing @e[name=phaseredTRG,c=1]
execute as @e[tag=limitless,scores={ability8=400..,Sneaking=0},c=1] at @s positioned ^^1.5^60 run tp @e[name=phaseredTRG,c=1] ~~~
execute as @e[tag=limitless,scores={ability8=400..,Sneaking=1..},c=1] at @s if entity @s[type=player] positioned ^^1.5^-5 run tp @e[name=phaseredTRG,c=1] ~~~
execute as @e[tag=limitless,scores={ability8=400..,Sneaking=1..},c=1] at @s unless entity @s[type=player] at @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!gojo,c=1,r=60] positioned ^^1.5^-1 run tp @e[name=phaseredTRG,c=1] ~~~

tag @s[tag=!GojoProj] add GojoProj

playanimation @s animation.phase_red

function damages/explosion_damage

execute as @s[scores={Deleter=3..}] at @s unless block ~~~ air run scoreboard players set @s Deleter 2
execute as @s[scores={Deleter=3..}] at @s if entity @e[tag=!Frames,family=!projectile,family=!despawncito,family=!damage,type=!item,type=!xp_orb,type=!arrow,r=3,tag=!limitless,type=!ds:projectile,tag=!unselect] run scoreboard players set @s Deleter 2


execute as @s[scores={Deleter=2}] at @s if entity @e[tag=griefable] run summon ds:lapse_explode
execute as @s[scores={Deleter=2}] at @s if entity @e[tag=griefable] run function 4x4sphere
execute as @s[scores={Deleter=2}] at @s if entity @e[tag=griefable] run summon ds:red_reverse
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex1 ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex2 ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex1 ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex2 ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex3 ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex4 ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex5 ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex6 ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex7 ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:red_ex ~~~
execute as @s[scores={Deleter=2}] at @s run particle ds:dirt2
execute as @s[scores={Deleter=2}] at @s run particle ds:dirt0
execute as @s[scores={Deleter=2}] at @s run particle ds:ground_slam2
execute as @s[scores={Deleter=2}] at @s run particle ds:ground_slam3
execute as @s[scores={Deleter=2}] at @s run particle ds:large_slam2
execute as @s[scores={Deleter=2}] at @s run particle ds:impact
execute as @s[scores={Deleter=2}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=2}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={Deleter=2}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={Deleter=2}] at @s run scoreboard players set @e[tag=!Frames,tag=!limitless,name=!phaseblue,r=3,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect] Stun 30
execute as @s[scores={Deleter=2}] at @s run scoreboard players add @e[tag=!Frames,tag=!limitless,name=!phaseblue,r=3,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect] knockdown 25
execute as @s[scores={Deleter=2}] at @s run scoreboard players add @e[tag=!Frames,tag=!limitless,name=!phaseblue,r=3,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect] Evade 12
