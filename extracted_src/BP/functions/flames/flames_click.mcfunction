
tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=0,Sneaking=0,Energy=200..,detect_jump=0}] add form1
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..199,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=200..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=200..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cWildfire Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=200..,detect_jump=0}] move 41
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=200..,detect_jump=0}] ability1 600
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Energy=200..,move=41,Sneaking=0,detect_jump=0}] Energy 200

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=0,Sneaking=0,Energy=100..,detect_jump=1..}] add form1b
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..99,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=100..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=100..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cWildfire Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=100..,detect_jump=1..}] move 31
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=100..,detect_jump=1..}] ability1 100
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Energy=100..,move=31,Sneaking=0,detect_jump=1..}] Energy 100

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=0,Sneaking=1..,Energy=200..,detect_jump=0}] add form1c
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..199,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cWildfire Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,Energy=200..,detect_jump=0}] move 61
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,Energy=200..,detect_jump=0}] ability1 200
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Energy=200..,move=61,Sneaking=1..,detect_jump=0}] Energy 200

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=0,Sneaking=1..,Energy=800..,detect_jump=1..}] add form1e
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..799,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=1..,Sneaking=1..,Energy=800..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=1..,Sneaking=1..,Energy=800..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cWildfire Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,Energy=800..,detect_jump=1..}] move 152
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,Energy=800..,detect_jump=1..}] ability1 2400
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames1,location=slot.weapon.mainhand},scores={Energy=800..,move=152,Sneaking=1..,detect_jump=1..}] Energy 800



tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=0,Sneaking=0,Energy=100..,detect_jump=0}] add form2
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..99,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=1..,Sneaking=0,Energy=100..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=1..,Sneaking=0,Energy=100..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cEmber Insects are on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=100..,detect_jump=0}] move 11
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=100..,detect_jump=0}] ability2 600
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Energy=100..,move=11,Sneaking=0,detect_jump=0}] Energy 100


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,Energy=50..,detect_jump=0}] add form2b
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..49,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability3=1..,Sneaking=1..,Energy=50..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability3=1..,Sneaking=1..,Energy=50..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cVolcanic Geysers are on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,Energy=50..,detect_jump=0}] move 11
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,Energy=50..,detect_jump=0}] ability3 120
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Energy=50..,move=11,Sneaking=1..,detect_jump=0}] Energy 50


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=200..,detect_jump=1..}] add form2c
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..199,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Energy=200..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Energy=200..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cVolcanic Geysers are on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=200..,detect_jump=1..}] move 14
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=200..,detect_jump=1..}] ability3 600
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames2,location=slot.weapon.mainhand},scores={Energy=200..,move=14,Sneaking=0,detect_jump=1..}] Energy 200


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Sneaking=0,Energy=75..,detect_jump=0},tag=uplook] add form3
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..74,Sneaking=0,detect_jump=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,Energy=75..,detect_jump=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,Energy=75..,detect_jump=0},tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cRanged Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=75..,detect_jump=0},tag=uplook] move 66
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=75..,detect_jump=0},tag=uplook] ability3 80
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Energy=75..,move=66,Sneaking=0,detect_jump=0},tag=uplook] Energy 75

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Sneaking=0,Energy=100..,detect_jump=1..},tag=uplook] add form3b
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..99,Sneaking=0,detect_jump=1..},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,Energy=100..,detect_jump=1..},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,Energy=100..,detect_jump=1..},tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cRanged Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=100..,detect_jump=1..},tag=uplook] move 46
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=100..,detect_jump=1..},tag=uplook] ability3 300
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Energy=100..,move=46,Sneaking=0,detect_jump=1..},tag=uplook] Energy 100

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability3=0,Energy=200..,detect_jump=0},tag=uplook] add form3c
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..199,Sneaking=1..,detect_jump=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability3=1..,Sneaking=1..,Energy=200..,detect_jump=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability3=1..,Sneaking=1..,Energy=200..,detect_jump=0},tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cRanged Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,Energy=200..,detect_jump=0},tag=uplook] move 26
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,Energy=200..,detect_jump=0},tag=uplook] ability3 80
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Energy=200..,move=26,Sneaking=1..,detect_jump=0},tag=uplook] Energy 200

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability4=0,Energy=400..,detect_jump=0},tag=!uplook] add form3d
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..399,Sneaking=1..,detect_jump=0},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability4=1..,Sneaking=1..,Energy=400..,detect_jump=0},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability4=1..,Sneaking=1..,Energy=400..,detect_jump=0},tag=!uplook] at @s run tellraw @s {"rawtext":[{"text":"§cPyro Cannon is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,Energy=400..,detect_jump=0},tag=!uplook] move 26
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,Energy=400..,detect_jump=0},tag=!uplook] ability4 800
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames3,location=slot.weapon.mainhand},scores={Energy=400..,move=26,Sneaking=1..,detect_jump=0},tag=!uplook] Energy 400


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Sneaking=0,Energy=125..,detect_jump=0}] add form4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..124,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Sneaking=0,Energy=125..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Sneaking=0,Energy=125..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cExplosive Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,Energy=125..,detect_jump=0}] move 21
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,Energy=125..,detect_jump=0}] ability5 80
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Energy=125..,move=125,Sneaking=0,detect_jump=0}] Energy 125

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Sneaking=0,Energy=200..,detect_jump=1..}] add form4b
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..199,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Sneaking=0,Energy=200..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Sneaking=0,Energy=200..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cExplosive Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,Energy=200..,detect_jump=1..}] move 46
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,Energy=200..,detect_jump=1..}] ability5 400
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Energy=200..,move=46,Sneaking=0,detect_jump=1..}] Energy 200

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=200..,detect_jump=0}] add form4c
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..199,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cExplosive Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=200..,detect_jump=0}] move 31
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=200..,detect_jump=0}] ability5 400
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Energy=200..,move=31,Sneaking=1..,detect_jump=0}] Energy 200

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability6=0,Sneaking=1..,Energy=800..,detect_jump=1..}] add form4d
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Energy=0..799,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability6=1..,Sneaking=1..,Energy=800..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability6=1..,Sneaking=1..,Energy=800..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cStoic Bomb is on cooldown: §e"},{"score":{"name": "@p","objective": "ability6"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,Energy=800..,detect_jump=1..}] move 141
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,Energy=800..,detect_jump=1..}] ability6 2400
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames4,location=slot.weapon.mainhand},scores={Energy=800..,move=141,Sneaking=1..,detect_jump=1..}] Energy 800


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=100..,detect_jump=0}] add form5b
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..99,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=1..,Sneaking=0,Energy=100..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=1..,Sneaking=0,Energy=100..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cMolten Lava is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=100..,detect_jump=0}] move 21
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=100..,detect_jump=0}] ability7 500
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,move=21,Sneaking=0,Energy=100..,detect_jump=0}] Energy 100


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,Energy=200..,detect_jump=0}] add form5
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..199,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability7=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability7=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cMolten Lava is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,Energy=200..,detect_jump=0}] move 21
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,Energy=200..,detect_jump=0}] ability7 600
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Energy=200..,move=21,Sneaking=1..,detect_jump=0}] Energy 200


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=200..,detect_jump=1..}] add form5c
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..199,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=1..,Sneaking=0,Energy=200..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability7=1..,Sneaking=0,Energy=200..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cMolten Lava is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=200..,detect_jump=1..}] move 36
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=200..,detect_jump=1..}] ability7 500
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Energy=200..,move=36,Sneaking=0,detect_jump=1..}] Energy 200


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,Energy=800..,detect_jump=1..}] add form5d
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Energy=0..799,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability8=1..,Sneaking=1..,Energy=800..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability8=1..,Sneaking=1..,Energy=800..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cMolten Crush is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,Energy=800..,detect_jump=1..}] move 51
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,Energy=800..,detect_jump=1..}] ability8 1300
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames5,location=slot.weapon.mainhand},scores={Energy=800..,move=51,Sneaking=1..,detect_jump=1..}] Energy 800


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,Energy=500..,detect_jump=0}] add form6
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Energy=0..499,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability9=1..,Sneaking=0,Energy=500..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability9=1..,Sneaking=0,Energy=500..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cMaximum Techniques are on cooldown: §e"},{"score":{"name": "@p","objective": "ability9"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,Energy=500..,detect_jump=0}] move 81
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,Energy=500..,detect_jump=0}] ability9 750
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Energy=500..,move=81,Sneaking=0,detect_jump=0}] Energy 500

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,Energy=800..,detect_jump=1}] add form6b
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Energy=0..799,Sneaking=0,detect_jump=1}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability9=1..,Sneaking=0,Energy=800..,detect_jump=1}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability9=1..,Sneaking=0,Energy=800..,detect_jump=1}] at @s run tellraw  @s {"rawtext":[{"text":"§cMaximum Techniques are on cooldown: §e"},{"score":{"name": "@p","objective": "ability9"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,Energy=800..,detect_jump=1}] move 41
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,Energy=800..,detect_jump=1}] ability9 2000
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Energy=800..,move=41,Sneaking=0,detect_jump=1..}] Energy 800


tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,Energy=1200..,detect_jump=0}] add form6c
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Energy=0..1199,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability9=1..,Sneaking=1..,Energy=1200..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability9=1..,Sneaking=1..,Energy=1200..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cMaximum Techniques are on cooldown: §e"},{"score":{"name": "@p","objective": "ability9"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,Energy=1200..,detect_jump=0}] move 321
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,Energy=1200..,detect_jump=0}] ability9 12000
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames6,location=slot.weapon.mainhand},scores={Energy=1200..,move=321,Sneaking=1..,detect_jump=0}] Energy 1200


execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={Sneaking=0,domainstart=1..}] at @s if entity @e[tag=domainlayout,r=48,rm=0.5] run function domainloser2

tag @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..}] add form7
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..799,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.06 0.88
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=800..}] at @s run playsound note.pling @s ~~~ 0.06 0.6
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=800..}] at @s run tellraw @s {"rawtext":[{"text":"§cDomain Expansion is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..}] domainstart 101
scoreboard players set @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..}] domainCD 12000
scoreboard players remove @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={Energy=800..,domainstart=101,Sneaking=0,detect_jump=0}] Energy 800

execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:iron_mountain] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:iron_mountain] run stopsound @s[r=100] music.jogodomain2
execute as @s[tag=!nocts,tag=flamesclick,hasitem={item=ds:flames7,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run scoreboard players set @e[type=ds:iron_mountain,c=1] Deleter 31


tag @s[tag=flamesclick] remove flamesclick