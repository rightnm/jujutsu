

tag @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0,detect_sprint=0}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0,detect_sprint=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0,detect_sprint=0}] at @s run tellraw @s {"rawtext":[{"text":"§cCyclone Drill is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,detect_sprint=0}] move 31
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,detect_sprint=0}] wep1 200


tag @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=0,detect_jump=0,detect_sprint=1..}] add wep2
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=0,detect_sprint=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=0,detect_sprint=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cAir Passage is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=0,detect_sprint=1..}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=0,detect_sprint=1..}] wep2 200


tag @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] add wep3
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cWhirling Winds is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] move 37
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] wep3 100


tag @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=0,detect_jump=1..}] add wep4
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep4=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep4=1..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cHeavenly Wind is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=0,detect_jump=1..}] move 51
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=0,detect_jump=1..}] wep4 400

tag @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..}] add wep6
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep5=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep5=1..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cRampaging Tempest is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..}] move 66
scoreboard players set @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..}] wep5 400


tag @s[tag=wepclick,hasitem={item=ds:hiten,location=slot.weapon.mainhand}] remove wepclick