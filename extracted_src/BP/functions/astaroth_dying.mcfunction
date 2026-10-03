execute as @s unless entity @s[scores={legitdamage=1..}] run function structure_rift1
execute as @s unless entity @s[scores={legitdamage=1..}] run tellraw  @a {"rawtext":[{"text":"§l§4Stop Cheating."}]}
execute as @s unless entity @s[scores={legitdamage=1..}] run event entity @s ds:disappear

execute as @s[scores={cutscene=300..}] at @s run execute as @a[r=100]  at @s run stopsound @a[r=100]

execute as @s[scores={cutscene=2..90}] at @s run scoreboard objectives add astarothdeath dummy
execute as @s[scores={cutscene=2..90}] at @s run scoreboard players set @a astarothdeath 1


execute as @s[scores={cutscene=1..86}] at @s unless entity @e[type=ds:reality_shard,r=50] run function astaroth_death

tp @s ~~~ facing @p
playanimation @s[scores={cutscene=299..}] animation.astaroth_death

execute as @s[scores={cutscene=300}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§fI lost again..."}]}
execute as @s[scores={cutscene=240}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§fHow did I lose? Wait.. why was I even fighting you?"}]}
execute as @s[scores={cutscene=160}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§fIt felt like I was not fully in control of my myself."}]}
execute as @s[scores={cutscene=150}] at @s run tellraw @a {"rawtext":[{"text":"§l§4§kCOMMAND ACTIVATION SUCCESSFUL. TERMINATING."}]}
execute as @s[scores={cutscene=140..150}] at @s run playsound mob.distort1 @a ~~~ 99999 2 99999
execute as @s[scores={cutscene=140..150}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={cutscene=125}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§fWhat's happening!?"}]}
execute as @s[scores={cutscene=100}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§fWHOEVER IS BEHIND THIS, I SWEAR YOU WILL PAY!"}]}

execute as @s[scores={cutscene=80..120}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={cutscene=80..120}] at @s run playsound mob.distort2 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={cutscene=80..120}] at @s run particle ds:rift_charging1 ~~3~
execute as @s[scores={cutscene=80..120}] at @s run particle ds:rift_charging2 ~~3~

execute as @s[scores={cutscene=80..120}] at @s run particle ds:rift1 ~~3~
execute as @s[scores={cutscene=80}] at @s run summon gg:impact_frame

execute as @s[scores={cutscene=1..80}] at @s run event entity @s ds:disappear


