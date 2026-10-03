

tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0}] add wep1
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cSoul Slice is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 26
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 170

tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] add wep2
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cRising Slice is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] move 26
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] wep2 200

tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=0,detect_jump=0},tag=heavenlyrestriction] add wep3
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cThroughout Heaven is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction] move 36
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction] wep3 600

tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] add wep4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cCrossway Slashes is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] move 63
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] wep4 1200


tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:soul_sword,location=slot.weapon.mainhand}] remove wepclick