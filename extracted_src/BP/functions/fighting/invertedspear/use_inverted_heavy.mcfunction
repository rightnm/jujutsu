

tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0}] add wep1
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cDeep Pierce is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 26
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 170

tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] add wep2
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cAnkle Cutter is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] move 16
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] wep2 200

tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_jump=1..},tag=heavenlyrestriction] add wep3
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cDomain Breaker is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] move 41
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] wep3 500

tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] add wep4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cFlash Slashes is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] move 36
scoreboard players set @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] wep4 400


tag @s[tag=wepclick,tag=!nocts,hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand}] remove wepclick