execute as @s at @s run summon ds:capture_point "capture_point_sorcerer"
tellraw @a[tag=capture_point,r=40] {"rawtext":[{"text":"§e- Stay within the marked area and keep curses out!"}]} 
execute as @s at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.2 99999
camerashake add @a[r=40] 0.5 2
tickingarea remove capture_point
kill @s