execute as @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s[family=grade1] punch 1
execute as @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 250
execute as @s unless entity @s[scores={chance=0..}] run scoreboard players set @s chance 0
execute as @s unless entity @s[scores={hitCD=0..}] run scoreboard players set @s hitCD 0
execute as @s unless entity @s[scores={Stun=0..}] run scoreboard players set @s Stun 0
execute as @s unless entity @s[scores={move=0..}] run scoreboard players set @s move 0
execute as @s unless entity @s[scores={Disabled=0..}] run scoreboard players set @s Disabled 0



tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,move=0,chance=0,Disabled=0}] if entity @e[tag=!sorcerer,family=!hero,r=2.25,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance 1 13
execute as @s[scores={hitCD=0,Stun=0,move=0,Disabled=0,chance=1..2}] if entity @e[tag=!sorcerer,family=!hero,r=2.25,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run tag @s add hit

replaceitem entity @s[scores={detect_health=-9999..5}] slot.weapon.mainhand 1 air

scoreboard players random @s[scores={chance=3..6}] chance 1 2
scoreboard players set @s[scores={move=1..3,chance=1..}] chance 0

scoreboard players set @s[family=grade1,scores={Disabled=20..}] Disabled 19


playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit,family=sorcerer,family=!grade1] hitCD 4 7
scoreboard players random @s[tag=hit,family=sorcerer,family=grade1] hitCD 1 2

execute as @s[tag=hit,scores={chance=1..2}] run function m1


scoreboard players set @s[scores={chance=7,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=7,move=1..}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[scores={chance=8,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 35
execute as @s[scores={chance=8,move=1..}] at @s run function fighting/basic/rush

scoreboard players set @s[scores={chance=9,Stun=0,move=0},family=grade2] move 26
scoreboard players set @s[scores={chance=9,Stun=0,move=1..},family=grade2] Disabled 35
execute as @s[scores={chance=9,move=1..},family=grade2] at @s run function fighting/yuji/divergent_strike

scoreboard players set @s[scores={chance=9,Stun=0,move=0},family=grade1] move 26
scoreboard players set @s[scores={chance=9,Stun=0,move=1..},family=grade1] Disabled 35
execute as @s[scores={chance=9,move=1..},family=grade1] at @s run function fighting/yuji/divergent_strike

scoreboard players set @s[scores={chance=10,Stun=0,move=0},hasitem={item=ds:katana,location=slot.weapon.mainhand}] move 21
scoreboard players set @s[scores={chance=10,Stun=0,move=1..},hasitem={item=ds:katana,location=slot.weapon.mainhand}] Disabled 35
execute as @s[scores={chance=10,move=1..},hasitem={item=ds:katana,location=slot.weapon.mainhand}] at @s run function fighting/katana/quickdraw

scoreboard players set @s[scores={chance=11,Stun=0,move=0},hasitem={item=ds:katana,location=slot.weapon.mainhand}] move 21
scoreboard players set @s[scores={chance=11,Stun=0,move=1..},hasitem={item=ds:katana,location=slot.weapon.mainhand}] Disabled 35
execute as @s[scores={chance=11,move=1..},hasitem={item=ds:katana,location=slot.weapon.mainhand}] at @s run function fighting/katana/prominence

scoreboard players set @s[scores={chance=11,Stun=0,move=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] move 21
scoreboard players set @s[scores={chance=11,Stun=0,move=1..},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] Disabled 35
execute as @s[scores={chance=11,move=1..},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s run function fighting/slaughter_demon/wide_cut

scoreboard players set @s[scores={chance=12,Stun=0,move=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] move 36
scoreboard players set @s[scores={chance=12,Stun=0,move=1..},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] Disabled 35
execute as @s[scores={chance=12,move=1..},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s run function fighting/slaughter_demon/critical_slashes

scoreboard players set @s[scores={chance=13,Stun=0,move=0},family=grade1] move 37
scoreboard players set @s[scores={chance=13,Stun=0,move=1..},family=grade1] Disabled 35
execute as @s[scores={chance=13,move=1..},family=grade1] at @s run function hr/bone_splitter

execute as @s unless entity @s[scores={move=1..}] run scoreboard players set @s[scores={chance=1..}] chance 0