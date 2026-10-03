scoreboard players set @a[scores={Sneaking=1}] doublesneak 25
scoreboard players set @a[scores={Sneaking=0,doublesneak=1..}] detect_doublesneak 1
execute as @a[scores={doublesneak=0}] at @s unless entity @s[scores={detect_doublesneak=0}] run scoreboard players set @s detect_doublesneak 0
tag @a[scores={Sneaking=1,doublesneak=1..,detect_doublesneak=1..},tag=!doublesneak] add doublesneak