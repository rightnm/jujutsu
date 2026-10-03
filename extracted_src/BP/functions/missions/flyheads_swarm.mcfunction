execute as @s at @s run summon ds:flyhead ~~4~
execute as @s at @s run summon ds:flyhead ~~4~
execute as @s at @s run summon ds:flyhead ~~4~
execute as @s at @s run summon ds:flyhead ~~4~
execute as @s at @s run summon ds:flyhead2 ~~4~
execute as @s at @s run summon ds:flyhead2 ~~4~
execute as @s at @s run summon ds:flyhead2 ~~4~
execute as @s at @s run summon ds:flyhead2 ~~4~
execute as @s at @s run summon ds:flyhead3 ~~4~
execute as @s at @s run summon ds:flyhead3 ~~4~
execute as @s at @s run summon ds:flyhead3 ~~4~
execute as @s at @s run summon ds:flyhead3 ~~4~
execute as @s at @s run summon ds:flyhead4 ~~4~
execute as @s at @s run summon ds:flyhead4 ~~4~
execute as @s at @s run summon ds:flyhead4 ~~4~
execute as @s at @s run summon ds:flyhead ~~4~
execute as @s at @s run summon ds:flyhead ~~4~
execute as @s at @s run summon ds:flyhead ~~4~
execute as @s at @s run summon ds:flyhead ~~4~
execute as @s at @s run summon ds:flyhead ~~4~
execute as @s at @s run summon ds:flyhead2 ~~4~
execute as @s at @s run summon ds:flyhead2 ~~4~
execute as @s at @s run summon ds:flyhead2 ~~4~
execute as @s at @s run summon ds:flyhead2 ~~4~
execute as @s at @s run summon ds:flyhead3 ~~4~
execute as @s at @s run summon ds:flyhead3 ~~4~
execute as @s at @s run summon ds:flyhead3 ~~4~
execute as @s at @s run summon ds:flyhead3 ~~4~
execute as @s at @s run summon ds:flyhead4 ~~4~
execute as @s at @s run summon ds:flyhead4 ~~4~
execute as @s at @s run summon ds:flyhead4 ~~4~
tellraw @a[tag=killquest_flyheads_infestation,r=40] {"rawtext":[{"text":"§e- Kill all the Flyheads in the area to complete your assigned mision!"}]} 
execute as @s at @s run spreadplayers ~ ~ 3 20 @e[family=pest,r=30]
execute as @s at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.2 99999
camerashake add @a[r=40] 0.5 2
tickingarea remove flyheads_quest
kill @s