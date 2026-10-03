tag @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0}] add delusional1
execute as @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cLove Tap is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 41
scoreboard players set @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 200


tag @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=0,detect_jump=0}] add delusional2
execute as @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cIdol's Debut is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] move 41
scoreboard players set @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] wep2 240


tag @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_jump=1..}] add delusional3
execute as @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=1..,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=1..,Sneaking=0,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cHearts is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..}] move 60
scoreboard players set @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..}] wep3 220


tag @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,detect_jump=1..}] add delusional4
execute as @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,Sneaking=1..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cClimax Jumping is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..}] move 61
scoreboard players set @s[tag=itemUse:ds:delusional2,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..}] wep4 600


