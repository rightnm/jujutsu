 tellraw @s[tag=instant_body,tag=itemUse:ds:idle_transfig2] {"rawtext":[{"text":"§cA Binding-Vow prevents you from performing this action while in your Transformation state."}]}
 tellraw @s[tag=instant_body,tag=itemUse:ds:idle_transfig4] {"rawtext":[{"text":"§cA Binding-Vow prevents you from performing this action while in your Transformation state."}]}
 tellraw @s[tag=instant_body,tag=itemUse:ds:idle_transfig_combat1] {"rawtext":[{"text":"§cA Binding-Vow prevents you from performing this action while in your Transformation state."}]}
 tellraw @s[tag=instant_body,tag=itemUse:ds:idle_transfig_combat2] {"rawtext":[{"text":"§cA Binding-Vow prevents you from performing this action while in your Transformation state."}]}
 tellraw @s[tag=instant_body,tag=itemUse:ds:idle_transfig_combat3] {"rawtext":[{"text":"§cA Binding-Vow prevents you from performing this action while in your Transformation state."}]}
 tellraw @s[tag=instant_body,tag=itemUse:ds:idle_transfig3,scores={Sneaking=1..,detect_jump=0}] {"rawtext":[{"text":"§cA Binding-Vow prevents you from performing this action while in your Transformation state."}]}


#combat 1
tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0},tag=!instant_body] add wep1m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cPistol Blow is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0},tag=!instant_body] move 24
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0},tag=!instant_body] wep1 100

tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=0,Sneaking=0,detect_jump=1..},tag=!instant_body] add wep2m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cQuad Stamp is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..},tag=!instant_body] move 26
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..},tag=!instant_body] wep2 200

tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=!instant_body] add wep3m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cKiss is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=!instant_body] move 16
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=!instant_body] wep3 300


#combat blades
tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0},tag=!instant_body] add wep1m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cBisection is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0},tag=!instant_body] move 24
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0},tag=!instant_body] wep1 100


tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=0,Sneaking=0,detect_jump=1..},tag=!instant_body] add wep2m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cBeyblade is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..},tag=!instant_body] move 24
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..},tag=!instant_body] wep2 200


execute as @s unless block ~~-0.25~ air run tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] add wep3m
execute as @s unless block ~~-0.25~ air run execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s unless block ~~-0.25~ air run execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s unless block ~~-0.25~ air run execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cRushing Blade is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
execute as @s unless block ~~-0.25~ air run scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=!instant_body] move 41
execute as @s unless block ~~-0.25~ air run scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0},tag=!instant_body] wep3 400

#combat heavy
tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0},tag=!instant_body] add wep1m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cMalice is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0},tag=!instant_body] move 31
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0},tag=!instant_body] wep1 100

tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=0,detect_jump=0},tag=!instant_body] add wep2m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cBrutal Force is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0},tag=!instant_body] move 51
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0},tag=!instant_body] wep2 400

tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_jump=1..},tag=!instant_body] add wep3m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cCursed Crash is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..},tag=!instant_body] move 38
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..},tag=!instant_body] wep3 400



#Soul Transfiguration
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0}] at @s run function idle_transfig/soul_ab1

tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,Energy=300..,detect_jump=0}] add form1
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=0,Energy=0..299,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=1..,Energy=300..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=1..,Energy=300..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cSoul Transfiguration is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,Energy=300..,detect_jump=0}] move 21
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=0,Sneaking=1..,Energy=300..,detect_jump=0}] ability1 100
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Energy=300..,move=21,Sneaking=1..,detect_jump=0}] Energy 300


tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=300..,detect_jump=1..}] add form2
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=0,Energy=0..299,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=0,Energy=300..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=0,Energy=300..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cSoul Transfiguration is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=300..,detect_jump=1..}] move 61
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=300..,detect_jump=1..}] ability1 300
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig1,scores={Energy=300..,move=61,Sneaking=0,detect_jump=1..}] Energy 300




#Body Transfiguration

tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=50..,detect_jump=0},tag=!instant_body] add form3
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability2=0,Energy=0..49,Sneaking=0,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability2=1..,Sneaking=0,Energy=50..,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability2=1..,Sneaking=0,Energy=50..,detect_jump=0},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cTrident Rush is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=50..,detect_jump=0},tag=!instant_body] move 31
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability2=0,Sneaking=0,Energy=50..,detect_jump=0},tag=!instant_body] ability2 100
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Energy=50..,move=31,Sneaking=0,detect_jump=0},tag=!instant_body] Energy 50


tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=100..,detect_jump=1..},tag=!instant_body] add form4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability3=0,Energy=0..99,Sneaking=0,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability3=1..,Sneaking=0,Energy=100..,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability3=1..,Sneaking=0,Energy=100..,detect_jump=1..},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cSpike Pierce is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=100..,detect_jump=1..},tag=!instant_body] move 41
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,Energy=100..,detect_jump=1..},tag=!instant_body] ability3 200
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Energy=100..,move=41,Sneaking=0,detect_jump=1..},tag=!instant_body] Energy 100


tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,Energy=200..,detect_jump=0},tag=!instant_body] add form5
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability4=0,Energy=0..199,Sneaking=1..,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability4=1..,Sneaking=1..,Energy=200..,detect_jump=0},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability4=1..,Sneaking=1..,Energy=200..,detect_jump=0},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cDrill Breaker is on cooldown: §e"},{"score":{"name": "@p","objective": "ability4"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,Energy=200..,detect_jump=0},tag=!instant_body] move 86
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability4=0,Sneaking=1..,Energy=200..,detect_jump=0},tag=!instant_body] ability4 400
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Energy=200..,move=86,Sneaking=1..,detect_jump=0},tag=!instant_body] Energy 200


tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,Energy=300..,detect_jump=1..},tag=!instant_body] add form7
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability6=0,Energy=0..299,Sneaking=1..,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability6=1..,Sneaking=1..,Energy=300..,detect_jump=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability6=1..,Sneaking=1..,Energy=300..,detect_jump=1..},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cDecoy Trick is on cooldown: §e"},{"score":{"name": "@p","objective": "ability6"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,Energy=300..,detect_jump=1..},tag=!instant_body] move 101
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,Energy=300..,detect_jump=1..},tag=!instant_body] ability6 400
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig2,scores={Energy=300..,move=101,Sneaking=1..,detect_jump=1..},tag=!instant_body] Energy 300

# Transfigured Humans

execute as @s[tag=!nocts,tag=itemUse:ds:stable_transfigured_human,scores={Stun=0,Disabled2=0,Sneaking=0}] at @s run function idle_transfig/transfigure_human_stable1
execute as @s[tag=!nocts,tag=itemUse:ds:stable_transfigured_human,scores={Stun=0,Disabled2=0,Sneaking=1..}] at @s run function idle_transfig/transfigure_human_stable2

execute as @s[tag=!nocts,tag=itemUse:ds:unstable_transfigured_human,scores={Stun=0,Disabled2=0,Sneaking=0}] at @s run function idle_transfig/transfigure_human_unstable1
execute as @s[tag=!nocts,tag=itemUse:ds:unstable_transfigured_human,scores={Stun=0,Disabled2=0,Sneaking=1..}] at @s run function idle_transfig/transfigure_human_unstable2


scoreboard objectives add transfigured_human_count dummy
execute as @s[hasitem={item=ds:idle_transfig3,location=slot.weapon.mainhand}] at @s run scriptevent ds:human_count



# Human Transfiguration

tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=100..,detect_jump=0,transfigured_human_count=2..}] add form8
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability7=0,Energy=0..99,Sneaking=0,detect_jump=0,transfigured_human_count=2..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability7=1..,Sneaking=0,Energy=100..,detect_jump=0,transfigured_human_count=2..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability7=1..,Sneaking=0,Energy=100..,detect_jump=0,transfigured_human_count=2..}] at @s run tellraw @s {"rawtext":[{"text":"§cDual Clankers is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=100..,detect_jump=0,transfigured_human_count=2..}] move 31
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,Energy=100..,detect_jump=0,transfigured_human_count=2..}] ability7 200
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Energy=100..,move=31,Sneaking=0,detect_jump=0,transfigured_human_count=2..}] Energy 100



tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,Energy=100..,detect_jump=0,transfigured_human_count=3..},tag=!instant_body] add form9
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability8=0,Energy=0..99,Sneaking=1..,detect_jump=0,transfigured_human_count=3..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability8=1..,Sneaking=1..,Energy=100..,detect_jump=0,transfigured_human_count=3..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability8=1..,Sneaking=1..,Energy=100..,detect_jump=0,transfigured_human_count=3..},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cRifle is on cooldown: §e"},{"score":{"name": "@p","objective": "ability8"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,Energy=100..,detect_jump=0,transfigured_human_count=3..},tag=!instant_body] move 31
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability8=0,Sneaking=1..,Energy=100..,detect_jump=0,transfigured_human_count=3..},tag=!instant_body] ability8 200
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Energy=100..,move=31,Sneaking=1..,detect_jump=0,transfigured_human_count=3..},tag=!instant_body] Energy 100


tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,Energy=300..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=1..,item=ds:stable_transfigured_human,quantity=1..}] add form10
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=0,Energy=0..299,Sneaking=0,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=1..,item=ds:stable_transfigured_human,quantity=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=1..,Sneaking=0,Energy=300..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=1..,item=ds:stable_transfigured_human,quantity=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=1..,Sneaking=0,Energy=300..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=1..,item=ds:stable_transfigured_human,quantity=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cBody Repel is on cooldown: §e"},{"score":{"name": "@p","objective": "ability9"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,Energy=300..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=1..,item=ds:stable_transfigured_human,quantity=1..}] move 41
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=0,Sneaking=0,Energy=300..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=1..,item=ds:stable_transfigured_human,quantity=1..}] ability9 300
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Energy=300..,move=41,Sneaking=0,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=1..,item=ds:stable_transfigured_human,quantity=1..}] Energy 300


tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,Energy=500..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=3..,item=ds:stable_transfigured_human,quantity=3..}] add form11
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=0,Energy=0..499,Sneaking=1..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=3..,item=ds:stable_transfigured_human,quantity=3..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=1..,Sneaking=1..,Energy=500..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=3..,item=ds:stable_transfigured_human,quantity=3..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=1..,Sneaking=1..,Energy=500..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=3..,item=ds:stable_transfigured_human,quantity=3..}] at @s run tellraw @s {"rawtext":[{"text":"§cBody Repel is on cooldown: §e"},{"score":{"name": "@p","objective": "ability9"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,Energy=500..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=3..,item=ds:stable_transfigured_human,quantity=3..}] move 61
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Stun=0,Disabled2=0,ability9=0,Sneaking=1..,Energy=500..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=3..,item=ds:stable_transfigured_human,quantity=3..}] ability9 800
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig3,scores={Energy=500..,move=61,Sneaking=1..,detect_jump=1..,transfigured_human_count=2..},hasitem={item=ds:unstable_transfigured_human,quantity=3..,item=ds:stable_transfigured_human,quantity=3..}] Energy 500

# DOMAINS



tag @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=1000..},tag=!cantdomain,tag=!instant_body]  add domain_start
execute as @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..999,Sneaking=0,detect_jump=0,domainactive=0},tag=!cantdomain,tag=!instant_body]  at @s run playsound note.pling @s ~~~ 0.06 0.87
execute as @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Energy=1000..,domainactive=0},tag=!cantdomain,tag=!instant_body]  at @s run playsound note.pling @s ~~~ 0.06 0.4
execute as @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Energy=1000..,domainactive=0},tag=!cantdomain,tag=!instant_body]  at @s run tellraw @s {"rawtext":[{"text":"§cSelf-Embodiment of Perfection is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=0,Energy=1000..},tag=!cantdomain,tag=!instant_body]  domainstart 102
scoreboard players set @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=0,Energy=1000..},tag=!cantdomain,tag=!instant_body]  domainCD 12000
scoreboard players remove @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,Energy=1000..,domainstart=102},tag=!cantdomain,tag=!instant_body]  Energy 1000


execute as @s[tag=itemUse:ds:idle_transfig4,scores={domainactive=21..,domain=0},tag=!instant_body] at @s if entity @e[type=ds:perfection_domain,tag=!instant_body]  run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=itemUse:ds:idle_transfig4,scores={domainactive=21..,domain=0},tag=!instant_body] at @s run scoreboard players set @e[type=ds:perfection_domain,c=1] Deleter 31




