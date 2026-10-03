

tag @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cLightning Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 600



tag @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] add wep2
execute as @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cStorm Slice is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] wep2 150




tag @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..}] add wep3
execute as @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=1..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cElectric Discharge is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..}] move 46
scoreboard players set @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..}] wep3 300




tag @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..}] add wep4
execute as @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cElectro-Pulse Beam is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..}] move 46
scoreboard players set @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..}] wep4 400


tag @s[tag=wepclick,hasitem={item=ds:kamutoke,location=slot.weapon.mainhand}] remove wepclick