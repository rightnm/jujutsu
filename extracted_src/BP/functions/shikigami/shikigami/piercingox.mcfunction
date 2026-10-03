execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute as @s unless entity @e[tag=ox_fight,r=100] run tag @e[tag=ox_fight,tag=!shikigami] remove ox_fight
execute as @s unless entity @e[tag=ox_fight,r=100] run tag @e[tag=ox_fight,tag=shikigami,c=1] remove ox_fight
execute as @s unless entity @e[tag=ox_fight,r=100] run kill @s

execute as @s[type=ds:piercingox,scores={Disabled=0,move=0}] at @s positioned ^^^25.5 if entity @e[tag=!Frames,r=25.45,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:piercingox,c=1] run scoreboard players random @s chance 1 2

scoreboard players set @s[type=ds:piercingox,scores={move=0,chance=1,Disabled=0}] move 41
scoreboard players set @s[scores={move=1..}] Disabled 140


scoreboard players set @s[scores={move=1..4,chance=1..}] chance 0

scoreboard players set @s Hyper 5
tag @s[type=ds:piercingox,tag=!Big] add Big

playanimation @s[scores={chance=1,move=40}] animation.ox.charge

execute as @s[scores={chance=1,move=1..}] at @s run tp @s ~~~ facing @p[tag=!unselect,r=50]
execute as @s[scores={chance=1,move=1..}] at @s run tp @s @s

effect @s[scores={chance=1,move=3..9}] resistance 2 10 true
effect @s[scores={chance=1,move=1..2}] resistance 0 20 true

execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^1.5 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^3 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^4.5 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^6 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^7.5 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^9 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^10.5 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^12 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^14.5 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^16 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^17.5 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^19 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^20.5 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^22 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^23.5 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=7}] at @s  positioned ^^^25 run function shikigami/shikigami/ox_rush
execute as @s[scores={chance=1,move=6}] at @s  positioned ^^^28 run tp @s ~~~
execute as @s[scores={chance=1,move=1..6}] at @s run kill @e[type=item,r=40]
execute as @s[scores={chance=1,move=1..6}] at @s unless block ~~~ air run spreadplayers ~ ~ 1 2 @s