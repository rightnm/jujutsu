playanimation @s[scores={move=20},tag=form3,tag=lovetrain] animation.lovetrain.slot_slam


tag @s[scores={move=11..,Stun=1..},tag=form3,tag=lovetrain] remove form3

tag @s[scores={move=1..5},tag=form3,tag=lovetrain] remove form3

execute as @s[scores={move=9..10},tag=form3,tag=lovetrain] at @s run tp @s @s
execute as @s[scores={move=9},tag=form3,tag=lovetrain] at @s run summon ds:slots ^^-10^3 facing @s none "Slot Slam" 
execute as @s[scores={move=8..9},tag=form3,tag=lovetrain] at @s positioned ^^-10^3 run scoreboard players set @e[name="Slot Slam",c=1] Deleter 92
execute as @s[scores={move=9},tag=form3,tag=lovetrain] at @s run playsound mob.wither.shoot @a ~~~ 1 0.75
execute as @s[scores={move=9},tag=form3,tag=lovetrain] at @s run playsound mob.wither.shoot @a ~~~ 1 0.45
execute as @s[scores={move=9},tag=form3,tag=lovetrain] at @s run playsound mob.magic3 @a ~~~ 1 0.75
execute as @s[scores={move=9},tag=form3,tag=lovetrain] at @s run tag @s add slots