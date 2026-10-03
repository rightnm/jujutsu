tellraw @s {"rawtext":[{"text":"§r§6§l- Divine Flames are ready"}]}
playsound mob.blaze.death @a[r=100] ~~~ 99999 0.35 99999
particle ds:fuga_ready ~~1~
particle ds:fuga_ready1 ~~1~
particle ds:fuga_ready2 ~~1~
particle ds:fuga_ready3 ~~1~
camerashake add @a[r=100] 2 0.15
tag @s add fugaready
