stopsound @a[r=9,tag=curse,tag=!watching]
camera @a[r=9,tag=curse,tag=!watching] fade time 0 0.5 0.5 color 0 0 0
particle ds:dog_combine1
execute as @p[tag=curse,c=1,r=9,tag=!watching] at @s run title @s title ...
execute as @p[tag=curse,c=1,r=9,tag=!watching] at @s run title @s subtitle §l§o§4Oρҽɳ ყσυɾ ҽყҽʂ. Oρҽɳ ყσυɾ ҽყҽʂ. Oρҽɳ ყσυɾ ҽყҽʂ. Oρҽɳ ყσυɾ ҽყҽʂ. Oρҽɳ ყσυɾ ҽყҽʂ.
execute as @p[tag=curse,c=1,r=9,tag=!watching] at @s positioned ~ 275 ~ run fill ~4~-1~4~-4~4~-4 barrier [] hollow
execute as @p[tag=curse,c=1,r=9,tag=!watching] at @s positioned ~ 275 ~ run fill ~4~-3~4~-4~-2~-4 barrier
execute as @p[tag=curse,c=1,r=9,tag=!watching] at @s positioned ~ 275 ~3 run structure load mystructure:watcher ~~~
execute as @p[tag=curse,c=1,r=9,tag=!watching] at @s positioned ~ 275 ~3 run scoreboard players set @e[type=ds:watcher,c=1] Deleter 2400
execute as @p[tag=curse,c=1,r=9,tag=!watching] at @s run tp @p[tag=curse,c=1] ~ 275 ~ facing ~~1~-3
playsound mob.wither.hurt @a[r=100] ~~~ 99999 0.4 99999

