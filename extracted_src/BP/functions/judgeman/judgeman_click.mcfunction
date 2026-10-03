
tag @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=0,Sneaking=0,detect_jump=0,Energy=100..}] add form1
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..99,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=100..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=100..}] at @s run tellraw @s {"rawtext":[{"text":"§cObjection is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=100..}] move 16
scoreboard players set @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=100..}] ability1 300
scoreboard players remove @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Energy=100..,move=16,Sneaking=0,detect_jump=0}] Energy 100

tag @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=0,Energy=200..}] add form2
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Sneaking=1..,detect_jump=0,Stun=0,Disabled2=0,ability2=0,Energy=0..199}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=1..,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,ability2=1..,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cConfiscation is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=200..}] move 36
scoreboard players set @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=200..}] ability2 600
scoreboard players remove @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Energy=200..,move=36,Sneaking=1..,detect_jump=0}] Energy 200

tag @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=0,Sneaking=0,detect_jump=1..,Energy=300..}] add form3
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..299,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=1..,Sneaking=0,detect_jump=1..,Energy=300..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,ability3=1..,Sneaking=0,detect_jump=1..,Energy=300..}] at @s run tellraw @s {"rawtext":[{"text":"§cJudgement Zone is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=300..}] move 41
scoreboard players set @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=300..}] ability3 1200
scoreboard players remove @s[tag=judgemanclick,hasitem={item=ds:judgeman1,location=slot.weapon.mainhand},scores={Energy=300..,move=41,Sneaking=0,detect_jump=1..}] Energy 300



execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={Sneaking=0,domainstart=1..}] at @s if entity @e[tag=domainlayout,r=48,rm=0.5] run function domainloser2

tag @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=800..},tag=!cantdomain] add form4
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..799,Sneaking=0,detect_jump=0,domainactive=0},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.87
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Energy=800..,domainactive=0},tag=!cantdomain] at @s run playsound note.pling @s ~~~ 0.06 0.4
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Energy=800..,domainactive=0},tag=!cantdomain] at @s run tellraw @s {"rawtext":[{"text":"§cDeadly Sentencing is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=0,Energy=800..},tag=!cantdomain] domainstart 102
scoreboard players set @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=0,Energy=800..},tag=!cantdomain] domainCD 12000
scoreboard players remove @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,Energy=800..,domainstart=102},tag=!cantdomain] Energy 800


execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:deadly_sentencing] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:deadly_sentencing] run function judgeman/domain_end
execute as @s[tag=judgemanclick,hasitem={item=ds:judgeman2,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run scoreboard players set @e[type=ds:deadly_sentencing,c=1] Deleter 31
tag @s remove judgemanclick