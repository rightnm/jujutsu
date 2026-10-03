

tag @s[tag=!abilitying] add abilitying

tellraw @s[tag=itemUse:ds:cursedenergy,scores={detect_sneak=0,scroll=1,move=0},tag=!reversecursed] {"rawtext":[{"text":"§cYou have not yet learned this technique..."}]}
tellraw @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=1..,detect_sneak=0,scroll=1,move=0},tag=reversecursed] {"rawtext":[{"text":"§cReverse Cursed Technique is on cooldown: §e"},{"score":{"name": "@p","objective": "reversecursedCD"}},{"text":"§c."}]}
tag @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=0,detect_sneak=0,Energy=300..,scroll=1,ab=0},tag=reversecursed] add rctself
scoreboard players set @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=0,detect_sneak=0,Energy=300..,scroll=1,ab=0},tag=reversecursed] move 41
scoreboard players add @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=0,detect_sneak=0,Energy=300..,scroll=1,ab=0},tag=reversecursed] reversecursedCD 400
scoreboard players remove @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=1..,detect_sneak=0,Energy=300..,move=40..,scroll=1,ab=0},tag=reversecursed] Energy 300

tellraw @s[tag=itemUse:ds:cursedenergy,scores={detect_sneak=0,scroll=2,move=0,divergentfistown=0}] {"rawtext":[{"text":"§cYou have not yet learned this technique..."}]}
tellraw @s[tag=itemUse:ds:cursedenergy,scores={divergentfistCD=1..,detect_sneak=0,scroll=2,move=0,divergentfistown=1..}] {"rawtext":[{"text":"§cDivergent Fists are on cooldown: §e"},{"score":{"name": "@p","objective": "divergentfistCD"}},{"text":"§c."}]}
tag @s[tag=itemUse:ds:cursedenergy,scores={divergentfistCD=0,detect_sneak=0,Energy=200..,scroll=2,ab=0,divergentfistown=1..},tag=!fistenergy] add divergentfist
scoreboard players set @s[tag=itemUse:ds:cursedenergy,scores={divergentfistCD=0,detect_sneak=0,Energy=200..,scroll=2,ab=0,divergentfistown=1..},tag=!fistenergy] move 41
scoreboard players add @s[tag=itemUse:ds:cursedenergy,scores={divergentfistCD=0,detect_sneak=0,Energy=200..,scroll=2,ab=0,divergentfistown=1..},tag=!fistenergy] divergentfistCD 600
scoreboard players remove @s[tag=itemUse:ds:cursedenergy,scores={divergentfistCD=1..,detect_sneak=0,Energy=200..,move=40..,scroll=1,ab=0,divergentfistown=1..},tag=!fistenergy] Energy 200

tellraw @s[tag=itemUse:ds:cursedenergy,scores={detect_sneak=0,scroll=3,move=0,simpledomainown=0,Stun=0}] {"rawtext":[{"text":"§cYou have not yet learned this technique..."}]}
tellraw @s[tag=itemUse:ds:cursedenergy,scores={simpledomainCD=1..,detect_sneak=0,scroll=3,move=0,simpledomainown=1..,Stun=0}] {"rawtext":[{"text":"§cSimple Domain is on cooldown: §e"},{"score":{"name": "@p","objective": "simpledomainCD"}},{"text":"§c."}]}
tag @s[tag=itemUse:ds:cursedenergy,scores={simpledomainCD=0,detect_sneak=0,Energy=200..,scroll=3,ab=0,simpledomainown=1..,Stun=0}] add simpledomain
scoreboard players set @s[tag=itemUse:ds:cursedenergy,scores={simpledomainCD=0,detect_sneak=0,Energy=200..,scroll=3,ab=0,simpledomainown=1..,Stun=0}] move 61
scoreboard players add @s[tag=itemUse:ds:cursedenergy,scores={simpledomainCD=0,detect_sneak=0,Energy=200..,scroll=3,ab=0,simpledomainown=1..,Stun=0},hasitem={item=ds:shadow_style_katana,quantity=0}] simpledomainCD 1200
scoreboard players set @s[tag=itemUse:ds:cursedenergy,scores={simpledomainCD=0,detect_sneak=0,Energy=200..,scroll=3,ab=0,simpledomainown=1..,Stun=0},hasitem={item=ds:shadow_style_katana}] simpledomainCD 500
scoreboard players remove @s[tag=itemUse:ds:cursedenergy,scores={simpledomainCD=1..,detect_sneak=0,Energy=200..,move=40..,scroll=1,ab=0,simpledomainown=1..,Stun=0}] Energy 200


