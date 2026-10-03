function damages/explosion_damage
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run particle ds:red_ex
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run particle ds:red_ex1
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run particle ds:red_ex7b
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run particle ds:red_ex6
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run particle ds:impact
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run particle ds:ground_slam2 ^4^^
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run particle ds:ground_slam2 ^-4^^
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] unless entity @e[tag=!limitless,scores={move=900..}] if entity @e[tag=griefable] run function 4x4sphere
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run damage @e[tag=!Frames,r=2.99] 200 entity_explosion
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run scoreboard players set @e[tag=!Frames,r=2.99] airknock 90
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] run execute as @e[tag=!Frames,r=2.99] at @s run summon ds:red_reverse ^^^-1
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] if entity @e[name="Lapse2",r=3] run function limitless/improvised_purple_small
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] run execute as @e[name="Blue Core",r=5,c=1] at @s run function limitless/hollow_nuke_activate
execute as @p if entity @e[tag=limitless,scores={move=930..940},r=90,c=1] unless entity @e[name="Blue Core",r=3] positioned ^^^3 run function limitless/red_beam

