scoreboard players remove @s[scores={getcrushed=1..}] getcrushed 1
playanimation @s[scores={getcrushed=45..}] animation.cursed_speech.crushed
execute as @s[scores={getcrushed=45..}] at @s unless entity @s[scores={speech_effect=0..}] run scoreboard players set @s speech_effect 20

tp @s ~~~~ 0
tag @s[scores={getcrushed=19..},tag=!noStunnedAnim] add noStunnedAnim
scoreboard players set @s[scores={getcrushed=19..}] Stun 25
scoreboard players set @s[scores={getcrushed=19..}] Camera 25
scoreboard players set @s[scores={getcrushed=19..}] Disabled 30

execute as @s[scores={getcrushed=45}] at @s run particle ds:crushed1 ~~~
execute as @s[scores={getcrushed=45}] at @s run particle ds:crushed2 ~~~

execute as @s[scores={getcrushed=34}] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 999999 1 999999
execute as @s[scores={getcrushed=34}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={getcrushed=34}] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={getcrushed=34}] at @s run camerashake add @a[r=25] 2 0.15
execute as @s[scores={getcrushed=34}] at @s run particle ds:dirt0


execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run playsound mob.blood3 @a[r=100] ~~1~ 99999 1 99999
execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run playsound mob.blood4 @a[r=100] ~~1~ 99999 1.5 99999
execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run playsound mob.blood @a[r=100] ~~1~ 99999 1.5 99999
execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run particle ds:blood_mist ~~1~
execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run particle ds:blood_mist ~~1~
execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run particle ds:blood_mist ~~1~
execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run particle ds:blood_mist ~~1~
execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run particle ds:blood ~~~
execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run particle ds:blood ~~~
execute as @s[scores={detect_health=0..19,getcrushed=34}] at @s run particle ds:blood_explode ~~1~
execute as @s[scores={detect_health=0..19,getcrushed=33}] at @s run effect @s invisibility 5 1 true
execute as @s[scores={detect_health=0..19,getcrushed=32}] at @s run kill @s

scoreboard players operation @s[scores={getcrushed=32}] damage += @s speech_effect

execute as @s[scores={getcrushed=32}] at @s run tellraw @a[tag=show_speech_scores,r=50] {"rawtext":[{"text":"Final damage Score for @s: "},{"score":{"name":"@s","objective":"damage"}}]}
