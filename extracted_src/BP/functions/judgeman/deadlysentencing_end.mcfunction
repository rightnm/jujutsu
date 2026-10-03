stopsound @a[r=50] music.attorney
scoreboard players set @e[tag=the_judge,scores={nocts=!0},r=50] nocts 0
execute as @e[tag=verdict_confiscation] at @s run scoreboard players set @e[tag=on_trial,r=50] nocts 2400
execute as @e[tag=verdict_execution] at @s run scoreboard players set @e[tag=on_trial,r=50] nocts 6000
scoreboard players set @e[type=ds:deadly_sentencing,c=1,r=50,scores={Deleter=32..}] Deleter 31
execute as @e[type=ds:judgeman,c=1,r=50] at @s unless entity @s[scores={Deleter=1..15}] run scoreboard players set @s Deleter 15
execute as @e[scores={domain=1..,domainactive=1..},c=1,tag=the_judge] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run scoreboard players set @s domainactive 0
execute as @e[scores={domain=1..},c=1,tag=the_judge] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run scoreboard players set @s domain 0
execute as @e[tag=the_judge] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove the_judge
execute as @e[tag=on_trial] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove on_trial
execute as @e[tag=judge_draw] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove judge_draw
execute as @e[tag=judge_win] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove judge_win
execute as @e[tag=judge_lose] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove judge_lose
execute as @e[tag=trial_win] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove trial_win
execute as @e[tag=minimum] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove minimum
execute as @e[tag=maximum] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove maximum
execute as @e[tag=median] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove median
execute as @e[tag=confessed] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove confessed
execute as @e[tag=verdict_notguilty] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove verdict_notguilty
execute as @e[tag=verdict_confiscation] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove verdict_confiscation
execute as @e[tag=verdict_execution] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run tag @s remove verdict_execution
execute as @e[has_property={property:evidence=1..}] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run event entity @s evidence_textureoff
fill ~33 298 ~33 ~-33 300 ~-33 air
fill ~33 301 ~33 ~-33 301 ~-33 air
fill ~33 300 ~33 ~-33 300 ~-33 air
fill ~33 299 ~33 ~-33 299 ~-33 air
fill ~33 298 ~33 ~-33 298 ~-33 air
execute as @e[scores={judgetimer=!0}] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run scoreboard players set @s judgetimer 0
execute as @e[scores={evidence=!0}] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run scoreboard players set @s evidence 0
execute as @e[scores={countdown1=!0}] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run scoreboard players set @s countdown1 0
execute as @e[scores={selection=!0}] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run scoreboard players set @s selection 0
execute as @e[scores={verdict=!0}] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run scoreboard players set @s verdict 0
execute as @e[scores={trial_mode=!0}] at @s unless entity @e[type=ds:deadly_sentencing,scores={Deleter=32..},r=50] run scoreboard players set @s trial_mode 0