
tag @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=0,Sneaking=0,detect_jump=0,strength=10..}] add form1
execute as @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,strength=10..}] at @s run tellraw @s {"rawtext":[{"text":"§cLiver Punch is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,strength=10..}] move 19
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,strength=10..}] ability1 140

tag @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability2=0,Sneaking=1..,agility=15..,strength=25..}] add form2
execute as @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=1..,Sneaking=1..,detect_jump=1..,agility=15..,strength=25..}] at @s run tellraw @s {"rawtext":[{"text":"§cDeadly Strikes is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=1..,agility=15..,strength=25..}] move 61
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=1..,agility=15..,strength=25..}] ability2 500

tag @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability3=0,Sneaking=0,agility=15..,strength=25..}] add form3
execute as @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=1..,Sneaking=0,detect_jump=1..,agility=15..,strength=25..}] at @s run tellraw @s {"rawtext":[{"text":"§cVanishing Blow is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,agility=15..,strength=25..}] move 111
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,agility=15..,strength=25..}] ability3 800

tag @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability4=0,Sneaking=1..,agility=15..,strength=30..}] add form4
execute as @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=1..,Sneaking=1..,detect_jump=0,agility=5..,strength=30..}] at @s run tellraw @s {"rawtext":[{"text":"§cDempsey Roll is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,agility=5..,strength=30..}] move 351
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,agility=5..,strength=30..}] ability4 3600
tag @s[tag=hrclick,hasitem={item=ds:hr1,location=slot.weapon.mainhand}] remove hrclick

tag @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability5=0,Sneaking=0,agility=10..}] add form5
execute as @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=1..,Sneaking=0,detect_jump=0,agility=10..}] at @s run tellraw @s {"rawtext":[{"text":"§cSwift Counter is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,detect_jump=0,agility=10..}] move 66
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,detect_jump=0,agility=10..}] ability5 700

tag @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability6=0,Sneaking=1..,agility=30..,strength=20..}] add form6
execute as @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=1..,Sneaking=1..,detect_jump=1..,agility=30..,strength=20..}] at @s run tellraw @s {"rawtext":[{"text":"§cSwift Kick is on cooldown: §e"},{"score":{"name": "@p","objective": "ability6"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,detect_jump=1..,agility=30..,strength=20..}] move 41
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,detect_jump=1..,agility=30..,strength=20..}] ability6 400

tag @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability7=0,Sneaking=0,agility=35..,strength=20..}] add form7
execute as @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=1..,Sneaking=0,detect_jump=1..,agility=35..,strength=20..}] at @s run tellraw @s {"rawtext":[{"text":"§cPreys Peril is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,agility=35..,strength=20..}] move 61
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,agility=35..,strength=20..}] ability7 800

tag @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability8=0,Sneaking=1..,agility=50..,strength=20..}] add form8
execute as @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=1..,Sneaking=1..,detect_jump=0,agility=50..,strength=20..}] at @s run tellraw @s {"rawtext":[{"text":"§cFlashstrike is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,detect_jump=0,agility=50..,strength=20..}] move 91
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,detect_jump=0,agility=50..,strength=20..}] ability8 800
tag @s[tag=hrclick,hasitem={item=ds:hr2,location=slot.weapon.mainhand}] remove hrclick

tag @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability9=0,Sneaking=0,strength=30..}] add form9
execute as @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=1..,Sneaking=0,detect_jump=0,strength=30..}] at @s run tellraw @s {"rawtext":[{"text":"§cGround Slam is on cooldown: §e"},{"score":{"name": "@p","objective": "ability9"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,detect_jump=0,strength=30..}] move 17
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,detect_jump=0,strength=30..}] ability9 450

tag @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability10=0,Sneaking=0,strength=40..,agility=10..}] add form10
execute as @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=1..,Sneaking=0,detect_jump=1..,strength=40..,agility=10..}] at @s run tellraw @s {"rawtext":[{"text":"§cFinal Hunt is on cooldown: §e"},{"score":{"name": "@p","objective": "ability10"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=0,Sneaking=0,detect_jump=1..,strength=40..,agility=10..}] move 66
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=0,Sneaking=0,detect_jump=1..,strength=40..,agility=10..}] ability10 900

tag @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability11=0,Sneaking=1..,strength=40..}] add form11
execute as @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=1..,Sneaking=1..,detect_jump=0,strength=40..}] at @s run tellraw @s {"rawtext":[{"text":"§cRock Kick is on cooldown: §e"},{"score":{"name": "@p","objective": "ability11"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=1..,detect_jump=0,strength=40..}] move 52
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=1..,detect_jump=0,strength=40..}] ability11 300

tag @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability12=0,Sneaking=1..,strength=40..,agility=40..}] add form12
execute as @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=1..,Sneaking=1..,detect_jump=1..,strength=40..,agility=40..}] at @s run tellraw @s {"rawtext":[{"text":"§cRubble Gatling is on cooldown: §e"},{"score":{"name": "@p","objective": "ability12"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Sneaking=1..,detect_jump=1..,strength=40..,agility=40..}] move 91
scoreboard players set @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Sneaking=1..,detect_jump=1..,strength=40..,agility=40..}] ability12 4800

tag @s[tag=hrclick,hasitem={item=ds:hr3,location=slot.weapon.mainhand}] remove hrclick
