scoreboard players remove @s[scores={miracles=1..}] miracles 1
scoreboard players set @s Evasive 21
scoreboard players set @s detect_health 6
scoreboard players set @s Frames 40
effect @s instant_health 1 3 true
particle ds:miracles
playsound random.orb @s ~~~ 9999 1.5 9999
tellraw @s {"rawtext":[{"text":"§uYour Miracles technique saved you."}]}
