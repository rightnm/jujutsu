playanimation @s[scores={move=65}] animation.hr_counter

tag @s[scores={move=1..2},tag=form5] remove form5

scoreboard players set @s[scores={move=1..63}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..55}] Camera 4
scoreboard players set @e[tag=swiftcountered,r=12,c=1] Camera 4
scoreboard players set @e[tag=swiftcountered,r=12,c=1] Move 4
execute as @s[scores={move=15..}] at @s run scoreboard players set @e[tag=swiftcountered,r=12,c=1] Stun 5

execute as @s[scores={move=1..2}] at @s run tag @e[tag=swiftcountered,r=20,c=1] remove swiftcountered

execute as @s[scores={move=60..62}] at @s positioned ^^^2 run scoreboard players set @e[r=4.99,tag=!Frames,scores={punch=1..},type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] atk 2
execute as @s[scores={move=60..62}] at @s positioned ^^^2 run tag @e[r=4.99,tag=!Frames,scores={atk=1..},type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] add swiftcountered
execute as @s[scores={move=60..62}] at @s positioned ^^^2 run scoreboard players set @e[r=4.99,tag=!Frames,scores={atk=1..},type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] Stun 5
execute as @s[scores={move=60..62}] at @s positioned ^^^2 run scoreboard players set @e[r=4.99,tag=!Frames,scores={atk=1..,move=3..},type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] move 2

execute as @s[scores={move=55..60}] at @s unless entity @e[tag=swiftcountered,r=12,c=1] run playanimation @s animation.cancel
execute as @s[scores={move=55..60}] at @s unless entity @e[tag=swiftcountered,r=12,c=1] run scoreboard players set @s Stun 10
execute as @s[scores={move=55..60}] at @s unless entity @e[tag=swiftcountered,r=12,c=1] run scoreboard players set @s move 2

camera @s[scores={move=55},type=player] fade time 0 0.1 0.15 color 0 0 0
execute as @s[scores={move=55}] at @s run camera @a[tag=swiftcountered,r=12,c=1] fade time 0 0.1 0.15 color 0 0 0

execute as @s[scores={move=1..},type=player] at @s run tp @s @s
execute as @s[scores={move=1..},type=!player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=19..55}] at @s run tp @e[tag=swiftcountered,r=12,c=1] ^^^1.33 facing @s
execute as @s[scores={move=25..55}] at @s run camerashake add @a[r=5] 0.15 0.1

execute as @s[scores={move=15..55},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^0.8 ^0.55 ^-0.55 rot ~22 ~28
execute as @s[scores={move=15..55}] at @s anchored eyes run camera @a[tag=swiftcountered,r=12,c=1] set minecraft:free pos ^0.8 ^0.55 ^-0.55 rot ~22 ~28

playanimation @s[scores={move=54}] animation.hr_countering
execute as @s[scores={move=54}] at @s run playanimation @e[tag=swiftcountered,r=12,c=1] animation.hr_countering2

execute as @s[scores={move=26..54}] at @s anchored eyes run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999

scoreboard players random @s[scores={move=17},tag=!heavenlyrestriction] blackflashchance 1 128
scoreboard players set @s[scores={move=17},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players set @s[scores={move=16..17}] atk 2
execute as @s[scores={move=16}] at @s positioned ^^1^0.5 run particle ds:punch1 ~~~
execute as @s[scores={move=16}] at @s positioned ^^1^0.5 run particle ds:punch2 ~~~
execute as @s[scores={move=16}] at @s positioned ^^1^0.5 run particle ds:punch3 ~~~
execute as @s[scores={move=16}] at @s positioned ^^1^0.5 run particle ds:punch4 ~~~
execute as @s[scores={move=16}] at @s positioned ^^1^0.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=21}] at @s positioned ^^^0.5 run playsound mob.punch @a[r=50] ~~~ 9999 0.9 9999
execute as @s[scores={move=16}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=16}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.75 9999
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run damage @e[tag=swiftcountered,r=12,c=1] 10 override
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=swiftcountered,r=12,c=1] damage += @s damageadd
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=swiftcountered,r=12,c=1] Evade 25
execute as @s[scores={move=15}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=15}] at @s run  function damages/blunt_damage
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=swiftcountered,r=12,c=1] Stun 40
execute as @s[scores={move=15}] at @s run tag @e[tag=swiftcountered,r=12,c=1] remove swiftcountered