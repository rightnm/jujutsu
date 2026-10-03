
tag @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=0,Sneaking=0,Energy=50..,detect_jump=0}] add form1
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..49,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=50..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,Energy=50..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cInfinity is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=50..,detect_jump=0}] move 15
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=50..,detect_jump=0}] ability1 1200
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Energy=50..,move=15,Sneaking=0,detect_jump=0}] Energy 50

tag @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=0,Energy=60..}] add form1b
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Sneaking=1..,Stun=0,Disabled2=0,ability1=0,Energy=0..59}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=1..,Energy=60..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability1=1..,Energy=60..}] at @s run tellraw @s {"rawtext":[{"text":"§cInfinity is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,Energy=60..}] move 81
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,Energy=60..}] ability1 500
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Energy=60..,move=81,Sneaking=1..}] Energy 60

tag @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1,Energy=50..},tag=!nocts] add form1c
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=1,Energy=50..},tag=!nocts] move 15
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand},scores={Energy=50..,move=15,detect_jump=1},tag=!nocts] Energy 50
tag @s[tag=limitlessclick,hasitem={item=ds:limitless1,location=slot.weapon.mainhand}] remove limitlessclick


tag @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=0,Sneaking=0,Energy=50..,detect_jump=0}] add form2
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Energy=0..49,ability2=0,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,Energy=50..,detect_jump=0,ability2=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,Energy=50..,detect_jump=0,ability2=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cLapse Blue is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=50..,detect_jump=0}] move 21
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=50..,detect_jump=0}] ability2 250
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Energy=50..,move=21,Sneaking=0,detect_jump=0,ability2=1..}] Energy 50

tag @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=0,Sneaking=0,Energy=50..,detect_jump=1}] add form2c
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..49,Sneaking=0,detect_jump=1}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=1..,Energy=50..,detect_jump=1}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability2=1..,Energy=50..,detect_jump=1}] at @s run tellraw @s {"rawtext":[{"text":"§cLapse Blue is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=50..,detect_jump=1}] move 21
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=50..,detect_jump=1}] ability2 240
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Energy=50..,move=21,Sneaking=0,detect_jump=1}] Energy 50


tag @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=0,Energy=250..},tag=!uplook] add form2b
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Sneaking=1..,Stun=0,Disabled2=0,ability2=0,Energy=0..249},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=1..,Energy=250..},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=1..,Energy=250..},tag=!uplook] at @s run tellraw @s {"rawtext":[{"text":"§cLapse Blue is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,Energy=250..},tag=!uplook] move 141
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,Energy=250..},tag=!uplook] ability2 400
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Energy=250..,move=141,Sneaking=1..},tag=!uplook] Energy 250


tag @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability7=0,Energy=300..},tag=uplook,tag=sixeyes] add form2e
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Sneaking=1..,Stun=0,Disabled2=0,ability7=0,Energy=0..299},tag=uplook,tag=sixeyes] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability7=1..,Energy=300..},tag=uplook,tag=sixeyes] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,Energy=300..},tag=uplook,tag=!sixeyes] at @s run tellraw @s {"rawtext":[{"text":"§cYou need the §bSix Eyes§c to use chants for this Technique."}]}
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability7=1..,Energy=300..},tag=uplook,tag=sixeyes] at @s run tellraw @s {"rawtext":[{"text":"§cEnchanted Lapse Blue is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,Energy=300..},tag=uplook,tag=sixeyes] move 66
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,Energy=300..},tag=uplook,tag=sixeyes] ability7 500
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand},scores={Stun=0,Energy=300..,move=66,Sneaking=1..},tag=uplook,tag=sixeyes] Energy 300
tag @s[tag=limitlessclick,hasitem={item=ds:limitless2,location=slot.weapon.mainhand}] remove limitlessclick

tag @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Sneaking=0,Energy=30..,detect_jump=0},tag=uplook] add form3
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..29,Sneaking=0,detect_jump=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Energy=30..,detect_jump=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Energy=30..,detect_jump=0},tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cReversal Red is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Energy=30..,detect_jump=0},tag=uplook] move 41
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Energy=30..,detect_jump=0},tag=uplook] ability3 300
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Energy=30..,move=41,Sneaking=0,detect_jump=0},tag=uplook] Energy 30

tag @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Sneaking=0,Energy=15..},tag=!uplook] add form3b
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..14,Sneaking=0},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Energy=15..},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Energy=15..},tag=!uplook] at @s run tellraw @s {"rawtext":[{"text":"§cReversal Red is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Energy=15..},tag=!uplook] move 16
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,Energy=15..},tag=!uplook] ability3 80
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Energy=15..,move=16,Sneaking=0},tag=!uplook] Energy 15

