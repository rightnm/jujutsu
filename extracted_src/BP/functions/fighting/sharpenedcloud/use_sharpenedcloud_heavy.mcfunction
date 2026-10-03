

tag @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cPuncture is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 170

tag @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction] add wep3
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cRepetitive Slashes is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction] move 76
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=heavenlyrestriction] wep3 2200

tag @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] add wep4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cVorpal Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] move 41
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=0,detect_jump=1..},tag=heavenlyrestriction] wep4 700

tag @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] add wep5
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cOverwhelming Intensity is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] move 31
scoreboard players set @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..},tag=heavenlyrestriction] wep5 4800
tag @s[tag=wepclick,hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] remove wepclick