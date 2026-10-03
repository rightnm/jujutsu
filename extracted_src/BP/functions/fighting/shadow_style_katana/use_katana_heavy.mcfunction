

tag @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0,Energy=20..}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0,Energy=20..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0,Energy=20..}] at @s run tellraw @s {"rawtext":[{"text":"§cQuickdraw is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,Energy=20..}] move 41
scoreboard players set @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,Energy=20..}] wep1 120
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Energy=20..},tag=wep1] Energy 20

tag @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=0,detect_jump=1..,Energy=40..}] add wep2
execute as @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..,Energy=40..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..,Energy=40..}] at @s run tellraw @s {"rawtext":[{"text":"§cFlashdraw Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,Energy=40..}] move 41
scoreboard players set @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,Energy=40..}] wep2 300
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Energy=40..},tag=wep2] Energy 40

tag @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=0,detect_jump=0,Energy=200..},tag=domainimmune] add wep3
execute as @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0,Energy=200..},tag=domainimmune] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0,Energy=200..},tag=domainimmune] at @s run tellraw @s {"rawtext":[{"text":"§cIntersection is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,Energy=200..},tag=domainimmune] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,Energy=200..},tag=domainimmune] wep3 140
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Energy=200..},tag=wep3] Energy 200

tag @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=0,Sneaking=1..,detect_jump=1..,Energy=200..}] add wep5
execute as @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,detect_jump=1..,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,detect_jump=1..,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cHazy Moon is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..,Energy=200..}] move 101
scoreboard players set @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=1..,Energy=200..}] wep5 800
scoreboard players remove @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Energy=200..},tag=wep5] Energy 200


tag @s[tag=wepclick,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] remove wepclick