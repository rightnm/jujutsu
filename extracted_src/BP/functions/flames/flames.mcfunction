execute as @e[type=ds:projectile,name=firewall,c=4] at @s run function flames/firewall
execute as @e[type=ds:ember_insect,c=1] run function flames/ember_insects
execute as @e[type=ds:projectile,name=Fireball] run function flames/fireball
execute as @e[type=ds:projectile,name=SunfireBomb] run function flames/sunfirebomb

execute as @e[type=ds:lava_wave,name="Molten Wave"] at @s run function flames/lava_wave


execute as @a[c=1,tag=flames,hasitem={item=ds:flames_technique,location=slot.weapon.mainhand},tag=doublesneak,scores={detect_left=0},has_property={property:volcano_head=1}] at @s run event entity @s volcano_headtextureoff
execute as @a[c=1,tag=flames,hasitem={item=ds:flames_technique,location=slot.weapon.mainhand},tag=doublesneak,scores={ddetect_left=1..},has_property={property:volcano_head=0}] at @s run event entity @s volcano_head

tag @a[c=1,tag=flames,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=0,punch=1,Energy=400..}] add form1d
execute as @a[c=1,tag=flames,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=1..,punch=1,Energy=400..}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[c=1,tag=flames,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=1..,punch=1,Energy=400..}] at @s run tellraw @s {"rawtext":[{"text":"§cFlash-Fire Heatwave is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @a[c=1,tag=flames,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=0,punch=1,Energy=400..}] move 31
scoreboard players set @a[c=1,tag=flames,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=0,punch=1}] ability1 2400
scoreboard players remove @a[c=1,tag=flames,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,punch=1,Energy=400..,move=31}] Energy 400

execute as @e[type=ds:geyser,c=1] at @s run function flames/geysers

execute as @e[type=ds:iron_mountain] at @s run function flames/iron_mountain