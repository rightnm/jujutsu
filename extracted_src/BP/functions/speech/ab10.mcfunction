scoreboard players operation @s[scores={move=70..},tag=cursed_speech] speech_limit = @s EnergyCap
scoreboard players operation @s[scores={move=70..},tag=cursed_speech] speech_limit += @s endurance
scoreboard players operation @s[scores={move=70..},tag=cursed_speech] speech_limit /= ten endurance
playanimation @s[scores={move=70..71},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] animation.cursed_speech.die
playanimation @s[scores={move=70..71},hasitem={item=ds:megaphone,location=slot.hotbar}] animation.cursed_speech.die_mg
event entity @s[scores={move=3..},has_property={property:heart=!5},hasitem={item=ds:megaphone,location=slot.hotbar}] megaphone_on

scoreboard players add @s[scores={move=70}] speech 200
execute as @s[scores={move=69}] run function speech/speech_limit



execute if block ~~-0.5~ air run scriptevent ds:antiair


playanimation @s[scores={move=35..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=35..,Stun=1..}] move 2

scoreboard players set @s[scores={move=12..}] Move 5
scoreboard players set @s[scores={move=12..37}] Frames 5

execute as @s[scores={move=42}] at @s anchored eyes run particle ds:die ^^1^

execute as @s[scores={move=42..}] at @s run particle ds:plummet1 ~~~
execute as @s[scores={move=70..}] at @s run particle ds:dirt0 
execute as @s[scores={move=40..41}] at @s run particle ds:dirt0 

execute as @s[scores={move=40}] at @s positioned ^^1^1 if entity @e[family=mahoraga,r=15,c=1] run function damages/speech_damage
execute as @s[scores={move=40}] at @s positioned ^^1^1 unless entity @e[family=mahoraga,r=15,c=1] if entity @e[scores={wheelactive=1..},r=15,c=1] run function damages/speech_damage

scoreboard players set @s[scores={move=12..45}] Camera 6
execute as @s[scores={move=42}] at @s positioned ^^1^1 run camerashake add @a[r=25] 0.15 0.45
execute as @s[scores={move=42}] at @s positioned ^^1^1 run playsound mob.speech_die @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=45}] at @s positioned ^^1^1 run playsound mob.cursed_tune @a[r=100] ~~~ 99999 0.42 99999

execute as @s[scores={move=35}] at @s positioned ^^1^1 run summon gg:impact_frame ^^^-1
execute as @s[scores={move=35}] at @s positioned ^^1^1 run particle ds:invert
execute as @s[scores={move=34}] at @s positioned ^^1^1 run effect @a[r=25] night_vision 1 1 true
execute as @s[scores={move=33}] at @s positioned ^^1^1 run camerashake add @a[r=25] 1 0.17 rotational


tag @s[scores={move=35},tag=!cursed_speaking] add cursed_speaking
scoreboard players operation @s[scores={move=36}] speech_strength = @s Energy
execute as @s[scores={move=35},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^7.05 run function speech/die
execute as @s[scores={move=35},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^14.05 run function speech/die
execute as @s[scores={move=35},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^21.05 run function speech/die

execute as @s[scores={move=35},hasitem={item=ds:megaphone,location=slot.hotbar}] at @s positioned ^^1^25 run function speech/die_mg
tag @s[scores={move=35},tag=cursed_speaking] remove cursed_speaking

event entity @s[scores={move=1..2},has_property={property:heart=1..}] heart_off
playanimation @s[scores={move=0..1},tag=!noStunnedAnim] animation.cancel
tag @s[scores={move=0..1},tag=form10] remove form10