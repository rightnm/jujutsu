clear @s[hasitem={item=ds:amberbeast2}] ds:amberbeast2
clear @s[hasitem={item=ds:amberbeast2a}] ds:amberbeast2a
clear @s[hasitem={item=ds:amberbeastfull}] ds:amberbeastfull
clear @s[hasitem={item=ds:amberbeastfulla}] ds:amberbeastfulla
clear @s[hasitem={item=ds:lightning5}] ds:lightning5
clear @s[hasitem={item=ds:lightning6}] ds:lightning6

tag @s[tag=mythicalbeastamber] remove mythicalbeastamber

particle ds:lightning_area1a ~~1~
particle ds:finger_awaken1 ~~1~
particle ds:finger_awaken2 ~~1~
particle ds:finger_awaken3 ~~1~
playsound mob.wither.ambient @a ~~~ 1 0.5
scoreboard players set @s countdown1 0
scoreboard players set @s countdown2 0
scoreboard players set @s countdown3 0
scoreboard players set @s ltncloak 0
scoreboard players set @s Energy 0
scoreboard players set @s amberbeast 0
scoreboard players set @s dying 5
