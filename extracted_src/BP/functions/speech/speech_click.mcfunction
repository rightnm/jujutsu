
tag @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=75..}] add form1
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..74,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=75..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=75..}] at @s run tellraw @s {"rawtext":[{"text":"§cDont Move is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=75..}] move 31
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=75..}] ability1 400
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Energy=75..,move=31,Sneaking=0,detect_jump=0}] Energy 75



tag @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,detect_jump=1..,Energy=75..}] add form2
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..74,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=1..,Sneaking=0,detect_jump=1..,Energy=75..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=1..,Sneaking=0,detect_jump=1..,Energy=75..}] at @s run tellraw @s {"rawtext":[{"text":"§cRun Away is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,detect_jump=1..,Energy=75..}] move 31
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,detect_jump=1..,Energy=75..}] ability2 400
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Energy=75..,move=31,Sneaking=0,detect_jump=1..}] Energy 75



tag @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,detect_jump=0,Energy=150..}] add form3
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..149,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=1..,Sneaking=1..,detect_jump=0,Energy=150..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=1..,Sneaking=1..,detect_jump=0,Energy=150..}] at @s run tellraw @s {"rawtext":[{"text":"§cReturn is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,detect_jump=0,Energy=150..}] move 31
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=1..,detect_jump=0,Energy=150..}] ability3 400
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Energy=150..,move=31,Sneaking=1..,detect_jump=0}] Energy 150



tag @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=1..,Energy=200..}] add form4
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..199,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=1..,Sneaking=1..,detect_jump=1..,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=1..,Sneaking=1..,detect_jump=1..,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cSleep is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=1..,Energy=200..}] move 51
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=1..,Energy=200..}] ability4 400
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech1,location=slot.weapon.mainhand},scores={Energy=200..,move=51,Sneaking=1..,detect_jump=1..}] Energy 200





tag @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,detect_jump=0,Energy=75..}] add form6
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Energy=0..74,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=1..,Sneaking=0,detect_jump=0,Energy=75..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=1..,Sneaking=0,detect_jump=0,Energy=75..}] at @s run tellraw @s {"rawtext":[{"text":"§cBreak is on cooldown: §e"},{"score":{"name": "@p","objective": "ability6"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,detect_jump=0,Energy=75..}] move 26
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=0,detect_jump=0,Energy=75..}] ability6 100
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Energy=75..,move=26,Sneaking=0,detect_jump=0}] Energy 75


tag @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,Energy=150..}] add form7
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..74,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=1..,Sneaking=0,detect_jump=1..,Energy=150..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=1..,Sneaking=0,detect_jump=1..,Energy=150..}] at @s run tellraw @s {"rawtext":[{"text":"§cBlast Away is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,Energy=150..}] move 51
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,Energy=150..}] ability7 400
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Energy=150..,move=51,Sneaking=0,detect_jump=1..}] Energy 150


tag @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,detect_jump=0,Energy=200..}] add form8
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Energy=0..199,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=1..,Sneaking=1..,detect_jump=0,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=1..,Sneaking=1..,detect_jump=0,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cGet Crushed is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,detect_jump=0,Energy=200..}] move 31
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,detect_jump=0,Energy=200..}] ability8 600
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Energy=200..,move=31,Sneaking=1..,detect_jump=0}] Energy 200


tag @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,detect_jump=1..,Energy=500..}] add form9
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Energy=0..499,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=1..,Sneaking=1..,detect_jump=1..,Energy=500..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=1..,Sneaking=1..,detect_jump=1..,Energy=500..}] at @s run tellraw @s {"rawtext":[{"text":"§cPlummet is on cooldown: §e"},{"score":{"name": "@p","objective": "ability9"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,detect_jump=1..,Energy=500..}] move 71
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,detect_jump=1..,Energy=500..}] ability8 600
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech2,location=slot.weapon.mainhand},scores={Energy=500..,move=31,Sneaking=1..,detect_jump=1..}] Energy 500



tag @s[tag=speechclick,hasitem={item=ds:speech4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Energy=5000..}] add form11
execute as @s[tag=speechclick,hasitem={item=ds:speech4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Energy=0..499}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=1..,Energy=5000..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=1..,Energy=5000..}] at @s run tellraw @s {"rawtext":[{"text":"§cSh*t Yourself is on cooldown: §e"},{"score":{"name": "@p","objective": "ability11"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Energy=5000..}] move 56
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Energy=5000..}] ability11 600
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech4,location=slot.weapon.mainhand},scores={Energy=5000..,move=56}] Energy 5000



execute as @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={Sneaking=0,domainstart=1..}] at @s if entity @e[tag=domainlayout,r=48,rm=0.5] run function domainloser2

tag @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=1000..},tag=!cantdomain] add form12
execute as @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..999,Sneaking=0,detect_jump=0,domainactive=0},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.87
execute as @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Energy=1000..,domainactive=0},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.4
execute as @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Energy=1000..,domainactive=0},tag=!cantdomain] at @s run tellraw @s {"rawtext":[{"text":"§cResonant Chamber is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=0,Energy=1000..},tag=!cantdomain] domainstart 102
scoreboard players set @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=0,Energy=1000..},tag=!cantdomain] domainCD 12000
scoreboard players remove @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,Energy=1000..,domainstart=102},tag=!cantdomain] Energy 1000


execute as @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:resonant_chamber] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=speechclick,hasitem={item=ds:speech3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run scoreboard players set @e[type=ds:resonant_chamber,c=1] Deleter 31
tag @s remove speechclick