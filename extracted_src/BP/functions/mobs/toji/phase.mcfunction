playanimation @s[scores={cutscene=40..}] animation.toji.switch

tag @s[scores={cutscene=1..2},tag=switching] remove switching
scoreboard players set @s Frames 5
tp @s @s


scoreboard players add @s[scores={cutscene=25}] weapontype 1
scoreboard players set @s[scores={cutscene=1..25,weapontype=3..}] weapontype 1
replaceitem entity @s[scores={weapontype=1},hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand,quantity=0}] slot.weapon.mainhand 1 ds:inverted_spear
replaceitem entity @s[scores={weapontype=2},hasitem={item=ds:soul_sword,location=slot.weapon.mainhand,quantity=0}] slot.weapon.mainhand 1 ds:soul_sword


execute as @s[scores={cutscene=17,weapontype=1}] run playsound mob.worm @a[r=12] ~~~ 9999 1 9999
execute as @s[scores={cutscene=17,weapontype=2}] run playsound mob.worm @a[r=12] ~~~ 9999 0.9 9999
execute as @s[scores={cutscene=17,weapontype=1}] run playsound mob.worm @a[rm=12,r=50] ~~~ 0.15 1
execute as @s[scores={cutscene=17,weapontype=2}] run playsound mob.worm @a[rm=12,r=50] ~~~ 0.15 0.9