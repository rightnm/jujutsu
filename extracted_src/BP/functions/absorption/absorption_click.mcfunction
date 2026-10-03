
tag @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=0,Sneaking=0,detect_jump=0,Energy=50..,absorption=5..}] add form1
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..49,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=0,Sneaking=0,detect_jump=0,absorption=0..4}] at @s run tellraw @s {"rawtext":[{"text":"§c- You do not have enough §eStored Energy §cto perform this ability."}]}

execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=50..,absorption=5..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=50..,absorption=5..}] at @s run tellraw @s {"rawtext":[{"text":"§cPower Punch is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=50..,absorption=5..}] move 34
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=50..,absorption=5..}] ability1 300
scoreboard players remove @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Energy=50..,move=34,Sneaking=0,detect_jump=0,absorption=5..}] Energy 50





tag @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=0,Energy=75..,absorption=5..}] add form2
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..64,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=0,Sneaking=1..,detect_jump=0,absorption=0..4}] at @s run tellraw @s {"rawtext":[{"text":"§c- You do not have enough §eStored Energy §cto perform this ability."}]}

execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=1..,Energy=75..,absorption=5..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=1..,Energy=75..,absorption=5..}] at @s run tellraw @s {"rawtext":[{"text":"§cPower Counter is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=75..,absorption=5..}] move 21
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=75..,absorption=5..}] ability2 80
scoreboard players remove @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Energy=75..,move=34,Sneaking=1..,detect_jump=0,absorption=5..}] Energy 75



tag @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=0,Energy=50..,absorption=5..}] add form3
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..49,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,absorption=0..4}] at @s run tellraw @s {"rawtext":[{"text":"§c- You do not have enough §eStored Energy §cto perform this ability."}]}

execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=1..,Energy=50..,absorption=5..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=1..,Energy=50..,absorption=5..}] at @s run tellraw @s {"rawtext":[{"text":"§cPower Leap is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=50..,absorption=5..}] move 8
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=50..,absorption=5..}] ability3 100
scoreboard players remove @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Energy=50..,move=8,Sneaking=0,detect_jump=1..,absorption=5..}] Energy 50



tag @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=1..,ability4=0,Energy=200..,absorption=15..}] add form4
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Energy=0..199,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=1..,absorption=0..14}] at @s run tellraw @s {"rawtext":[{"text":"§c- You do not have enough §eStored Energy §cto perform this ability."}]}

execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=1..,ability4=1..,Energy=200..,absorption=15..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=1..,ability4=1..,Energy=200..,absorption=51..}] at @s run tellraw @s {"rawtext":[{"text":"§cPower Leap is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=1..,Energy=200..,absorption=15..}] move 36
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,detect_jump=1..,Energy=200..,absorption=15..}] ability4 300
scoreboard players remove @s[tag=absorptionclick,hasitem={item=ds:absorption1,location=slot.weapon.mainhand},scores={Energy=200..,move=36,Sneaking=1..,detect_jump=1..,absorption=15..}] Energy 200



tag @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability5=0,Sneaking=0,detect_jump=0,Energy=100..,absorption=10..}] add form5
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..99,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability5=0,Sneaking=0,detect_jump=0,absorption=0..9}] at @s run tellraw @s {"rawtext":[{"text":"§c- You do not have enough §eStored Energy §cto perform this ability."}]}

execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability5=1..,Sneaking=0,detect_jump=0,Energy=100..,absorption=10..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability5=1..,Sneaking=0,detect_jump=0,Energy=100..,absorption=10..}] at @s run tellraw @s {"rawtext":[{"text":"§cPower Bolt is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,detect_jump=0,Energy=100..,absorption=10..}] move 31
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,detect_jump=0,Energy=100..,absorption=10..}] ability5 200
scoreboard players remove @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Energy=100..,move=31,Sneaking=0,detect_jump=0,absorption=10..}] Energy 100


tag @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability6=0,Energy=200..,absorption=20..}] add form6
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Energy=0..199,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability6=0,absorption=0..19}] at @s run tellraw @s {"rawtext":[{"text":"§c- You do not have enough §eStored Energy §cto perform this ability."}]}
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability6=1..,Sneaking=1..,detect_jump=0,Energy=200..,absorption=20..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability6=1..,Sneaking=1..,detect_jump=0,Energy=200..,absorption=20..}] at @s run tellraw @s {"rawtext":[{"text":"§cPower Shock is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,detect_jump=0,Energy=200..,absorption=20..}] move 47
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,detect_jump=0,Energy=200..,absorption=20..}] ability6 700
scoreboard players remove @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Energy=200..,move=31,Sneaking=1..,detect_jump=0,absorption=20..}] Energy 200


tag @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,Energy=250..,absorption=50..}] add form7
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..249,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,absorption=0..49}] at @s run tellraw @s {"rawtext":[{"text":"§c- You do not have enough §eStored Energy §cto perform this ability."}]}

execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=1..,Sneaking=0,detect_jump=1..,Energy=250..,absorption=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=1..,Sneaking=0,detect_jump=1..,Energy=250..,absorption=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cPower Wave is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,Energy=250..,absorption=50..}] move 31
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,Energy=250..,absorption=50..}] ability7 900
scoreboard players remove @s[tag=absorptionclick,hasitem={item=ds:absorption2,location=slot.weapon.mainhand},scores={Energy=250..,move=31,Sneaking=0,detect_jump=1..,absorption=50..}] Energy 250



tag @s[tag=absorptionclick,hasitem={item=ds:absorption3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability8=0,Sneaking=0,detect_jump=0,absorption=100..}] add form8
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability8=0,Sneaking=0,detect_jump=0,absorption=0..99}] at @s run tellraw @s {"rawtext":[{"text":"§c- You need ATLEAST §e100 Stored Energy §cto perform this ability."}]}

execute as @s[tag=absorptionclick,hasitem={item=ds:absorption3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability8=1..,Sneaking=0,detect_jump=0,absorption=100..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=absorptionclick,hasitem={item=ds:absorption3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability8=1..,Sneaking=0,detect_jump=0,absorption=100..}] at @s run tellraw @s {"rawtext":[{"text":"§cPower Punch is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,detect_jump=0,absorption=100..}] move 71
scoreboard players set @s[tag=absorptionclick,hasitem={item=ds:absorption3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability8=0,Sneaking=0,detect_jump=0,absorption=100..}] ability8 2400




tag @s remove absorptionclick
