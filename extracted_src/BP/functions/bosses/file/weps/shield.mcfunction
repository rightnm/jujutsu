particle ds:dirt3 ~~1~
particle ds:shard_make1 ~~1~
particle ds:shard_make2 ~~1~
particle ds:shard_make3 ~~1~
playsound random.totem @a ~~~ 1 1.5
tag @s add shielded
tellraw @s {"rawtext":[{"text":"§oYou are protected for 5 seconds..."}]}
scoreboard players set @s Frames 100
scoreboard players set @s wep5 1800