tag @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=200..},tag=uplook] add form3c
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..199,Sneaking=0,detect_jump=1..},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=1..,Energy=200..},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=1..,Energy=200..},tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cReversal Red is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=0,Energy=200..},tag=uplook] move 51
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=0,Energy=200..},tag=uplook] ability3 500
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Energy=200..,move=51,Sneaking=0,detect_jump=1..},tag=uplook] Energy 200

tag @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,Energy=300..},tag=sixeyes] add form3e
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Energy=0..299,Sneaking=1..},tag=sixeyes] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability8=1..,Energy=300..},tag=sixeyes] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,Energy=300..},tag=!sixeyes] at @s run tellraw @s {"rawtext":[{"text":"§cYou need the §bSix Eyes§c to use chants for this Technique."}]}
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability8=1..,Energy=300..},tag=sixeyes] at @s run tellraw @s {"rawtext":[{"text":"§cEnchanted Reversal Red is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability8=0,Energy=300..},tag=sixeyes] move 66
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability8=0,Energy=300..},tag=sixeyes] ability8 500
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand},scores={Stun=0,Energy=300..,move=66,Sneaking=1..},tag=sixeyes] Energy 300
tag @s[tag=limitlessclick,hasitem={item=ds:limitless3,location=slot.weapon.mainhand}] remove limitlessclick

tag @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability4=0,Sneaking=0,detect_jump=0,Energy=45..}] add form4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..44,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability4=1..,Energy=45..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability4=1..,Energy=45..}] at @s run tellraw @s {"rawtext":[{"text":"§cSpatial is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability4=0,Energy=45..}] move 16
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability4=0,Energy=45..}] ability4 80
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Energy=45..,move=16,Sneaking=0,detect_jump=0}] Energy 45

tag @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,Energy=100..}] add form4b
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..99,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability4=1..,Energy=100..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability4=1..,Energy=100..}] at @s run tellraw @s {"rawtext":[{"text":"§cSpatial is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability4=0,Energy=100..}] move 15
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability4=0,Energy=100..}] ability4 600
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Energy=100..,move=15,Sneaking=1..,detect_jump=0}] Energy 100


tag @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability4=0,Sneaking=0,detect_jump=1..,Energy=100..}] add form4c
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..99,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability4=1..,Energy=100..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability4=1..,Energy=100..}] at @s run tellraw @s {"rawtext":[{"text":"§cSpatial is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability4=0,Energy=100..}] move 36
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability4=0,Energy=100..}] ability4 250
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand},scores={Stun=0,Energy=100..,move=36,Sneaking=0,detect_jump=1..}] Energy 100
tag @s[tag=limitlessclick,hasitem={item=ds:limitless4,location=slot.weapon.mainhand}] remove limitlessclick

tag @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Sneaking=0,Energy=80..},tag=uplook] add form5
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..79,Sneaking=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Energy=80..},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Energy=80..},tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cHollow Purple is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Energy=80..},tag=uplook] move 101
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Energy=80..},tag=uplook] ability5 800
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Energy=80..,move=101,Sneaking=0},tag=uplook,tag=form5] Energy 80


tag @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,Energy=150..},tag=!lookingup] add form5b
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..149,Sneaking=1..},tag=!lookingup] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=1..,Energy=150..},tag=!lookingup] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=1..,Energy=150..},tag=!lookingup] at @s run tellraw @s {"rawtext":[{"text":"§cHollow Purple is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=0,Energy=150..},tag=!lookingup] move 481
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=0,Energy=150..},tag=!lookingup] ability5 2400
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Energy=150..,move=481,Sneaking=1..},tag=!lookingup,tag=form5b] Energy 150

tag @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Sneaking=0,Energy=3500..},tag=!uplook] add form5c
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..3499,Sneaking=0},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Energy=3500..},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=1..,Energy=3500..},tag=!uplook] at @s run tellraw @s {"rawtext":[{"text":"§cHollow Purple is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Energy=3500..},tag=!uplook] move 321
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability5=0,Energy=3500..},tag=!uplook] ability5 6000
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Energy=3500..,move=321,Sneaking=0},tag=form5c] Energy 3500


