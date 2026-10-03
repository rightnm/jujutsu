
tag @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=0,Sneaking=0,detect_jump=0,Energy=80..}] add form1
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..79,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=80..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=80..}] at @s run tellraw @s {"rawtext":[{"text":"§cPalm Blast is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=80..}] move 31
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=80..}] ability1 140
scoreboard players remove @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Energy=80..,move=31,Sneaking=0,detect_jump=0}] Energy 80

tag @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=0,Energy=200..}] add form2
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Sneaking=1..,detect_jump=0,Stun=0,Disabled2=0,ability2=0,Energy=0..199}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=1..,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=1..,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cExplosive Release is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=200..}] move 31
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=200..}] ability2 800
scoreboard players remove @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand},scores={Stun=0,Energy=200..,move=31,Sneaking=1..,detect_jump=0}] Energy 200
tag @s[tag=explosiveclick,hasitem={item=ds:explosive1,location=slot.weapon.mainhand}] remove explosiveclick


tag @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability3=0,Sneaking=0,detect_jump=0,Energy=50..}] add form3
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..49,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability3=1..,Sneaking=0,detect_jump=0,Energy=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability3=1..,Sneaking=0,detect_jump=0,Energy=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cExplosive Spit is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=0,Energy=50..}] move 16
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=0,Energy=50..}] ability3 60
scoreboard players remove @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Energy=50..,move=16,Sneaking=0,detect_jump=0}] Energy 50

tag @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability4=0,Energy=250..}] add form4
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Sneaking=1..,detect_jump=0,Stun=0,Disabled2=0,ability4=0,Energy=0..249}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability4=1..,Energy=250..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability4=1..,Energy=250..}] at @s run tellraw @s {"rawtext":[{"text":"§cDevastating Arrow is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,Energy=250..}] move 41
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=0,Energy=250..}] ability4 800
scoreboard players remove @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Energy=250..,move=41,Sneaking=1..,detect_jump=0}] Energy 250

tag @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability5=0,Energy=400..}] add form5
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Sneaking=0,detect_jump=1..,Stun=0,Disabled2=0,ability5=0,Energy=0..399}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability5=1..,Energy=400..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability5=1..,Energy=400..}] at @s run tellraw @s {"rawtext":[{"text":"§cDevastating Arrow is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,detect_jump=1..,Energy=400..}] move 61
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,detect_jump=1..,Energy=400..}] ability5 800
scoreboard players remove @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand},scores={Stun=0,Energy=400..,move=61,Sneaking=0,detect_jump=1..}] Energy 400
tag @s[tag=explosiveclick,hasitem={item=ds:explosive2,location=slot.weapon.mainhand}] remove explosiveclick

tag @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability6=0,Sneaking=0,detect_jump=0,Energy=200..}] add form6
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Energy=0..199,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability6=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability6=1..,Sneaking=0,detect_jump=0,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cHeatwave Slash is on cooldown: §e"},{"score":{"name": "@p","objective": "ability6"}},{"text":"§c."}]}
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,detect_jump=0,Energy=200..}] move 46
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,detect_jump=0,Energy=200..}] ability6 400
scoreboard players remove @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Energy=200..,move=46,Sneaking=0,detect_jump=0}] Energy 200

tag @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,detect_jump=0,ability7=0,Sneaking=1..,detect_jump=0,Energy=200..}] add form7
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..199,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability7=1..,Sneaking=1..,detect_jump=0,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability7=1..,Sneaking=1..,detect_jump=0,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cFlaming Wall is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,detect_jump=0,Energy=200..}] move 31
scoreboard players set @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=1..,detect_jump=0,Energy=200..}] ability7 350
scoreboard players remove @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand},scores={Energy=200..,move=31,Sneaking=1..,detect_jump=0}] Energy 200
tag @s[tag=explosiveclick,hasitem={item=ds:explosive3,location=slot.weapon.mainhand}] remove explosiveclick
