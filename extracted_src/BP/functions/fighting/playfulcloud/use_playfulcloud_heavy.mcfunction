

tag @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cPlayful Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 26
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 160

tag @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] add wep3
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cFlash Blow is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] move 31
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] wep3 500

tag @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] add wep4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cGiant Killer is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] move 22
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] wep4 800

tag @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction,tag=uplook] add wep5
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction,tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction,tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cOnrush is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction,tag=uplook] move 141
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction,tag=uplook] wep5 2400

tag @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction,tag=!uplook,tag=doublesneak] add wepswitch
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction,tag=!uplook,tag=doublesneak] cutscene 181
tag @s[tag=wepclick,hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand}] remove wepclick