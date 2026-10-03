

tag @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0}] add wep1
execute as @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cThrow is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 31
scoreboard players set @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 100


tag @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=0,Sneaking=0,detect_jump=1..}] add wep2
execute as @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cBlunt Force is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] move 16
scoreboard players set @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] wep2 200



tag @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=0,Sneaking=1..,detect_jump=0}] add wep3
execute as @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cHandshake Spin is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] move 31
scoreboard players set @s[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] wep3 200


