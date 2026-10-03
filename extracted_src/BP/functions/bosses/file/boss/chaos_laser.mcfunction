playanimation @s[scores={move=65..}] animation.chaos_laser

execute as @s[scores={move=6..53}] at @s run tp @s ~~~ ~4

execute as @s[scores={move=60}] at @s run particle ds:invert
execute as @s[scores={move=60}] at @s run summon gg:impact_frame


execute as @s[scores={move=57}] at @s run particle ds:invert
execute as @s[scores={move=55}] at @s run summon gg:impact_frame
execute as @s[scores={move=53}] at @s run particle ds:invert

execute as @s[scores={move=64..65}] at @s run playsound mob.eye @a[r=300] ~~~ 99999 0.25 99999
execute as @s[scores={move=60..61}] at @s run execute as @a[r=200] at @s run playsound music.laser1 @s ~~~ 99999 2.75 99999

execute as @s[scores={move=55..60}] at @s run fog @a remove reality_arena

execute as @s[scores={move=60}] at @s run camera @a[r=200] fade time 0.1 0.1 0.1 color 255 255 255
execute as @s[scores={move=54..55}] at @s run tag @a[r=200] remove darkness
execute as @s[scores={move=54..55}] at @s run effect @a[r=200] night_vision 7 1 true
execute as @s[scores={move=1..5}] at @s run tag @a[r=200] add darkness
execute as @s[scores={move=6..50}] at @s run camerashake add @a[r=200] 2 0.15

execute as @s[scores={move=6..53}] at @s positioned ^^^10 run function bosses/file/boss/chaos_laser_dmg