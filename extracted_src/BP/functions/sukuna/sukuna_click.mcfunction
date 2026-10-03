tag @s[scores={moveAngle=136..225}] add back

#normal click dismantle
tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab1=0,Sneaking=0,Energy=50..,detect_jump=0},tag=uplook] add form1s
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab1=0,Energy=0..49,Sneaking=0,detect_jump=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab1=1..,Sneaking=0,Energy=50..,detect_jump=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab1=1..,Sneaking=0,Energy=50..,detect_jump=0},tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cDismantle is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab1"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab1=0,Sneaking=0,Energy=50..,detect_jump=0},tag=uplook] move 11
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab1=0,Sneaking=0,Energy=50..,detect_jump=0},tag=uplook] sukuna_ab1 50
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=50..,move=11,Sneaking=0,detect_jump=0}] Energy 50

#mid air dismantle
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab1=0,Sneaking=0,Energy=50..,detect_jump=0},tag=!uplook] at @s if block ~~-1~ air run tag @s add form1sb
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab1=0,Energy=0..49,Sneaking=0,detect_jump=0},tag=!uplook] at @s if block ~~-1~ air run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab1=1..,Sneaking=0,Energy=50..,detect_jump=0},tag=!uplook] at @s if block ~~-1~ air run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab1=1..,Sneaking=0,Energy=50..,detect_jump=0},tag=!uplook] at @s if block ~~-1~ air run tellraw @s {"rawtext":[{"text":"§cDismantle is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab1"}},{"text":"§c."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab1=0,Sneaking=0,Energy=50..,detect_jump=0},tag=!uplook] at @s if block ~~-1~ air run scoreboard players set @s move 66
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab1=0,Sneaking=0,Energy=50..,detect_jump=0},tag=!uplook]at @s if block ~~-1~ air  run scoreboard players set @s sukuna_ab1 480
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=50..,move=66,Sneaking=0,detect_jump=0}] at @s if block ~~-1~ air  run scoreboard players remove @s Energy 50

#dissect
tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab3=0,Sneaking=0,Energy=75..,detect_jump=1..,detect_sprint=0},tag=!back] add form1sd
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab3=0,Energy=0..74,Sneaking=0,detect_jump=1..,detect_sprint=0},tag=!back] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab3=1..,Sneaking=0,Energy=75..,detect_jump=1..,detect_sprint=0},tag=!back] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab3=1..,Sneaking=0,Energy=75..,detect_jump=1..,detect_sprint=0},tag=!back] at @s run tellraw @s {"rawtext":[{"text":"§cDissect is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab3=0,Sneaking=0,Energy=75..,detect_jump=1..,detect_sprint=0},tag=!back] move 36
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab3=0,Sneaking=0,Energy=75..,detect_jump=1..,detect_sprint=0},tag=!back] sukuna_ab3 150
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=75..,move=36,Sneaking=0,detect_jump=1..,detect_sprint=0},tag=!back] Energy 75

#backwards dissect
tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab3=0,Sneaking=0,Energy=75..,detect_jump=1..,detect_sprint=0},tag=back] add form1se
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab3=0,Energy=0..74,Sneaking=0,detect_jump=1..,detect_sprint=0},tag=back] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab3=1..,Sneaking=0,Energy=75..,detect_jump=1..,detect_sprint=0},tag=back] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab3=1..,Sneaking=0,Energy=75..,detect_jump=1..,detect_sprint=0},tag=back] at @s run tellraw @s {"rawtext":[{"text":"§cDissect is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab3"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab3=0,Sneaking=0,Energy=75..,detect_jump=1..},tag=back] move 41
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab3=0,Sneaking=0,Energy=75..,detect_jump=1..,detect_sprint=0},tag=back] sukuna_ab3 150
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=75..,move=41,Sneaking=0,detect_jump=1..,detect_sprint=0},tag=back] Energy 75

