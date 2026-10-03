playanimation @s[scores={cutscene=40..}] animation.maki.switch

tag @s[scores={cutscene=1..2}] remove switching

scoreboard players set @s Frames 5
execute as @s at @s run tp @s @s

execute as @s[scores={cutscene=30}] at @s run event entity @s soul_sword_off
execute as @s[scores={cutscene=39..}] at @s run scoreboard objectives add weapontype dummy
scoreboard players set @s[scores={cutscene=1..31}] weapontype 2
replaceitem entity @s[scores={weapontype=2}] slot.weapon.mainhand 1 ds:soul_sword

execute as @s[scores={cutscene=30,weapontype=2}] run playsound armor.equip_iron @a[r=50] ~~~ 9999 1 9999