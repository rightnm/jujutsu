playanimation @s[scores={Deleter=198..}] animation.judgeman.rise
execute as @s[scores={Deleter=198..}] at @s run scoreboard players set @e[r=30,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Stun  5
execute as @s[scores={Deleter=198}] at @s run particle ds:judge_slam1

execute as @s[scores={Deleter=6..}] at @s if entity @e[scores={domain=1..},r=50] run kill @s

execute as @s[scores={Deleter=6..}] at @s unless entity @e[scores={domain=1..},r=50] run scoreboard players set @e[r=30,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] nocts 3

execute as @s[scores={Deleter=6..}] at @s run particle ds:judge_area1 ~~~
execute as @s[scores={Deleter=6..}] at @s run particle ds:judge_area2 ~~~
execute as @s[scores={Deleter=6..}] at @s run particle ds:judge_area3 ~~~
tag @s[tag=!Frames] add Frames
execute as @s[scores={Deleter=1..8}] at @s run particle ds:rising_strike2 ~~~
execute as @s[scores={Deleter=1..5}] at @s run tp @s ~~-200~

execute as @s[scores={Deleter=1..}] at @s if block ~~-0.33~ air run tp @s ~~-0.33~
execute as @s[scores={Deleter=1..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=1..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