#rapid dismanle normal click
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab4=0,Sneaking=1..,Energy=200..,detect_jump=0}] at @s unless block ~~-1~ air run tag @s add form2s
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab4=0,Energy=0..199,Sneaking=1..,detect_jump=0}] at @s unless block ~~-1~ air run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab4=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s unless block ~~-1~ air run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab4=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s unless block ~~-1~ air run tellraw @s {"rawtext":[{"text":"§cRapid Dismantle is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab4"}},{"text":"§c."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab4=0,Sneaking=1..,Energy=200..,detect_jump=0}] at @s unless block ~~-1~ air run scoreboard players set @s move 31
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab4=0,Sneaking=1..,Energy=200..,detect_jump=0}] at @s unless block ~~-1~ air run scoreboard players set @s sukuna_ab4 800
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=200..,move=31,Sneaking=1..,detect_jump=0}] Energy 200

#rapid dismante mid air
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab4=0,Sneaking=1..,Energy=200..,detect_jump=0}] at @s if block ~~-1~ air run tag @s add form2sb
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab4=0,Energy=0..199,Sneaking=1..,detect_jump=0}] at @s if block ~~-1~ air run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab4=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s if block ~~-1~ air run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab4=1..,Sneaking=1..,Energy=200..,detect_jump=0}] at @s if block ~~-1~ air run tellraw @s {"rawtext":[{"text":"§cRapid Dismantle is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab4"}},{"text":"§c."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab4=0,Sneaking=1..,Energy=200..,detect_jump=0}] at @s if block ~~-1~ air run scoreboard players set @s move 13
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab4=0,Sneaking=1..,Energy=200..,detect_jump=0}]at @s if block ~~-1~ air  run scoreboard players set @s sukuna_ab4 200
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=200..,move=13,Sneaking=1..,detect_jump=0}] at @s if block ~~-1~ air  run scoreboard players remove @s Energy 200


#heavy dismantle normal click sprint run
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=uplook] at @s  run tag @s add form2sd
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Energy=0..199,Sneaking=0,detect_jump=1..,detect_sprint=1..},tag=uplook] at @s  run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab5=1..,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab5=1..,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cHeavy Dismantle is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab5"}},{"text":"§c."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=uplook] at @s  run scoreboard players set @s move 31
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=uplook]at @s   run scoreboard players set @s sukuna_ab5 1200
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=200..,move=31,Sneaking=0,detect_jump=1..,detect_sprint=1..},tag=uplook] at @s   run scoreboard players remove @s Energy 200

#heavy dismantle normal click sprint run look down
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=!uplook] at @s  run tag @s add form2se
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Energy=0..199,Sneaking=0,detect_jump=1..,detect_sprint=1..},tag=!uplook] at @s  run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab5=1..,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab5=1..,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=!uplook] at @s run tellraw @s {"rawtext":[{"text":"§cHeavy Dismantle is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab5"}},{"text":"§c."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=!uplook] at @s  run scoreboard players set @s move 66
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Sneaking=0,Energy=200..,detect_jump=1..,detect_sprint=1..},tag=!uplook]at @s   run scoreboard players set @s sukuna_ab5 1200
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=200..,move=66,Sneaking=0,detect_jump=1..,detect_sprint=1..},tag=!uplook] at @s   run scoreboard players remove @s Energy 200


#maximum dismantle
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Sneaking=1..,detect_jump=1..,finger=0..9}] at @s run tellraw @s {"rawtext":[{"text":"§4I don't think my Jujutsu is strong enough to do this yet, I should try again once I have about §c10 fingers§4."}]}


execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab6=0,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}] at @s  run tag @s add form3s
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab6=0,Energy=0..499,finger=10..,Sneaking=1..,detect_jump=1..}] at @s  run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab6=1..,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab6=1..,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cMaximum Output Dismantle is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab6"}},{"text":"§c."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab6=0,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}] at @s  run scoreboard players set @s move 66
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab6=0,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}]at @s   run scoreboard players set @s sukuna_ab6 800
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=500..,finger=10..,move=66,Sneaking=1..,detect_jump=1..}] at @s   run scoreboard players remove @s Energy 500





#normal click cleave

tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab7=0,Sneaking=0,Energy=30..,detect_jump=0},tag=uplook] add form4s
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab7=0,Energy=0..29,Sneaking=0,detect_jump=0},tag=uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab7=1..,Sneaking=0,Energy=30..,detect_jump=0},tag=uplook]  at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab7=1..,Sneaking=0,Energy=30..,detect_jump=0},tag=uplook] at @s run tellraw @s {"rawtext":[{"text":"§cCleave is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab7"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab7=0,Sneaking=0,Energy=30..,detect_jump=0},tag=uplook] move 11
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab7=0,Sneaking=0,Energy=30..,detect_jump=0},tag=uplook] sukuna_ab7 30
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Energy=30..,move=11,Sneaking=0,detect_jump=0},tag=uplook] Energy 30

tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab7=0,Sneaking=0,Energy=30..,detect_jump=0},tag=!uplook] add form4s2
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab7=0,Energy=0..29,Sneaking=0,detect_jump=0},tag=!uplook] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab7=1..,Sneaking=0,Energy=30..,detect_jump=0},tag=!uplook]  at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab7=1..,Sneaking=0,Energy=30..,detect_jump=0},tag=!uplook] at @s run tellraw @s {"rawtext":[{"text":"§cCounter Cleave is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab7"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab7=0,Sneaking=0,Energy=30..,detect_jump=0},tag=!uplook] move 16
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab7=0,Sneaking=0,Energy=30..,detect_jump=0},tag=!uplook] sukuna_ab7 100
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Energy=30..,move=16,Sneaking=0,detect_jump=0},tag=!uplook] Energy 30

tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab7=0,Sneaking=0,Energy=100..,detect_jump=1..}] add form4sb
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab7=0,Energy=0..99,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab7=1..,Sneaking=0,Energy=100..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab7=1..,Sneaking=0,Energy=100..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cCleave is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab7"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab7=0,Sneaking=0,Energy=100..,detect_jump=1..}] move 26
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab7=0,Sneaking=0,Energy=100..,detect_jump=1..}] sukuna_ab7 100
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Energy=100..,move=26,Sneaking=0,detect_jump=1..}] Energy 100

tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab8=0,Sneaking=1..,Energy=100..,detect_jump=0}] add form4sc
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab8=0,Energy=0..99,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab8=1..,Sneaking=1..,Energy=100..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab8=1..,Sneaking=1..,Energy=100..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cSpiderweb Cleave is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab8"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab8=0,Sneaking=1..,Energy=100..,detect_jump=0}] move 41
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab8=0,Sneaking=1..,Energy=100..,detect_jump=0}] sukuna_ab8 600
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Energy=100..,move=41,Sneaking=1..,detect_jump=0}] Energy 100

#maximum cleave
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Sneaking=1..,detect_jump=1..,finger=0..9}] at @s run tellraw @s {"rawtext":[{"text":"§4I don't think my Jujutsu is strong enough to do this yet, I should try again once I have about §c10 fingers§4."}]}


execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab6=0,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}] at @s  run tag @s add form5s
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab6=0,Energy=0..499,finger=10..,Sneaking=1..,detect_jump=1..}] at @s  run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab6=1..,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab6=1..,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cMaximum Output Cleave is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab6"}},{"text":"§c."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab6=0,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}] at @s  run scoreboard players set @s move 66
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab6=0,Sneaking=1..,Energy=500..,finger=10..,detect_jump=1..}]at @s   run scoreboard players set @s sukuna_ab6 800
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Energy=500..,finger=10..,move=66,Sneaking=1..,detect_jump=1..}] at @s   run scoreboard players remove @s Energy 500




execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Sneaking=0,domainstart=1..}] at @s if entity @e[tag=domainlayout,r=48,rm=0.5] run function domainloser2

tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=500..}] add sukunadomain1
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..499,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.06 0.88
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=500..}] at @s run playsound note.pling @s ~~~ 0.06 0.6
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,domainCD=1..,Sneaking=0,detect_jump=0,Energy=500..}] at @s run tellraw @s {"rawtext":[{"text":"§cDomain Expansion is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=500..}] domainstart 121
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=0,detect_jump=0,Energy=500..}] domainCD 12000
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Energy=500..,domainstart=121,Sneaking=0,detect_jump=0}] Energy 500

execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=1..,detect_jump=0,Energy=2500..,finger=0..14}] at @s run tellraw @s {"rawtext":[{"text":"§4I don't think my Jujutsu is strong enough to do this yet, I should try again once I have about §c15 fingers§4."}]}

tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=1..,detect_jump=0,Energy=2500..,finger=15..}] add sukunadomain2
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Energy=0..2499,Sneaking=1..,detect_jump=0,finger=15..}] at @s run playsound note.pling @s ~~~ 0.06 0.88
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=1..,Sneaking=1..,detect_jump=0,Energy=2500..,finger=15..}] at @s run playsound note.pling @s ~~~ 0.06 0.6
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,domainCD=1..,Sneaking=1..,detect_jump=0,Energy=2500..,finger=15..}] at @s run tellraw @s {"rawtext":[{"text":"§cDomain Expansion is on cooldown: §e"},{"score":{"name": "@p","objective": "domainCD"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=1..,detect_jump=0,Energy=2500..,finger=15..}] domainstart 121
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,domainCD=0,Sneaking=1..,detect_jump=0,Energy=2500..,finger=15..}] domainCD 16000
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Energy=2500..,domainstart=121,Sneaking=1..,detect_jump=0,finger=15..}] Energy 2500



tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab12=0,Sneaking=0,detect_jump=1..,Energy=1500..,health_percent=1..25},has_property={property:body_transformation=1..4}] add sukunadomain3
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab12=0,Energy=0..1499,Sneaking=0,detect_jump=1..,health_percent=1..25},has_property={property:body_transformation=1..4}] at @s run playsound note.pling @s ~~~ 0.06 0.88
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,sukuna_ab12=1..,Sneaking=0,detect_jump=1..,Energy=1500..,health_percent=1..25},has_property={property:body_transformation=1..4}] at @s run playsound note.pling @s ~~~ 0.06 0.6
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=1..,sukuna_ab12=1..,Sneaking=0,detect_jump=1..,Energy=1500..,health_percent=1..25},has_property={property:body_transformation=1..4}] at @s run tellraw @s {"rawtext":[{"text":"§cDomain Expansion is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab12"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab12=0,Sneaking=0,detect_jump=1..,Energy=1500..,health_percent=1..25},has_property={property:body_transformation=1..4}] domainstart 121
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab12=0,Sneaking=0,detect_jump=1..,Energy=1500..,health_percent=1..25},has_property={property:body_transformation=1..4}] sukuna_ab12 32000
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={Energy=1500..,domainstart=121,Sneaking=0,detect_jump=1..,health_percent=1..25},has_property={property:body_transformation=1..4}] Energy 1500




execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:malevolent_shrine1] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:malevolent_kitchen] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s if entity @e[type=ds:incomplete_shrine] run tellraw @s {"rawtext":[{"text":"§cYou Cancelled the Domain."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run stopsound @s[r=100] music.malevolentshrine2
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run stopsound @s[r=100] music.malevolentshrine
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run scoreboard players set @e[type=ds:malevolent_shrine1,c=1] Deleter 31
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run scoreboard players set @e[type=ds:malevolent_kitchen,c=1] Deleter 31
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand},scores={domainactive=21..,domain=0}] at @s run scoreboard players set @e[type=ds:incomplete_shrine,c=1] Deleter 31

execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand},scores={finger=0..14},tag=!abilitying] at @s run tellraw @s {"rawtext":[{"text":"§4I don't think my Jujutsu is strong enough to do this yet, I should try again once I have about §c15 fingers§4."}]}

execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand},tag=!fugaready,tag=!abilitying] at @s run tellraw @s {"rawtext":[{"text":"§4I can't open this technique yet, I should dice my 'ingredients' some more."}]}



execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab9=0,Sneaking=0,Energy=1000..,finger=15..,detect_jump=0},tag=fugaready] at @s  run tag @s add fuga_use
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab9=0,Energy=0..999,finger=15..,Sneaking=0,detect_jump=0},tag=fugaready] at @s  run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab9=1..,Sneaking=0,Energy=1000..,finger=15..,detect_jump=0},tag=fugaready] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab9=1..,Sneaking=0,Energy=1000..,finger=15..,detect_jump=0},tag=fugaready] at @s run tellraw @s {"rawtext":[{"text":"§cDivine Flames are on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab9"}},{"text":"§c."}]}
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab9=0,Sneaking=0,Energy=1000..,finger=15..,detect_jump=0},tag=fugaready] at @s  run scoreboard players set @s move 56
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab9=0,Sneaking=0,Energy=1000..,finger=15..,detect_jump=0},tag=fugaready] at @s   run scoreboard players set @s sukuna_ab9 8000
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand},scores={Energy=1000..,finger=15..,move=56,Sneaking=0,detect_jump=0},tag=fugaready] at @s   run scoreboard players remove @s Energy 1000



# world cutting slashes

tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Sneaking=0,Energy=200..,detect_jump=0}] add form8s
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Energy=0..199,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=1..,Sneaking=0,detect_jump=0}]  at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cWorld Cutting Slash is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab10"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Sneaking=0,Energy=200..,detect_jump=0}] move 21
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Sneaking=0,Energy=200..,detect_jump=0}] sukuna_ab10 100
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Energy=200..,move=21,Sneaking=0,detect_jump=0}] Energy 200




tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Sneaking=1..,Energy=3333..,detect_jump=0},has_property={property:body_transformation=1..4}] add form6s
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Energy=0..3332,Sneaking=1..,detect_jump=0},has_property={property:body_transformation=1..4}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=1..,Sneaking=1..,detect_jump=0},has_property={property:body_transformation=1..4}]  at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=1..,Sneaking=1..,detect_jump=0},has_property={property:body_transformation=1..4}] at @s run tellraw @s {"rawtext":[{"text":"§cWorld Cutting Slash is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab10"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Sneaking=1..,Energy=3333..,detect_jump=0},has_property={property:body_transformation=1..4}] move 136
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Sneaking=1..,Energy=3333..,detect_jump=0},has_property={property:body_transformation=1..4}] sukuna_ab10 7200
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Energy=3333..,move=136,Sneaking=1..,detect_jump=0},has_property={property:body_transformation=1..4}] Energy 3333


tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Sneaking=0,Energy=3333..,detect_jump=1..},has_property={property:body_transformation=1..4}] add form7s
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Energy=0..3332,Sneaking=0,detect_jump=1..},has_property={property:body_transformation=1..4}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=1..,Sneaking=0,detect_jump=1..},has_property={property:body_transformation=1..4}]  at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=1..,Sneaking=0,detect_jump=1..},has_property={property:body_transformation=1..4}] at @s run tellraw @s {"rawtext":[{"text":"§cWorld Cutting Slash is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab10"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Sneaking=0,Energy=3333..,detect_jump=1..},has_property={property:body_transformation=1..4}] move 136
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab10=0,Sneaking=0,Energy=3333..,detect_jump=1..},has_property={property:body_transformation=1..4}] sukuna_ab10 7200
scoreboard players remove @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Energy=3333..,move=136,Sneaking=0,detect_jump=1..},has_property={property:body_transformation=1..4}] Energy 3333





# HEIAN ERA

tag @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:heian_transformation,location=slot.weapon.mainhand},scores={sukunacutscene=0,Stun=0,Disabled2=0,finger=20..,endurance=50..},tag=sukunacursedtool,tag=!heian_era] add heian_awakening
scoreboard players set @s[tag=!nocts,tag=sukunaclick,hasitem={item=ds:heian_transformation,location=slot.weapon.mainhand},scores={sukunacutscene=0,Stun=0,Disabled2=0,finger=20..,endurance=50..},tag=sukunacursedtool,tag=!heian_era] sukunacutscene 701



tag @s remove back
tag @s remove sukunaclick