tag @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Sneaking=1..,Energy=7500..},tag=lookingup] add form5d
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0,Energy=0..7499,Sneaking=1..},tag=lookingup] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability12=1..,Energy=7500..},tag=lookingup] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability12=1..,Energy=7500..},tag=lookingup] at @s run tellraw @s {"rawtext":[{"text":"§cHollow Purple Limitless is on cooldown: §e"},{"score":{"name": "@p","objective": "ability12"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability12=0,Energy=7500..},tag=lookingup] move 481
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability12=0,Energy=7500..},tag=lookingup] ability12 32000
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand},scores={Stun=0,Energy=7500..,move=481,Sneaking=1..},tag=lookingup,tag=form5d] Energy 7500
tag @s[tag=limitlessclick,hasitem={item=ds:limitless5,location=slot.weapon.mainhand}] remove limitlessclick


execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Sneaking=0,domainstart=1..}] at @s if entity @e[tag=domainlayout,r=48,rm=0.5] run function domainloser2

tag @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..},tag=!cantdomain] add form6
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..799,Sneaking=0,detect_jump=0,domainactive=0},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Energy=800..,domainactive=0},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Energy=800..,domainactive=0},tag=!cantdomain] at @s run tellraw @s {"rawtext":[{"text":"§cUnlimited Void is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=0,Energy=800..},tag=!cantdomain] domainstart 102
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=0,Energy=800..},tag=!cantdomain] domainCD 12000
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,Energy=800..,domainstart=102},tag=!cantdomain] Energy 800

tag @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=1..,detect_jump=0,Energy=800..},tag=!cantdomain] add form6c
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..799,Sneaking=1..,detect_jump=0,domainactive=0},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=1..,Energy=800..,domainactive=0},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=1..,Energy=800..,domainactive=0},tag=!cantdomain] at @s run tellraw @s {"rawtext":[{"text":"§cUnlimited Void is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=0,Energy=800..},tag=!cantdomain] domainstart 102
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=0,Energy=800..},tag=!cantdomain] domainCD 12000
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,Energy=800..,domainstart=102},tag=!cantdomain] Energy 800

tag @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=1..,Energy=300..},tag=!cantdomain] add form6b
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..299,Sneaking=0,detect_jump=1..},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,domainCD=1..,Energy=300..},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,domainCD=1..,Energy=300..},tag=!cantdomain] at @s run tellraw @s {"rawtext":[{"text":"§cUnlimited Void is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,domainCD=0,Energy=300..},tag=!cantdomain] move 101
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,domainCD=0,Energy=300..},tag=!cantdomain] domainCD 7200
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={Stun=0,Energy=300..,move=101,Sneaking=0,detect_jump=1..},tag=!cantdomain] Energy 300


execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[name=UnlimitedVoid] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[name=UnlimitedVoid] run stopsound @s[r=100] music.infinitevoidmusic
execute as @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run scoreboard players set @e[name=UnlimitedVoid,c=1] Deleter 31
tag @s[tag=limitlessclick,hasitem={item=ds:limitless6,location=slot.weapon.mainhand}] remove limitlessclick


tag @s[tag=limitlessclick,hasitem={item=ds:jfk_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability10=0,Sneaking=0,Energy=50..}] add jfk
execute as @s[tag=limitlessclick,hasitem={item=ds:jfk_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability10=0,Energy=0..49,Sneaking=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:jfk_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability10=1..,Energy=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:jfk_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability10=1..,Energy=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cScope him like JFK is on cooldown: §e"},{"score":{"name": "@p","objective": "ability10"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:jfk_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability10=0,Energy=50..}] move 71
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:jfk_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability10=0,Energy=50..}] ability10 200
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:jfk_technique,location=slot.weapon.mainhand},scores={Stun=0,Energy=50..,move=71,Sneaking=0}] Energy 50


tag @s[tag=limitlessclick,hasitem={item=ds:glocks_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=0,Sneaking=0,Energy=50..}] add glocks
execute as @s[tag=limitlessclick,hasitem={item=ds:glocks_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Energy=0..49,Sneaking=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=limitlessclick,hasitem={item=ds:glocks_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=1..,Energy=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=limitlessclick,hasitem={item=ds:glocks_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=1..,Energy=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cShoot up the Classroom is on cooldown: §e"},{"score":{"name": "@p","objective": "ability11"}},{"text":"§c."}]}
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:glocks_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=0,Energy=50..}] move 102
scoreboard players set @s[tag=limitlessclick,hasitem={item=ds:glocks_technique,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability11=0,Energy=50..}] ability11 200
scoreboard players remove @s[tag=limitlessclick,hasitem={item=ds:glocks_technique,location=slot.weapon.mainhand},scores={Stun=0,Energy=50..,move=102,Sneaking=0}] Energy 50

tag @s remove limitlessclick