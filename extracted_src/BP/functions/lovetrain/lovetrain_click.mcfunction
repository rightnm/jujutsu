
tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=0,Sneaking=0,detect_jump=0,Energy=50..}] add form1
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..49,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cShutter Doors are on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=50..}] move 21
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=50..}] ability1 140
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Energy=50..,move=21,Sneaking=0,detect_jump=0}] Energy 50

tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1,ability1=0,Energy=120..}] add form1b
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Sneaking=0,detect_jump=1,Stun=0,Disabled2=0,ability1=0,Energy=0..119}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1,ability1=1..,Energy=120..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1,ability1=1..,Energy=120..}] at @s run tellraw @s {"rawtext":[{"text":"§cShutter Doors are on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=1,Energy=120..}] move 21
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=1,Energy=120..}] ability1 400
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Energy=120..,move=21,Sneaking=0,detect_jump=1}] Energy 120

tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability1=0,Energy=100..}] add form1c
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Sneaking=1..,detect_jump=0,Stun=0,Disabled2=0,ability1=0,Energy=0..99}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability1=1..,Energy=100..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability1=1..,Energy=100..}] at @s run tellraw @s {"rawtext":[{"text":"§cShutter Doors are on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,detect_jump=0,Energy=120..}] move 21
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,detect_jump=0,Energy=100..}] ability1 200
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand},scores={Stun=0,Energy=00..,move=21,Sneaking=1..,detect_jump=0}] Energy 100
tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain1,location=slot.weapon.mainhand}] remove lovetrainclick



tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability2=0,Sneaking=0,detect_jump=0,Energy=100..}] add form2
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..99,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability2=1..,Sneaking=0,detect_jump=0,Energy=100..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability2=1..,Sneaking=0,detect_jump=0,Energy=100..}] at @s run tellraw @s {"rawtext":[{"text":"§cPachinko Balls are on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,detect_jump=0,Energy=100..}] move 36
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,detect_jump=0,Energy=100..}] ability2 220
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Energy=100..,move=36,Sneaking=0,detect_jump=0}] Energy 100

tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1,ability2=0,Sneaking=0,detect_jump=1,Energy=120..}] add form2b
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..119,Sneaking=0,detect_jump=1}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1,ability2=1..,Sneaking=0,detect_jump=1,Energy=120..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1,ability2=1..,Sneaking=0,detect_jump=1,Energy=120..}] at @s run tellraw @s {"rawtext":[{"text":"§cPachinko Balls are on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,detect_jump=1,Energy=120..}] move 21
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,detect_jump=1,Energy=120..}] ability2 250
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Energy=120..,move=21,Sneaking=0,detect_jump=1}] Energy 120

tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=300..}] add form2c
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..299,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=1..,Sneaking=1..,detect_jump=0,Energy=300..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=1..,Sneaking=1..,detect_jump=0,Energy=300..}] at @s run tellraw @s {"rawtext":[{"text":"§cPachinko Balls are on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=300..}] move 36
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=300..}] ability2 400
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand},scores={Energy=300..,move=36,Sneaking=1..,detect_jump=0}] Energy 300
tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain2,location=slot.weapon.mainhand}] remove lovetrainclick

tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability3=0,Sneaking=0,detect_jump=0,Energy=250..}] add form3
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..249,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability3=1..,Sneaking=0,detect_jump=0,Energy=250..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability3=1..,Sneaking=0,detect_jump=0,Energy=250..}] at @s run tellraw @s {"rawtext":[{"text":"§cSlot Slam is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=0,Energy=250..}] move 21
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=0,Energy=250..}] ability3 400
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Energy=250..,move=21,Sneaking=0,detect_jump=0}] Energy 250

tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability3=0,Sneaking=1..,detect_jump=0,Energy=150..}] add form3b
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..149,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability3=1..,Sneaking=1..,detect_jump=0,Energy=150..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability3=1..,Sneaking=1..,detect_jump=0,Energy=150..}] at @s run tellraw @s {"rawtext":[{"text":"§cSlot Slam is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,detect_jump=0,Energy=150..}] move 31
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,detect_jump=0,Energy=150..}] ability3 400
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand},scores={Energy=150..,move=31,Sneaking=1..,detect_jump=0}] Energy 150
tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain3,location=slot.weapon.mainhand}] remove lovetrainclick

tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability4=0,Sneaking=0,detect_jump=0,Energy=200..}] add form4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..199,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability4=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability4=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cCargo Haul is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=0,detect_jump=0,Energy=200..}] move 37
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=0,detect_jump=0,Energy=200..}] ability4 500
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain4,location=slot.weapon.mainhand},scores={Energy=200..,move=37,Sneaking=0,detect_jump=0}] Energy 200
tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain4,location=slot.weapon.mainhand}] remove lovetrainclick


tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..}] add form5
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..799,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=800..}] at @s run playsound note.pling @s ~~~ 0.05 0.5
execute as @s[tag=lovetrainclick,hasitem={item=ds:lovetrain5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=800..}] at @s run tellraw @s {"rawtext":[{"text":"§cIdle Death Gamble is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..}] domainstart 101
scoreboard players set @s[tag=lovetrainclick,hasitem={item=ds:lovetrain5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..}] domainCD 4000
scoreboard players remove @s[tag=lovetrainclick,hasitem={item=ds:lovetrain5,location=slot.weapon.mainhand},scores={Energy=800..,domainstart=101,Sneaking=0,detect_jump=0}] Energy 800
tag @s[tag=lovetrainclick,hasitem={item=ds:lovetrain5,location=slot.weapon.mainhand}] remove lovetrainclick

