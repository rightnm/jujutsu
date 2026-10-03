particle ds:improvised_purple_end2
particle ds:improvised_purple_end3
tp @e[name=fuga_arrow1] ~~~
particle ds:limitless_explode1
particle ds:limitless_explode2
particle ds:limitless_explode3
particle ds:improvised_purple_end1
particle ds:nuke_purple_explode1
particle ds:nuke_purple_explode2
particle ds:nuke_purple_explode3
damage @e[r=50,tag=!limitless] 100 override
damage @e[r=50,tag=limitless] 40 override
execute if entity @p[tag=griefable] run kill @e[type=item,r=150]
execute if entity @p[tag=griefable] run kill @e[type=xp_orb,r=150]
camerashake add @a 4 1 rotational
summon gg:impact_frame
playsound mob.shock1 @a ~~~ 99999 0.5 99999
playsound mob.shock1 @a ~~~ 99999 0.25 99999
execute if entity @p[tag=griefable] run function 32x32sphere
execute if entity @p[tag=griefable] run fill ~5~5~5~-5~-5~-5 air
scoreboard players set @s[name=fuga_arrow1,c=1] Deleter 9
kill @s