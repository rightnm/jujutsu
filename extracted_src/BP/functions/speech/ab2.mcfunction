scoreboard players operation @s[scores={move=30..},tag=cursed_speech] speech_limit = @s EnergyCap
scoreboard players operation @s[scores={move=30..},tag=cursed_speech] speech_limit += @s endurance
scoreboard players operation @s[scores={move=30..},tag=cursed_speech] speech_limit /= ten endurance
playanimation @s[scores={move=30..31},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] animation.cursed_speech.dontmove
playanimation @s[scores={move=30..31},hasitem={item=ds:megaphone,location=slot.hotbar}] animation.cursed_speech.dontmove_mg
event entity @s[scores={move=3..},has_property={property:heart=!5},hasitem={item=ds:megaphone,location=slot.hotbar}] megaphone_on

scoreboard players add @s[scores={move=30}] speech 3
execute as @s[scores={move=29}] run function speech/speech_limit


execute as @s[scores={move=25..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=25..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=25..}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=25..}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~


playanimation @s[scores={move=16..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=16..,Stun=1..}] move 2

scoreboard players set @s[scores={move=12..}] Move 5

execute as @s[scores={move=25}] at @s anchored eyes run particle ds:run ^1.5^^
execute as @s[scores={move=15}] at @s anchored eyes run particle ds:away ^-1.5^^

execute as @s[scores={move=20}] at @s positioned ^^1^1 if entity @e[family=mahoraga,r=15,c=1] run function damages/speech_damage
execute as @s[scores={move=20}] at @s positioned ^^1^1 unless entity @e[family=mahoraga,r=15,c=1] if entity @e[scores={wheelactive=1..},r=15,c=1] run function damages/speech_damage


scoreboard players set @s[scores={move=12..25}] Camera 6
execute as @s[scores={move=25}] at @s positioned ^^1^1 run camerashake add @a[r=25] 0.15 0.45
execute as @s[scores={move=25}] at @s positioned ^^1^1 run playsound mob.speech_runaway @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=25}] at @s positioned ^^1^1 run playsound mob.cursed_tune @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=15}] at @s positioned ^^1^1 run camerashake add @a[r=25] 1 0.17 rotational


tag @s[scores={move=15},tag=!cursed_speaking] add cursed_speaking
scoreboard players operation @s[scores={move=16}] speech_strength = @s Energy
execute as @s[scores={move=15},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^7.05 run function speech/run_away
execute as @s[scores={move=15},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^14.05 run function speech/run_away

execute as @s[scores={move=15},hasitem={item=ds:megaphone,location=slot.hotbar}] at @s positioned ^^1^25 run function speech/run_away_mg
tag @s[scores={move=15},tag=cursed_speaking] remove cursed_speaking

event entity @s[scores={move=1..2},has_property={property:heart=1..}] heart_off
playanimation @s[scores={move=0..1},tag=!noStunnedAnim] animation.cancel
tag @s[scores={move=0..1},tag=form2] remove form2