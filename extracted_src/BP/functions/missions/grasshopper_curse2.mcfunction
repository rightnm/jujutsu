execute as @s at @s run summon ds:grasshopper_curse
execute as @s at @s run effect @e[type=ds:grasshopper_curse,c=1] resistance 999999 1 true
tellraw @a[tag=killquest_grasshopper_curse,r=40] {"rawtext":[{"text":"§e- Eliminate the Grasshopper Curse to complete your assigned mision!"}]} 
execute as @s at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.2 99999
camerashake add @a[r=40] 0.5 2
tickingarea remove grasshopper_quest
kill @s