tag @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=1..,detect_jump=0,Energy=500..},tag=!cantdomain,tag=!instant_body]  add domain_start2
execute as @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..999,Sneaking=1..,detect_jump=0,domainactive=0},tag=!cantdomain,tag=!instant_body]  at @s run playsound note.pling @s ~~~ 0.06 0.87
execute as @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=1..,Energy=500..,domainactive=0},tag=!cantdomain,tag=!instant_body]  at @s run playsound note.pling @s ~~~ 0.06 0.4
execute as @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=1..,Energy=500..,domainactive=0},tag=!cantdomain,tag=!instant_body]  at @s run tellraw @s {"rawtext":[{"text":"§cSelf-Embodiment of Perfection is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=0,Energy=500..},tag=!cantdomain,tag=!instant_body]  domainstart 102
scoreboard players set @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=0,Energy=500..},tag=!cantdomain,tag=!instant_body]  domainCD 12000
scoreboard players remove @s[tag=itemUse:ds:idle_transfig4,scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,Energy=500..,domainstart=102},tag=!cantdomain,tag=!instant_body]  Energy 500




tag @s[tag=!nocts,tag=itemUse:ds:idle_transfig5,scores={Stun=0,Disabled2=0,ability12=0,Energy=1000..,agility=50..,endurance=50..,blackflashlearn=1..},tag=!instant_body] add form12
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig5,scores={Stun=0,Disabled2=0,ability12=0,Energy=0..999,agility=50..,endurance=50..,blackflashlearn=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig5,scores={Stun=0,Disabled2=0,ability12=1..,Energy=1000..,agility=50..,endurance=50..,blackflashlearn=1..},tag=!instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=itemUse:ds:idle_transfig5,scores={Stun=0,Disabled2=0,ability12=1..,Energy=1000..,agility=50..,endurance=50..,blackflashlearn=1..},tag=!instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cInstant Spirit Body of Distorted Killing is on cooldown: §e"},{"score":{"name": "@p","objective": "ability12"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=itemUse:ds:idle_transfig5,scores={Stun=0,Disabled2=0,ability12=0,Energy=1000..,agility=50..,endurance=50..,blackflashlearn=1..},tag=!instant_body] cutscene 251
scoreboard players remove @s[tag=!nocts,tag=itemUse:ds:idle_transfig5,scores={Energy=1000..,cutscene=250..251,agility=50..,endurance=50..,blackflashlearn=1..},tag=!instant_body] Energy 1000

execute as @s[tag=itemUse:ds:idle_transfig5,tag=instant_body] at @s run function idle_transfig/end_transformation





# Instant Body Combat
tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0},tag=instant_body] add wep1m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0},tag=instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0},tag=instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0},tag=instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cImpale is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0},tag=instant_body] move 21
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0},tag=instant_body] wep1 100


tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=0,Sneaking=1..,detect_jump=0},tag=instant_body] add wep2m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0},tag=instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=1..,Sneaking=1..,detect_jump=0},tag=instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=1..,Sneaking=1..,detect_jump=0},tag=instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cRuthless Strikes is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0},tag=instant_body] move 31
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0},tag=instant_body] wep2 200

tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,Sneaking=0,detect_jump=1..},tag=instant_body] add wep3m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=1..,Sneaking=0,detect_jump=1..},tag=instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cTakedown is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..},tag=instant_body] move 51
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..},tag=instant_body] wep3 500



tag @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=1..,detect_jump=1..},tag=instant_body] add wep6m
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=1..,Sneaking=1..,detect_jump=1..},tag=instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability11=1..,Sneaking=1..,detect_jump=1..},tag=instant_body] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability11=1..,Sneaking=1..,detect_jump=1..},tag=instant_body] at @s run tellraw @s {"rawtext":[{"text":"§cTruly a Curse is on cooldown: §e"},{"score":{"name": "@p","objective": "ability11"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=1..,detect_jump=1..},tag=instant_body] move 176
scoreboard players set @s[tag=!nocts,tag=idle_click,hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability11=0,Sneaking=1..,detect_jump=1..},tag=instant_body] ability11 6000


tag @s[tag=idle_click] remove idle_click