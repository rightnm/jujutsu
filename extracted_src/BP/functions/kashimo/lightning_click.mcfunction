
tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,wep1=0,Sneaking=0,detect_jump=0,Energy=70..}] add wep1
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Energy=0..69,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,wep1=1..,Sneaking=0,detect_jump=0,Energy=70..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,wep1=1..,Sneaking=0,detect_jump=0,Energy=70..}] at @s run tellraw @s {"rawtext":[{"text":"§cLightning Palm is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,Energy=70..}] move 21
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,Energy=70..}] wep1 140
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Energy=70..,move=21,Sneaking=0,detect_jump=0}] Energy 70

tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,wep2=0,Energy=200..}] add wep2
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Sneaking=1..,detect_jump=0,Stun=0,Disabled2=0,wep2=0,Energy=0..199}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,wep2=1..,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,wep2=1..,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cBolt Barrage is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0,Energy=200..}] move 82
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0,Energy=200..}] wep2 800
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Energy=200..,move=82,Sneaking=1..,detect_jump=0}] Energy 200

tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,wep3=0,Sneaking=0,detect_jump=1..,Energy=150..}] add wep3
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Energy=0..149,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,wep3=1..,Sneaking=0,detect_jump=1..,Energy=150..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,wep3=1..,Sneaking=0,detect_jump=1..,Energy=150..}] at @s run tellraw @s {"rawtext":[{"text":"§cSpeedblitz is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..,Energy=150..}] move 41
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..,Energy=150..}] wep3 350
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand},scores={Energy=150..,move=41,Sneaking=0,detect_jump=1..}] Energy 150
tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] remove lightningclick





tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=0,Sneaking=0,detect_jump=0,Energy=75..}] add form1
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..74,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=75..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=75..}] at @s run tellraw @s {"rawtext":[{"text":"§cThis Lightning attack is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=75..}] move 21
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=75..}] ability1 40
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Energy=75..,move=21,Sneaking=0,detect_jump=0}] Energy 75

tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability1=0,Sneaking=1..,detect_jump=0,Energy=120..}] add form1b
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..119,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability1=1..,Sneaking=1..,detect_jump=0,Energy=120..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability1=1..,Sneaking=1..,detect_jump=0,Energy=120..}] at @s run tellraw @s {"rawtext":[{"text":"§cThis Lightning attack is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,detect_jump=0,Energy=120..}] move 36
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,detect_jump=0,Energy=120..}] ability1 160
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Energy=120..,move=36,Sneaking=1..,detect_jump=0}] Energy 120

tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=1..,Energy=200..}] add form1c
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..199,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability1=1..,Sneaking=0,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability1=1..,Sneaking=0,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cThis Lightning attack is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=1..,Energy=200..}] move 81
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=1..,Energy=200..}] ability1 340
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Energy=200..,move=81,Sneaking=0,detect_jump=1..}] Energy 200


tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,detect_jump=1..,Energy=600..}] add form1d
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..599,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability1=1..,Sneaking=1..,Energy=600..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1..,ability1=1..,Sneaking=1..,Energy=600..}] at @s run tellraw @s {"rawtext":[{"text":"§cThis Lightning attack is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,detect_jump=1..,Energy=600..}] move 91
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,detect_jump=1..,Energy=600..}] ability1 700
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand},scores={Energy=600..,move=91,Sneaking=1..,detect_jump=1..}] Energy 600
tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning2,location=slot.weapon.mainhand}] remove lightningclick




tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability2=0,Sneaking=0,detect_jump=0,Energy=200..}] add form2
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..199,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability2=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability2=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cLightning Cloak is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,detect_jump=0,Energy=200..}] move 72
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,detect_jump=0,Energy=200..}] ability2 1200
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning3,location=slot.weapon.mainhand},scores={Energy=200..,move=72,Sneaking=0,detect_jump=0}] Energy 200
tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning3,location=slot.weapon.mainhand}] remove lightningclick


tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability3=0,Sneaking=0,detect_jump=0,Energy=750..}] add beastawakening
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..749,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability3=1..,Sneaking=0,detect_jump=0,Energy=750..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability3=1..,Sneaking=0,detect_jump=0,Energy=750..}] at @s run tellraw @s {"rawtext":[{"text":"§cMythical Beast Amber is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=0,Energy=750..}] move 131
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=0,Energy=750..}] ability3 24000
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning4,location=slot.weapon.mainhand},scores={Energy=750..,move=131,Sneaking=0,detect_jump=0}] Energy 750
tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning4,location=slot.weapon.mainhand}] remove lightningclick


tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability4=0,Sneaking=0,detect_jump=0,Energy=100..}] add form4a
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..99,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability4=1..,Sneaking=0,detect_jump=0,Energy=100..}] at @s run playsound note.pling @s ~~~ 0.05 0.5
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability4=1..,Sneaking=0,detect_jump=0,Energy=100..}] at @s run tellraw @s {"rawtext":[{"text":"§cCyclone Blitz is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=0,detect_jump=0,Energy=100..}] move 41
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=0,detect_jump=0,Energy=100..}] ability4 200
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Energy=100..,move=41,Sneaking=0,detect_jump=0}] Energy 100

tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,detect_jump=0,Energy=250..}] add form4b
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..249,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability5=1..,Sneaking=1..,detect_jump=0,Energy=250..}] at @s run playsound note.pling @s ~~~ 0.05 0.5
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability5=1..,Sneaking=1..,detect_jump=0,Energy=250..}] at @s run tellraw @s {"rawtext":[{"text":"§cRising Thunder is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,detect_jump=0,Energy=250..}] move 81
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,detect_jump=0,Energy=250..}] ability5 200
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Energy=250..,move=81,Sneaking=1..,detect_jump=0}] Energy 250

tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,detect_jump=1..,Energy=300..}] add form4c
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Energy=0..299,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability6=1..,Sneaking=0,detect_jump=1..,Energy=300..}] at @s run playsound note.pling @s ~~~ 0.05 0.5
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability6=1..,Sneaking=0,detect_jump=1..,Energy=300..}] at @s run tellraw @s {"rawtext":[{"text":"§cThunderclap is on cooldown: §e"},{"score":{"name": "@p","objective": "ability6"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,detect_jump=1..,Energy=300..}] move 106
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,detect_jump=1..,Energy=300..}] ability6 600
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand},scores={Energy=300..,move=106,Sneaking=0,detect_jump=1..}] Energy 300
tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning5,location=slot.weapon.mainhand}] remove lightningclick

tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=0,Energy=100..}] add form5a
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..99,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.06 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability7=1..,Sneaking=0,detect_jump=0,Energy=100..}] at @s run playsound note.pling @s ~~~ 0.06 0.6
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability7=1..,Sneaking=0,detect_jump=0,Energy=100..}] at @s run tellraw @s {"rawtext":[{"text":"§cEnergy Wave is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=0,Energy=100..}] move 21
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=0,Energy=100..}] ability7 400
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Energy=100..,move=21,Sneaking=0,detect_jump=0}] Energy 100

execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,Energy=200..},tag=!mythicalbeastamber] at @s run tellraw @s {"rawtext":[{"text":"§cYou can only use this attack when your Mythical Beast Amber transformation is complete!"}]}
tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,detect_jump=1..,Energy=200..},tag=mythicalbeastamber] add form5b
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Energy=0..199,Sneaking=0,detect_jump=1..},tag=mythicalbeastamber] at @s run playsound note.pling @s ~~~ 0.06 0.88
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability8=1..,Sneaking=0,detect_jump=1..,Energy=200..},tag=mythicalbeastamber] at @s run playsound note.pling @s ~~~ 0.06 0.6
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability8=1..,Sneaking=0,detect_jump=1..,Energy=200..},tag=mythicalbeastamber] at @s run tellraw @s {"rawtext":[{"text":"§cEnergy Wave is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,detect_jump=1..,Energy=200..},tag=mythicalbeastamber] move 121
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,detect_jump=1..,Energy=200..},tag=mythicalbeastamber] ability8 600
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Energy=200..,move=121,Sneaking=0,detect_jump=1..},tag=mythicalbeastamber] Energy 200

execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,Energy=350..},tag=!mythicalbeastamber] at @s run tellraw @s {"rawtext":[{"text":"§cYou can only use this attack when your Mythical Beast Amber transformation is complete!"}]}
tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,detect_jump=0,Energy=350..},tag=mythicalbeastamber] add form5c
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Energy=0..349,Sneaking=1..,detect_jump=0},tag=mythicalbeastamber] at @s run playsound note.pling @s ~~~ 0.06 0.88
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability9=1..,Sneaking=1..,detect_jump=0,Energy=350..},tag=mythicalbeastamber] at @s run playsound note.pling @s ~~~ 0.06 0.6
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability9=1..,Sneaking=1..,detect_jump=0,Energy=350..},tag=mythicalbeastamber] at @s run tellraw @s {"rawtext":[{"text":"§cElectro-Magnetic Thunder Cannon is on cooldown: §e"},{"score":{"name": "@p","objective": "ability9"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,detect_jump=0,Energy=350..},tag=mythicalbeastamber] move 201
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,detect_jump=0,Energy=350..},tag=mythicalbeastamber] ability9 12000
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand},scores={Energy=350..,move=201,Sneaking=1..,detect_jump=0},tag=mythicalbeastamber] Energy 350
tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning6,location=slot.weapon.mainhand}] remove lightningclick


execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={Sneaking=0,domainstart=1..}] at @s if entity @e[tag=domainlayout,r=48,rm=0.5] run function domainloser2

tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..}] add form6
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..799,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.06 0.88
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=800..}] at @s run playsound note.pling @s ~~~ 0.06 0.6
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=800..}] at @s run tellraw @s {"rawtext":[{"text":"§cDomain Expansion is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..}] domainstart 101
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..}] domainCD 12000
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={Energy=800..,domainstart=101,Sneaking=0,detect_jump=0}] Energy 800

execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[name=StormDomain] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[name=StormDomain] run stopsound @s[r=100] music.storm
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run scoreboard players set @e[name=StormDomain,c=1] Deleter 31

tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:lightning7,location=slot.weapon.mainhand}] remove lightningclick
