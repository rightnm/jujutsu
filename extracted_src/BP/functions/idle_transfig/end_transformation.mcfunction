particle ds:curses_energy_hit1 ~~1~
particle ds:curses_energy_hit2 ~~1~
particle ds:curses_energy_hit3 ~~1~
particle ds:curses_energy1 ~~1~
playsound mob.disfigure1 @a ~~~
playsound mob.zombie.remedy @a[r=100] ~~~ 9999 0.6 9999
playsound random.glass @a[r=100] ~~~ 9999 0.3 9999
playsound mob.instant_body_break @a[r=100] ~~~ 9999 1 9999
playanimation @s[scores={Stun=0}] animation.mahito.reform
event entity @s[has_property={property:body_transformation=!0}] custom_body_off
replaceitem entity @s[hasitem={item=ds:instant_armour,location=slot.armor.legs}] slot.armor.legs 1 air
tag @s[tag=instant_body] remove instant_body
tag @s[tag=resistance_0.5x] remove resistance_0.5x
scoreboard players set @s ability12 6000
scoreboard players set @s[scores={instantbody_durability=1..}] instantbody_durability 0
scoreboard players operation @s[scores={instantbody_durability=..-1}] instantbody_durability *= negative_one Mode
scoreboard players operation @s[scores={instantbody_durability=1..}] damage += @s instantbody_durability
scoreboard players set @s[scores={instantbody_durability=!0}] instantbody_durability 0