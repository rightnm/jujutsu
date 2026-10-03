

tag @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cStrong Punch is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 201

tag @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] add wep2
execute as @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cRush is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] move 31
scoreboard players set @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] wep2 201

tag @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_jump=1..}] add wep3
execute as @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cDownslam is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..}] move 17
scoreboard players set @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..}] wep3 201
tag @s[tag=wepclick,hasitem={item=ds:basic_combat,location=slot.weapon.mainhand}] remove wepclick