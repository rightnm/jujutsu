playanimation @s[scores={move=80}] animation.gavel3.ab4

effect @s[scores={move=21..}] slowness 1 3 true
scoreboard players set @s[scores={move=30..,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep4] remove wep4

execute as @s[scores={move=78..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=78..}] at @s if block ~~-2~ air run tp @s ~~-2~
execute as @s[scores={move=78..}] at @s if block ~~-0.33~ air run tp @s ~~-0.33~
execute as @s[scores={move=78..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~


execute as @s[scores={move=74..77}] at @s unless block ~~-1~ air run tp @s ~~5~


scoreboard players set @s[scores={move=15..63}] Frames 4
scoreboard players set @s[scores={move=8..60}] Camera 8
scoreboard players set @s[scores={move=1..}] Move 8
scoreboard players set @s[scores={move=1..}] AfterAnim 8


execute as @s[scores={move=21..},type=player] at @s run camera @s set minecraft:free pos ^11 ^7 ^5 facing ^^^5

execute as @s[scores={move=1..20}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~

execute as @s[scores={move=1..}] at @s run tp @s @s
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:crater3
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:large_slam1
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:large_slam1
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:large_slam2
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:large_slam3
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:large_slam4
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:large_impact1
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:large_impact2
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:judge_slam_big1
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:judge_slam_big2
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:judge_slam_big3
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:judge_slam_big4
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:judge_slam_big5
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:rising_strike2
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run particle ds:dirt4
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run camerashake add @a[r=30] 2 0.25 rotational
execute as @s[scores={move=65}] at @s positioned ^-1.5^-5^10 run playsound mob.heavy_swing @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run playsound random.explode @a[r=50] ~~~ 9999 0.25 9999
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run playsound mob.shock1 @a[r=50] ~~~ 9999 0.3 9999
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run playsound mob.bonk @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.45 9999
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10  run damage @e[tag=!Frames,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 25 override
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10  run scoreboard players operation @e[tag=!Frames,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10  run scoreboard players add @e[tag=!Frames,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 25
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10  run scoreboard players add @e[tag=!Frames,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] knockdown 90
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10  run summon ds:lapse_explode
execute as @s[scores={move=60}] at @s positioned ^-1.5^-5^10  run summon ds:lapse_explode
execute as @s[scores={move=60}] at @s run  function damages/blunt_damage