tellraw @s[tag=itemUse:ds:cursedenergy,scores={detect_sneak=0,scroll=5,move=0,domainampown=0}] {"rawtext":[{"text":"§cYou have not yet learned this technique..."}]}
tellraw @s[tag=itemUse:ds:cursedenergy,scores={domainampCD=1..,detect_sneak=0,scroll=5,move=0,domainampown=1..}] {"rawtext":[{"text":"§cDomain Amplification is on cooldown: §e"},{"score":{"name": "@p","objective": "domainampCD"}},{"text":"§c."}]}
tag @s[tag=itemUse:ds:cursedenergy,scores={domainampCD=0,detect_sneak=0,Energy=200..,scroll=5,ab=0,domainampown=1..},tag=!fistenergy] add domainamp
scoreboard players set @s[tag=itemUse:ds:cursedenergy,scores={domainampCD=0,detect_sneak=0,Energy=200..,scroll=5,ab=0,domainampown=1..},tag=!fistenergy] move 8
scoreboard players add @s[tag=itemUse:ds:cursedenergy,scores={domainampCD=0,detect_sneak=0,Energy=200..,scroll=5,ab=0,domainampown=1..},tag=!fistenergy] domainampCD 600
scoreboard players remove @s[tag=itemUse:ds:cursedenergy,scores={domainampCD=1..,detect_sneak=0,Energy=200..,move=40..,scroll=1,ab=0,domainampown=1..},tag=!fistenergy] Energy 200


tellraw @s[tag=itemUse:ds:cursedenergy,scores={detect_sneak=0,scroll=6,move=0,hollowbasketown=0}] {"rawtext":[{"text":"§cYou have not yet learned this technique..."}]}
tellraw @s[tag=itemUse:ds:cursedenergy,scores={hollowbasketCD=1..,detect_sneak=0,scroll=6,move=0,hollowbasketown=1..}] {"rawtext":[{"text":"§cHollow Wicker Basket is on cooldown: §e"},{"score":{"name": "@p","objective": "hollowbasketCD"}},{"text":"§c."}]}
tag @s[tag=itemUse:ds:cursedenergy,scores={hollowbasketCD=0,detect_sneak=0,Energy=200..,scroll=6,ab=0,hollowbasketown=1..}] add hollow_basket_activate
scoreboard players set @s[tag=itemUse:ds:cursedenergy,scores={hollowbasketCD=0,detect_sneak=0,Energy=200..,scroll=6,ab=0,hollowbasketown=1..}] move 21
scoreboard players add @s[tag=itemUse:ds:cursedenergy,scores={hollowbasketCD=0,detect_sneak=0,Energy=200..,scroll=6,ab=0,hollowbasketown=1..}] hollowbasketCD 600
scoreboard players remove @s[tag=itemUse:ds:cursedenergy,scores={hollowbasketCD=1..,detect_sneak=0,Energy=200..,move=40..,scroll=1,ab=0,hollowbasketown=1..}] Energy 200

execute as @s[tag=itemUse:ds:cursedenergy,scores={detect_sneak=1..}] at @s run playsound random.click @s ~~~ 1 1.25 
execute as @s[tag=itemUse:ds:cursedenergy,scores={detect_sneak=1..}] at @s run scoreboard players add @s scroll 1
execute as @s[tag=itemUse:ds:cursedenergy,scores={detect_sneak=1..}] at @s run tag @s remove itemUse:ds:cursedenergy
scoreboard players set @s[scores={scroll=7..}] scroll 1

titleraw @s[scores={scroll=1}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\nReverse Cursed Technique\n\n\n"}]}
titleraw @s[scores={scroll=2}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\nDivergent Fists\n\n\n"}]}
titleraw @s[scores={scroll=3}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\nSimple Domain\n\n\n"}]}
titleraw @s[scores={scroll=4}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\nFalling Blossom Emotion (Coming soon)\n\n\n"}]}
titleraw @s[scores={scroll=5}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\nDomain Amplification\n\n\n"}]}
titleraw @s[scores={scroll=6}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\nHollow Wicker Basket\n\n\n"}]}

