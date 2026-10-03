
tag @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0}] add wep1
execute as @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cStrength Contest is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 26
scoreboard players set @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 250

tag @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,sprinting=1..,agility=5..,strength=5..}] add wep2
execute as @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..,sprinting=1..,agility=5..,strength=5..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..,sprinting=1..,agility=5..,strength=5..}] at @s run tellraw @s {"rawtext":[{"text":"§cDive Kick is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,sprinting=1..,agility=5..,strength=5..}] move 23
scoreboard players set @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,sprinting=1..,agility=5..,strength=5..}] wep2 300

tag @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,strength=10..}] add wep3
execute as @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0,strength=10..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0,strength=10..}] at @s run tellraw @s {"rawtext":[{"text":"§cBone Splitter is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,strength=10..}] move 37
scoreboard players set @s[tag=hrclickfist,hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,strength=10..}] wep3 600
tag @s remove hrclickfist
