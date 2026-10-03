playanimation @s[scores={move=50..}] animation.bluelemon.adolla

execute as @s[scores={move=50..}] at @s run playsound music.time3 @a[r=200]

execute as @s[scores={move=22..}] at @s run tp @s ~~~ facing @e[family=!heroic,scores={detect_health=0..},c=1]

execute as @s[scores={move=21}] at @s run summon gg:impact_frame
execute as @s[scores={move=21}] at @s run particle ds:invert ^^1^1 
execute as @s[scores={move=20}] at @s run particle ds:blue_tint ^^1^1 
execute as @s[scores={move=20}] at @s run effect @a[r=200] darkness 2 1 true


execute as @s[scores={move=15..20}] at @s run damage @e[family=purecurse,r=7] 50 suicide
execute as @s[scores={move=24..}] at @s run camerashake add @a[r=50] 0.1 0.08
execute as @s[scores={move=21..}] at @s run particle ds:adolla1 ~~0.5~
execute as @s[scores={move=21..}] at @s run particle ds:adolla2 ~~0.5~
execute as @s[scores={move=21..35}] at @s run particle ds:turbo_intensity2 ~~0.5~
execute as @s[scores={move=21..35}] at @s run particle ds:turbo_intensity3 ~~0.5~
execute as @s[scores={move=15..20}] at @s run camerashake add @a[r=200] 0.25 0.25 rotational
execute as @s[scores={move=15..20}] at @s run scoreboard players set @e[tag=!Frames,r=5,family=!heroic] Stun 25
execute as @s[scores={move=15..20}] at @s run scoreboard players set @e[tag=!Frames,r=5,family=!heroic] Hit 5
execute as @s[scores={move=15..20}] at @s run damage @e[tag=!Frames,r=5,family=!heroic] 50 suicide
execute as @s[scores={move=15..20}] at @s run particle ds:ground_slam2 ^^^-3
execute as @s[scores={move=15..20}] at @s run tp @s ^^^7
execute as @s[scores={move=15..20}] at @s run particle ds:ground_slam2

execute as @s[scores={move=5..14}] at @s run particle ds:sprint
execute as @s[scores={move=5..14}] at @s run  scriptevent ds:knockback 0.75
