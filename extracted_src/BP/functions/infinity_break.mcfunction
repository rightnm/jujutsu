execute as @e[scores={infinity=5..},tag=limitless,c=1] at @s run particle ds:infinity_shatter
execute as @e[scores={infinity=5..},tag=limitless,c=1] at @s run particle ds:infinity_shatter2 ~~1~
execute as @e[scores={infinity=5..},tag=limitless,c=1] run scoreboard players set @s[family=gojo] ability1 1200
execute as @e[scores={infinity=5..},tag=limitless,c=1] at @s[tag=abilitying] run function abilitycancel


execute as @e[scores={infinity=5..},tag=limitless,c=1] at @s run playsound random.glass @a ~~~ 1 1.25
execute as @e[scores={infinity=5..},tag=limitless,c=1] at @s run camerashake add @a[r=5] 2 0.15
scoreboard players set @e[scores={infinity=4..},tag=limitless,c=1] infinity 3