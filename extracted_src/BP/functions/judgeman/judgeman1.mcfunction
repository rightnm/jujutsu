playanimation @s[scores={move=15}] animation.objection

tag @s[scores={move=1..2},tag=form1] remove form1

scoreboard players set @s[scores={move=1..11}] Frames 4
scoreboard players set @s[scores={move=17..}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..}] Camera 5
scoreboard players set @a[tag=objection,r=5,c=1] Camera 4
scoreboard players set @e[tag=objection,r=5,c=1] Move 4
scoreboard players set @e[tag=objection,r=5,c=1] Stun 5

execute as @s[scores={move=14}] at @s run particle ds:rising_strike1 ~~1~

execute as @s[scores={move=8..10}] at @s positioned ^^^5 run scoreboard players set @e[r=4.95,tag=!Frames,scores={punch=1..},c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] atk 2
execute as @s[scores={move=8..10}] at @s positioned ^^^5 run tag @e[r=4.95,tag=!Frames,scores={atk=1..},c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] add objection
execute as @s[scores={move=8..10}] at @s positioned ^^^5 run scoreboard players set @e[r=4.95,tag=!Frames,scores={atk=1..},c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Stun 15
execute as @s[scores={move=8..10}] at @s positioned ^^^5 run scoreboard players set @e[r=4.95,tag=!Frames,scores={atk=1..},c=1,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] move 2

execute as @s[scores={move=6..10}] at @s if entity @e[tag=objection,r=5] run scoreboard players set @s move 28

execute as @s[scores={move=6..7}] at @s unless entity @e[tag=objection,r=5] run scoreboard players set @s Stun 10
execute as @s[scores={move=6..7}] at @s unless entity @e[tag=objection,r=5] run scoreboard players set @s move 2

playanimation @s[scores={move=27}] animation.objection2

execute as @s[scores={move=17..},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^3 ^-1 ^-0.75 facing ^-0.5^0.2^4

execute as @s[scores={move=26..28}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=22..24}] at @s run execute as @e[tag=objection,c=1,r=5] at @s run tp @s @s
execute as @s[scores={move=22..26}] at @s run execute as @e[tag=objection,c=1,r=5] at @s run tp @e[scores={move=22..26},c=1,r=5] ^^0.15^1 facing @s

execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run playsound music.objection @a[r=50] ~~~ 99999 1 99999
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:punch1 ~~~
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:punch2 ~~~
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:punch3 ~~~
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:punch4 ~~~
execute as @s[scores={move=22}] at @s positioned ^^1^0.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=22}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=22}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.75 9999
execute as @s[scores={move=22}] at @s positioned ^^^2.5 run damage @e[tag=objection,c=1,r=5] 5 override
execute as @s[scores={move=22}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=objection,c=1,r=5] damage += @s damageadd
execute as @s[scores={move=22}] at @s positioned ^^^2.5 run scoreboard players remove @e[tag=objection,c=1,r=5] Evade 10
execute as @s[scores={move=22}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=objection,c=1,scores={Evade=-9999..-1},r=5] Evade 0
execute as @s[scores={move=22}] at @s run  function damages/blunt_damage
execute as @s[scores={move=22}] at @s run scoreboard players set @e[tag=objection,c=1,r=5] Flourish 8
execute as @s[scores={move=17..21}] at @s run tag @e[c=1,tag=objection] remove objection

scoreboard players set @s[scores={move=16..18}] move 2