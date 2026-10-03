playanimation @s[scores={move=35}] animation.confisgate

execute as @s[scores={move=1..3}] at @s run tag @e[tag=confisgate] remove confisgate
tag @s[scores={move=1..2},tag=form2] remove form2


execute as @s[scores={move=26}] at @s positioned ^^^2 run tag @e[tag=!Frames,r=1.95,c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] add confisgate
execute as @s[scores={move=25}] at @s run playanimation @e[tag=confisgate,c=1] animation.confisgate2

execute as @s[scores={move=5..24}] at @s unless entity @e[tag=confisgate,c=1,r=5] run scoreboard players set @s move 3

execute as @s[scores={move=5..24}] at @s run scoreboard players set @a[r=5,m=!spectator] Camera 5
execute as @s[scores={move=5..24},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-2 ^-0.5 ^0.33 facing ^^^0.3
execute as @s[scores={move=5..24}] at @s anchored eyes run execute as @e[tag=confisgate,c=1,r=5] if entity @s[type=player] run camera @s set minecraft:free pos ^-2 ^-0.5 ^0.33 facing ^^^0.3

execute as @s[scores={move=25}] at @s run camerashake add @a[r=10] 3 0.15
execute as @s[scores={move=25}] at @s anchored eyes run particle ds:rising_strike1 ^^0.25^0.75
execute as @s[scores={move=25}] at @s anchored eyes run particle ds:rising_strike2 ^^0.25^0.75
execute as @s[scores={move=5..25}] at @s run tp @s @s
execute as @s[scores={move=5..25}] at @s run tp @e[tag=confisgate,c=1,r=5] ^^0.25^0.75 facing @s
execute as @s[scores={move=5..25}] at @s run  damage @e[tag=confisgate,c=1,r=5] 2
execute as @s[scores={move=5..25}] at @s run scoreboard players remove @e[tag=confisgate,c=1,r=5] Energy 9
execute as @s[scores={move=5..25}] at @s run scoreboard players add @s Energy 14
execute as @s[scores={move=5..25}] at @s run scoreboard players set @e[tag=confisgate,c=1,r=5] Stun 25
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability1 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability2 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability3 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability4 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability5 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability6 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability7 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability8 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability9 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability10 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability11 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] ability12 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] wep1 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] wep2 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] wep3 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] wep4 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=confisgate,c=1,r=5] wep5 2
execute as @s[scores={move=35}] at @s run playsound beacon.power @a[r=20] ~~~ 9999 3 9999
execute as @s[scores={move=25}] at @s run playsound beacon.power @a[r=20] ~~~ 9999 1 9999
execute as @s[scores={move=5..25}] at @s run playsound beacon.ambient @a[r=20] ~~~ 9999 2 9999
