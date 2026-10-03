execute as @s unless entity @s[scores={Deleter=0..}] run kill @e[name="meteorTRG"]
execute as @s unless entity @s[scores={Deleter=0..}] run kill @e[type=ds:riftmeteor,rm=10]
execute as @s unless entity @s[scores={Deleter=0..}] run particle ds:riftcrater1 ~ 300 ~
execute as @s unless entity @s[scores={Deleter=0..}] run particle ds:riftcrater2 ~ 300 ~
execute as @s unless entity @s[scores={Deleter=0..}] run particle ds:riftcrater3 ~ 300 ~
execute as @s unless entity @s[scores={Deleter=0..}] run particle ds:riftcrater4 ~ 300 ~
execute as @s unless entity @s[scores={Deleter=0..}] run effect @a[r=200] night_vision 2 1 true
execute as @s unless entity @s[scores={Deleter=0..}] run playsound mob.distort1 @a ~~-100~ 999999 0.8 999999
execute as @s unless entity @s[scores={Deleter=0..}] run camerashake add @a[r=200] 2 0.25
execute as @s unless entity @s[scores={Deleter=0..}] run summon ds:projectile "meteorTRG" ~~~
execute as @s unless entity @s[scores={Deleter=0..}] run spreadplayers ~ ~ 100 120 @e[name="meteorTRG"]
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @e[name="meteorTRG",c=1] Deleter 1200
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 1200

execute as @e[name="meteorTRG"] at @s if entity @a[r=50] run tickingarea remove meteor
execute as @e[name="meteorTRG"] at @s unless entity @a[r=50] run tickingarea add ~4~ ~4 ~-4~~-4 meteor


execute as @s[scores={Deleter=1200}] at @s run tickingarea add ~45~~45~-45~~-45 meteorfall
execute as @s[scores={Deleter=1140}] at @s run tickingarea add ~45~~45~-45~~-45 meteorfall1
execute as @s[scores={Deleter=1080}] at @s run tickingarea add ~45~~45~-45~~-45 meteorfall2
execute as @s[scores={Deleter=1020}] at @s run tickingarea add ~45~~45~-45~~-45 meteorfall3
execute as @s[scores={Deleter=960}] at @s run tickingarea add ~45~~45~-45~~-45 meteorfall4
execute as @s[scores={Deleter=900}] at @s run tickingarea add ~45~~45~-45~~-45 meteorfall5
execute as @s[scores={Deleter=1..}] at @s run tp @s ^^^2 facing @e[name="meteorTRG",c=1] 
execute as @s[scores={Deleter=1..}] at @s run particle ds:riftmeteor1
execute as @s[scores={Deleter=1..}] at @s run particle ds:riftmeteor2
execute as @s[scores={Deleter=1..}] at @s run particle ds:riftmeteor3
execute as @s[scores={Deleter=1..}] at @s run particle ds:riftmeteor4
execute as @s[scores={Deleter=1..}] at @s run particle ds:riftmeteor5
execute as @s[scores={Deleter=1..}] at @s run particle ds:riftmeteor6
execute as @s[scores={Deleter=1..}] at @s run particle ds:ground_slam2
execute as @s[scores={Deleter=1..}] at @s run particle ds:impact2

execute as @s[scores={Deleter=1..}] at @s if entity @e[name="meteorTRG",r=4] at @s if entity @p[tag=griefable] run function 4x4sphere
execute as @s[scores={Deleter=1..}] at @s if entity @e[name="meteorTRG",r=4] at @s run function meteorland
execute as @s[scores={Deleter=1..}] at @s unless entity @e[name="meteorTRG"] at @s run kill @s
