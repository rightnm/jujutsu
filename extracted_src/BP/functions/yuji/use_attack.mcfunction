

tag @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=0,detect_jump=0,Energy=75..}] add form1
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=0..74}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=75..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=75..}] at @s run tellraw @s {"rawtext":[{"text":"§cSoul Cleave is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=75..}] move 26
scoreboard players remove @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=75..,move=26}] Energy 75
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0}] ability1 200



tag @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=0,detect_jump=0,Energy=75..}] add form2
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=1..,Sneaking=1..,detect_jump=0,Energy=0..74}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=1..,Sneaking=1..,detect_jump=0,Energy=75..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=1..,Sneaking=1..,detect_jump=0,Energy=75..}] at @s run tellraw @s {"rawtext":[{"text":"§cAnkle Cleave is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=75..}] move 16
scoreboard players remove @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=75..,move=16}] Energy 75
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0}] ability2 200


tag @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=0,detect_jump=1..,Energy=400..}] add form3
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,detect_jump=1..,Energy=0..399}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,detect_jump=1..,Energy=400..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,ability3=1..,Sneaking=0,detect_jump=1..,Energy=400..}] at @s run tellraw @s {"rawtext":[{"text":"§cSevering Blitz is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=400..}] move 21
scoreboard players remove @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=400..,move=21}] Energy 400
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..}] ability3 900


tag @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability3=0,detect_jump=1..,Energy=400..}] add form5
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=1..,Sneaking=1..,detect_jump=1..,Energy=0..599}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=1..,Sneaking=1..,detect_jump=1..,Energy=600..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability5=1..,Sneaking=1..,detect_jump=1..,Energy=600..}] at @s run tellraw @s {"rawtext":[{"text":"§cSevering Blitz is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,detect_jump=1..,Energy=600..}] move 31
scoreboard players remove @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,detect_jump=1..,Energy=600..,move=21}] Energy 600
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=1..,detect_jump=1..}] ability5 2000







execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={Sneaking=0,domainstart=1..}] at @s if entity @e[tag=domainlayout,r=48,rm=0.5] run function domainloser2

tag @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=500..}] add form12
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..499,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.06 0.88
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=500..}] at @s run playsound note.pling @s ~~~ 0.06 0.6
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=500..}] at @s run tellraw @s {"rawtext":[{"text":"§cDomain Expansion is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=500..}] domainstart 101
scoreboard players set @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=500..}] domainCD 12000
scoreboard players remove @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={Energy=500..,domainstart=101,Sneaking=0,detect_jump=0}] Energy 500

execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:yuji_domain] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:yuji_domain] run stopsound @s[r=100] music.yuji_domain
execute as @s[tag=!nocts,hasitem={item=ds:soul_shrine2,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run scoreboard players set @e[type=ds:yuji_domain,c=1] Deleter 31


