playanimation @s[scores={move=55..56},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] animation.cursed_speech.shi_yourself
playanimation @s[scores={move=55..56},hasitem={item=ds:megaphone,location=slot.hotbar}] animation.cursed_speech.shi_yourself_mg
event entity @s[scores={move=3..},has_property={property:heart=!5},hasitem={item=ds:megaphone,location=slot.hotbar}] megaphone_on


scoreboard players add @s[scores={move=55}] speech 33
execute as @s[scores={move=54}] run function speech/speech_limit

execute if block ~~-0.5~ air run scriptevent ds:antiair

scoreboard players set @s[scores={move=12..}] Move 5

execute as @s[scores={move=42}] at @s anchored eyes run particle ds:shi_yourself ^^1^

execute as @s[scores={move=42..}] at @s run particle ds:plummet1 ~~~
execute as @s[scores={move=55..}] at @s run particle ds:dirt0 
execute as @s[scores={move=40..41}] at @s run particle ds:dirt0 

execute as @s[scores={move=40}] at @s positioned ^^1^1 if entity @e[family=mahoraga,r=15,c=1] run function damages/speech_damage
execute as @s[scores={move=40}] at @s positioned ^^1^1 unless entity @e[family=mahoraga,r=15,c=1] if entity @e[scores={wheelactive=1..},r=15,c=1] run function damages/speech_damage

scoreboard players set @s[scores={move=12..45}] Camera 6
execute as @s[scores={move=45}] at @s positioned ^^1^1 run camerashake add @a[r=25] 0.15 0.45
execute as @s[scores={move=45}] at @s positioned ^^1^1 run playsound mob.shi_yourself @a[r=100] ~~~ 99999 1 99999

execute as @s[scores={move=15}] at @s positioned ^^1^1 run summon gg:impact_frame ^^^-1
execute as @s[scores={move=15}] at @s positioned ^^1^1 run particle ds:invert
execute as @s[scores={move=14}] at @s positioned ^^1^1 run effect @a[r=25] night_vision 1 1 true
execute as @s[scores={move=15}] at @s positioned ^^1^1 run playsound mob.cursed_speech @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={move=15}] at @s positioned ^^1^1 run camerashake add @a[r=25] 1 0.15 rotational


tag @s[scores={move=15},tag=!cursed_speaking] add cursed_speaking
execute as @s[scores={move=15},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^7.05 run function speech/shi_yourself
execute as @s[scores={move=15},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^14.05 run function speech/shi_yourself
execute as @s[scores={move=15},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^21.05 run function speech/shi_yourself

execute as @s[scores={move=15},hasitem={item=ds:megaphone,location=slot.hotbar}] at @s positioned ^^1^25 run function speech/shi_yourself_mg
tag @s[scores={move=15},tag=cursed_speaking] remove cursed_speaking


event entity @s[scores={move=1..2},has_property={property:heart=1..}] heart_off
playanimation @s[scores={move=0..1},tag=!noStunnedAnim] animation.cancel
tag @s[scores={move=0..1},tag=form11] remove form11