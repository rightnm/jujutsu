execute as @s unless entity @s[scores={legitdamage=1..}] run function structure_rift5
execute as @s[scores={cutscene=100..}] at @s run execute as @a[r=100]  at @s run stopsound @a[r=100]

execute as @s[scores={cutscene=2..20}] at @s run scoreboard objectives add benedictusdeath dummy
execute as @s[scores={cutscene=2..20}] at @s run scoreboard players set @a benedictusdeath 1

execute as @s unless entity @s[scores={legitdamage=1..}] run tellraw  @a {"rawtext":[{"text":"§l§4Stop Cheating."}]}
execute as @s unless entity @s[scores={legitdamage=1..}] run event entity @s ds:disappear

execute as @s[scores={cutscene=1..6}] unless entity @e[type=ds:reality_shard,r=50] run function benedictus_death

tp @s ~~~ facing @p
playanimation @s[scores={cutscene=99..}] animation.benedictus_death

execute as @s[scores={cutscene=95}] at @s run particle ds:ground_slam1
execute as @s[scores={cutscene=95}] at @s run particle ds:ground_slam2
execute as @s[scores={cutscene=95}] at @s run particle ds:dirt2

execute as @s[scores={cutscene=100}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> §o§fSomething's off... you're not the one behind this are you?"}]}
execute as @s[scores={cutscene=20}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> §o§fYou're strong... please, stop whoever's behind this."}]}

execute as @s[scores={cutscene=50}] at @s run tellraw @a {"rawtext":[{"text":"§l§4§kCOMMAND ACTIVATION SUCCESSFUL. TERMINATING."}]}
execute as @s[scores={cutscene=1..60}] at @s run playsound mob.distort1 @a ~~~ 99999 2 99999
execute as @s[scores={cutscene=1..60}] at @s run camerashake add @a[r=100] 2 0.15

execute as @s[scores={cutscene=1..60}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={cutscene=1..60}] at @s run playsound mob.distort2 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={cutscene=1..60}] at @s run particle ds:rift_charging1 ~~3~
execute as @s[scores={cutscene=1..60}] at @s run particle ds:rift_charging2 ~~3~

execute as @s[scores={cutscene=1..60}] at @s run particle ds:rift1 ~~3~
execute as @s[scores={cutscene=15}] at @s run summon gg:impact_frame
execute as @s[scores={cutscene=3}] at @s run summon gg:impact_frame
execute as @s[scores={cutscene=60}] at @s run summon gg:impact_frame

execute as @s[scores={cutscene=1..3}] at @s run event entity @s ds:disappear


