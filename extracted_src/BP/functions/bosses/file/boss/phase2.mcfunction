tag @s remove scythecombo1
tag @s remove scythecombo1_fast
camerashake add @a[r=100] 4 0.25 rotational
playsound mob.wither.ambient @a ~~1~ 99999 0.8 99999
camera @a[r=200] fade time 0 0 0.25 color 0 0 0
effect @a[r=200] darkness 3 1 true
function bosses/file/boss/phase2dialogue
scoreboard players set @s phase 2
scoreboard players set @s move 0
scoreboard players set @s cycle 4