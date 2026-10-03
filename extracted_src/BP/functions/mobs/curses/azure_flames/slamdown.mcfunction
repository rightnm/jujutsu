playanimation @s[scores={move=30}] animation.azureflames_curse.slam

scoreboard players set @s[scores={move=16..22}] Frames 4
scoreboard players set @s[scores={move=6..}] Move 4

execute as @s[scores={move=1..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=1..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=1..}] at @s run  tp @s ~~~

execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=190] ~~~ 99999 0.6 99999
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run playsound random.explode @a[r=190] ~~~ 99999 0.45 99999
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=190] ~~~ 99999 0.5 99999
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=190] ~~~ 99999 0.35 99999
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run playsound mob.wither.shoot @a[r=190] ~~~ 99999 0.5 99999


execute as @s[scores={move=19}] at @s run function damages/blunt_damage

execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run particle ds:ground_slam1
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run particle ds:ground_slam2
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run particle ds:ground_slam3
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run particle ds:ground_slam4
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run particle ds:large_slam2
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run particle ds:large_slam1
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run particle ds:large_slam3
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run particle ds:crater3
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run particle ds:leap
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run camerashake add @a[r=20] 3 0.3

execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run damage @e[tag=!Frames,family=!purecurse,r=8] 20 entity_attack entity @s 
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run scoreboard players set @e[tag=!Frames,family=!purecurse,r=2.54] knock 40
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run scoreboard players set @e[tag=!Frames,family=!purecurse,r=8] Stun 20
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run scoreboard players set @e[tag=!Frames,family=!purecurse,r=8] Hit 5
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run scoreboard players add @e[tag=!Frames,family=!purecurse,r=8] Evade 20
execute as @s[scores={move=19}] at @s unless block ~~-0.25~ air run summon ds:red_reverse ~~~

scoreboard players set @s[scores={move=1..3}] chance 0
