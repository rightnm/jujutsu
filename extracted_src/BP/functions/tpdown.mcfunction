scoreboard players set @s[scores={move=1..},tag=allowedhighup] tpdown 0
camera @s fade time 0 0.3 0.25 color 255 255 255
scoreboard players set @s tpdown 3
execute as @s[y=297,dy=320] at @s run fill~15~15~15~-15~-15~-15 air
fill ~33~-3~33~-33~1~-33 air [] replace barrier
fill ~30 301 ~30 ~-30 298 ~-30 air
fill ~30 299 ~30 ~-30 299 ~-30 air
fill ~30 301 ~30 ~-30 298 ~-30 air
fill ~30 302 ~30 ~-30 299 ~-30 air
fill ~30 300 ~30 ~-30 297 ~-30 air
tp @s ~~-30~
tag @s remove domainactive
scoreboard players set @s domainactive 0
scoreboard players set @s Frames 10