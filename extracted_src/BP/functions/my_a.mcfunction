















# I RECOMMEND NOT TO SEARCH THROUGH THIS FILE AS IT MAY SPOIL OR RUIN STEPS REQUIRED FOR SECRETS IN THIS MOD. IF YOU WANT TO EXPERIENCE THE SECRETS PLEASE DO IT THE LEGITIMATE WAY AS IT WILL BE MORE INTERESTING AND FUN






















































execute as @s if entity @p[scores={consolerejected=1..}] run tellraw @a[r=10] {"rawtext":[{"text":"§4A higher authority prevents you from using this anymore."}]}
execute as @s if entity @p[scores={consolerejected=1..}] run tag @s add delete
execute as @s if entity @p[scores={consolerejected=1..}] run particle ds:heavy_impact1
execute as @s if entity @p[scores={consolerejected=1..}] run particle ds:heavy_impact2
execute as @s if entity @p[scores={consolerejected=1..}] run particle ds:heavy_impact3
execute as @s if entity @p[scores={consolerejected=1..}] run clear @a[r=10] ds:mysterious_artifact_spawn_egg
execute as @s if entity @p[scores={consolerejected=1..}] run tp @s ~~-100~


execute as @s if entity @p[r=10] unless entity @p[scores={meteordropped=1..}] run tag @s add delete
execute as @s if entity @p[r=10] unless entity @p[scores={meteordropped=1..}] run particle ds:heavy_impact1
execute as @s if entity @p[r=10] unless entity @p[scores={meteordropped=1..}] run particle ds:heavy_impact2
execute as @s if entity @p[r=10] unless entity @p[scores={meteordropped=1..}] run particle ds:heavy_impact3
execute as @s if entity @p[r=10] unless entity @p[scores={meteordropped=1..}] run tellraw @a[r=10] {"rawtext":[{"text":"§0NO CHEATING."}]}
execute as @s if entity @p[r=10] unless entity @p[scores={meteordropped=1..}] run clear @a[r=10] ds:mysterious_artifact_spawn_egg
execute as @s if entity @p[r=10] unless entity @p[scores={meteordropped=1..}] run tp @s ~~-100~
execute as @s if entity @p[r=10] unless entity @s[scores={Deleter=0..}] unless entity @p[scores={meteordropped=3..}] run scoreboard players set @s Deleter 10

effect @a[r=5] weakness 1 25 true

execute as @s unless entity @s[scores={flameactivated=0..}] run scoreboard objectives add flameactivated dummy
execute as @s unless entity @s[scores={flameactivated=0..}] run scoreboard players add @s flameactivated 0

execute as @s run execute as @p[r=2.5,scores={Sneaking=10..,punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run give @p[r=2.5,scores={Sneaking=10..,punch=1}] ds:mysterious_artifact_spawn_egg
execute as @s run execute as @p[r=2.5,scores={Sneaking=10..,punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run scoreboard players set @s Deleter 20
execute as @s run execute as @p[r=2.5,scores={Sneaking=10..,punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run tp @s ~~-100~

execute as @s[scores={artifactactivated=0}] run particle ds:message2 ~~0.015~

execute as @s[scores={artifactactivated=1..,flameactivated=0}] run particle ds:message1 ~~0.015~

execute as @s[scores={artifactactivated=1..,flameactivated=0}] run execute as @p[r=2.5,hasitem={item=ds:mysterious_torch,location=slot.weapon.mainhand},has_property={property:torch_light=1..},scores={punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run function my_ac

execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run particle ds:azure_torch1 ^-0.01^1.1^
execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run scoreboard players add @s endurance 1
execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run playanimation @s[scores={endurance=1}] animation.mysterious_artifact.idle_activated
execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run scoreboard players set @s[scores={endurance=60..}] endurance 0
execute as @s[scores={artifactactivated=1..,flameactivated=1..,endurance=59}] run playsound beacon.ambient @a ~~1~ 0.1 0.5

execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run scoreboard objectives add scroll dummy
execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run scoreboard players add @s scroll 1

execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run playsound respawn_anchor.charge @a ~~~ 0.2 2
execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run particle ds:divergent_ac2 ~~1.1~
execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run particle ds:divergent_ac6 ~~1.1~
execute as @s[scores={artifactactivated=1..,flameactivated=1..}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 run execute as @e[type=ds:mysterious_artifact,c=1] at @s run scoreboard players set @s[scores={scroll=6..}] scroll 1

execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=0..1}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 run function structure_void

execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=2}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 unless entity @e[scores={kaiguy=1..}] run function structure_rift3
execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=3}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 unless entity @e[scores={duke=1..}] run function structure_rift2
execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=4}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 unless entity @e[scores={benedictus=1..}] run function structure_rift5
execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=5}] run execute as @p[r=2.5,scores={punch=1}] at @s positioned ^^^2.5 unless entity @e[scores={astaroth=1..}] run function structure_rift1

#ritual
execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=1}] run particle ds:first_message ~~0.015~
#1
execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=2}] run particle ds:message5 ~~0.015~
#2
execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=3}] run particle ds:message4 ~~0.015~
#3
execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=4}] run particle ds:message7 ~~0.015~
#4
execute as @s[scores={artifactactivated=1..,flameactivated=1..,scroll=5}] run particle ds:message3 ~~0.015~
