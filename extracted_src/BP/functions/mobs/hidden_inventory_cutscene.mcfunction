
execute as @s[scores={cutscene=1321..2002}] at @s run tp @e[type=ds:toji,c=1] ~~~-15 facing @s
execute as @s[scores={cutscene=2000}] at @s run tp @s ~~~ ~180
scoreboard players set @s scroll 0
scoreboard players set @e[type=ds:toji,r=40] scroll 0
tag @s add Frames
scoreboard players set @e[type=ds:toji,r=35] cutscene 20

execute as @s[scores={cutscene=1..2}] at @s run tag @s remove hidden_inventory_cutscene


playanimation @s[scores={cutscene=1980..2002}] animation.gojo_revival
execute as @s[scores={cutscene=1541..2002}] at @s positioned ^^^7 run replaceitem entity @e[type=ds:toji,c=1] slot.weapon.mainhand 1 air
execute as @s[scores={cutscene=1990..2000}] at @s run damage @e[type=ds:toji,r=40] 1 entity_attack entity @s
execute as @s[scores={cutscene=2000}] at @s run playsound beacon.ambient @a[r=50] ~~~ 99999 1.75 99999
execute as @s[scores={cutscene=2000}] at @s run playsound beacon.activate @a[r=50] ~~~ 99999 0.3 99999

execute as @s[scores={cutscene=1840}] at @s unless entity @e[type=ds:toji,r=50] run scoreboard players set @s cutscene 3


playanimation @s[scores={cutscene=1838..1839}] animation.hidden_inventory_gojo1
execute as @s[scores={cutscene=1830}] at @s run playsound mob.hiddeninventorydialogue_start @a[r=120] ~~~ 99999 1 99999

playanimation @s[scores={cutscene=1780}] animation.hidden_inventory_gojo2
execute as @s[scores={cutscene=1772}] at @s run playsound mob.hiddeninventorydialogue1 @a[r=120] ~~~ 99999 1 99999

execute as @s[scores={cutscene=1540}] at @s positioned ^^^7 run playanimation @e[type=ds:toji,c=1] animation.hidden_inventory_toji1
execute as @s[scores={cutscene=1534}] at @s positioned ^^^7 run execute as @e[type=ds:toji,c=1] at @s run playsound mob.hiddeninventorydialogue2 @a[r=120] ~~~ 99999 1 99999
execute as @s[scores={cutscene=1530}] at @s positioned ^^^7 run scoreboard players set @e[type=ds:toji,c=1] weapontype 1
execute as @s[scores={cutscene=1530}] at @s positioned ^^^7 run replaceitem entity @e[type=ds:toji,c=1] slot.weapon.mainhand 1 ds:inverted_spear

playanimation @s[scores={cutscene=1405}] animation.hidden_inventory_gojo3
execute as @s[scores={cutscene=1403}] at @s run playsound mob.hiddeninventorydialogue3 @a[r=120] ~~~ 99999 1 99999

execute as @s[scores={cutscene=1300..1301}] at @s positioned ^^^7 run playanimation @e[type=ds:toji,c=1] animation.hidden_inventory_attack
execute as @s[scores={cutscene=1300..1301}] at @s run playanimation @s animation.hidden_inventory_dodge
execute as @s[scores={cutscene=1180..1181}] at @s run tp @e[type=ds:toji,c=1] ^^^0.5 facing ^^^-20

execute as @s[scores={cutscene=1300}] at @s run scoreboard players set @s cutscene 1200

execute as @s[scores={cutscene=1170}] at @s run execute as @e[type=ds:toji,c=1] at @s run playsound mob.witch.throw @a[r=100] ~~~ 99999 1.1 99999
execute as @s[scores={cutscene=1170}] at @s run execute as @e[type=ds:toji,c=1] at @s run camerashake add @a[r=50] 2 0.1

execute as @s[scores={cutscene=1150}] at @s run summon ds:projectile ~~~ facing ^^^10 none "hiddeninventory"
execute as @s[scores={cutscene=1116..1150}] at @s run scoreboard players set @e[name="hiddeninventory",c=1] Deleter 20

execute as @s[scores={cutscene=1150}] at @s run execute as @e[name="hiddeninventory",c=1] at @s run tp @e[type=ds:student_gojo2,c=1] ^^1^-1.5 facing @e[type=ds:toji,c=1]
execute as @s[scores={cutscene=1150}] at @s run execute as @e[name="hiddeninventory",c=1] at @s run tp @e[type=ds:toji,c=1] ^^0.35^7.5 facing ~~1~

playanimation @s[scores={cutscene=1150}] animation.reversal_red2b
execute as @s[scores={cutscene=1149..1151}]  run particle ds:flashstep1 ~~~

execute as @s[scores={cutscene=1112}] at @s run camerashake add @a[r=50] 4 0.25
execute as @s[scores={cutscene=1145}] at @s run camera @a[r=20] fade time 1 0 1 color 255 75 75

execute as @s[scores={cutscene=1145}] at @s run playsound mob.red1 @a ~~~  100000 0.37 100000
execute as @s[scores={cutscene=1106}] at @s run playsound mob.shock2 @a ~~~  100000 0.35 100000
execute as @s[scores={cutscene=1106}] at @s run playsound mob.shock1 @a ~~~  100000 0.5 100000

execute as @s[scores={cutscene=1..1150}] at @s run tp @s ~~~

execute as @s[scores={cutscene=1111}] at @s run particle ds:red_ex6 ^^^1
execute as @s[scores={cutscene=1111}] at @s run particle ds:red_ex4 ^^^1
execute as @s[scores={cutscene=1111}] at @s run particle ds:red_ex ^^^1
execute as @s[scores={cutscene=1111}] at @s run particle ds:air_effect1 ^^^1
execute as @s[scores={cutscene=1110}] at @s run particle ds:red_ex6 ^^^4
execute as @s[scores={cutscene=1110}] at @s run particle ds:red_ex4 ^^^4
execute as @s[scores={cutscene=1110}] at @s run particle ds:red_ex ^^^4
execute as @s[scores={cutscene=1110}] at @s run particle ds:air_effect1 ^^^4
execute as @s[scores={cutscene=1109}] at @s run particle ds:red_ex6 ^^^7
execute as @s[scores={cutscene=1109}] at @s run particle ds:red_ex4 ^^^7
execute as @s[scores={cutscene=1109}] at @s run particle ds:red_ex ^^^7
execute as @s[scores={cutscene=1109}] at @s run particle ds:air_effect1 ^^^7
execute as @s[scores={cutscene=1108}] at @s run particle ds:red_ex6 ^^^10
execute as @s[scores={cutscene=1108}] at @s run particle ds:red_ex4 ^^^10
execute as @s[scores={cutscene=1108}] at @s run particle ds:red_ex ^^^10
execute as @s[scores={cutscene=1108}] at @s run particle ds:air_effect1 ^^^10
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex6 ^^^13
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex4 ^^^13
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex ^^^13
execute as @s[scores={cutscene=1107}] at @s run particle ds:air_effect1 ^^^13
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex6 ^^^16
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex4 ^^^16
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex ^^^16
execute as @s[scores={cutscene=1107}] at @s run particle ds:air_effect1 ^^^16
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex6 ^^^19
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex4 ^^^19
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex ^^^19
execute as @s[scores={cutscene=1107}] at @s run particle ds:air_effect1 ^^^19
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex6 ^^^24
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex4 ^^^24
execute as @s[scores={cutscene=1107}] at @s run particle ds:red_ex ^^^24
execute as @s[scores={cutscene=1107}] at @s run particle ds:air_effect1 ^^^24

execute as @s[scores={cutscene=1100}] at @s run execute as @e[name="hiddeninventory",c=1] at @s run tp @e[type=ds:student_gojo2,c=1] ^^14^-5.5 facing @e[type=ds:toji,c=1]

execute as @s[scores={cutscene=1102}] at @s run scoreboard players set @e[type=ds:toji,c=1] Hit 3
execute as @s[scores={cutscene=1102}] at @s run scoreboard players set @e[type=ds:toji,c=1] knockdown 25
execute as @s[scores={cutscene=1000..1102}] at @s run execute as @e[name="hiddeninventory",c=1] at @s run tp @e[type=ds:toji,c=1] ^^2^25 facing @s


execute as @s[scores={cutscene=1000..1152}] at @s run  execute as @e[type=ds:toji,c=1] at @s if block ~~-0.15~ air run tp @s ~~-0.15~
execute as @s[scores={cutscene=1000..1152}] at @s run  execute as @e[type=ds:toji,c=1] at @s if block ~~-0.15~ air run tp @s ~~-0.15~
execute as @s[scores={cutscene=1000..1152}] at @s run  execute as @e[type=ds:toji,c=1] at @s if block ~~-0.15~ air run tp @s ~~-0.15~

scoreboard players set @s[scores={cutscene=1050}] cutscene 5002
playanimation @s[scores={cutscene=5000..5001}] animation.honored_one_scene
execute as @s[scores={cutscene=5000..5001}] at @s run execute as @a[r=40] at @s run playsound music.hiddeninventorydialogue_end @s ~~~ 99999 1 99999
execute as @s[scores={cutscene=2100..5001}] at @s run tp @s ~~~ facing @e[type=ds:toji,c=1]

execute as @s[scores={cutscene=2010..}] at @s run particle ds:levitate_1a ~~-1.5~
execute as @s[scores={cutscene=2010..}] at @s run particle ds:levitate_2a ~~-1.5~

execute as @s[scores={cutscene=4500}] at @s run effect @a[r=100] night_vision 11 1 true
execute as @s[scores={cutscene=4380..4500}] at @s run particle ds:honored ~~1~
execute as @s[scores={cutscene=4380..4500}] at @s run particle ds:honored2 ~~1~

execute as @s[scores={cutscene=4010}] at @s run summon ds:projectile ImagineBlue ^-2.5 ^1.5 ^1
execute as @s[scores={cutscene=4010}] at @s run summon ds:projectile ImagineRed ^2.5 ^1.5 ^1
execute as @s[scores={cutscene=4010}] at @s run summon ds:projectile ImagineTRG ^^1^1

execute as @s[scores={cutscene=3990}] at @s run particle ds:hollow_blue_stars ^-2.5^1^1
execute as @s[scores={cutscene=3990}] at @s run particle ds:hollow_red_stars ^2.5^1^1
execute as @s[scores={cutscene=3991..4008}] at @s run scoreboard players set @e[type=!item,name=ImagineBlue,c=1] Deleter 6
execute as @s[scores={cutscene=3991..4008}] at @s run scoreboard players set @e[type=!item,name=ImagineRed,c=1] Deleter 6
execute as @s[scores={cutscene=3991..4008}] at @s run scoreboard players set @e[type=!item,name=ImagineTRG,c=1] Deleter 6

execute as @s[scores={cutscene=3980..}] at @s run execute as @e[type=!item,name=ImagineRed,c=1] at @s run function limitless/limitless5proj
execute as @s[scores={cutscene=3980..}] at @s run execute as @e[type=!item,name=ImagineBlue,c=1] at @s run function limitless/limitless5proj

execute as @s[scores={cutscene=3989..3990}] at @s run playanimation @e[type=!item,name=ImagineTRG,c=1] animation.imaginary_collide
execute as @s[scores={cutscene=3990}] at @s run playsound mob.water @a ~~~ 1000 0.5 1000
execute as @s[scores={cutscene=3990}] at @s run camera @a[r=100] fade time 0.1 0 0.2 color 255 255 255

execute as @e[type=!item,name=ImagineTRG] at @s run tp @s ~~~
execute as @s[scores={cutscene=3990..4008}] at @s run tp @e[type=!item,name=ImagineTRG,c=1] ^^1.25^1.33 facing @s
execute as @s[scores={cutscene=3990..4008}] at @s run tp @e[type=!item,name=ImagineTRG,c=1] ^^1.25^1.33 facing @s

execute as @s[scores={cutscene=3834}] at @s run effect @a[r=20] night_vision 5 1 true
execute as @s[scores={cutscene=3834}] at @s run summon ds:projectile ImaginaryP ^^1^1
execute as @s[scores={cutscene=3834}] at @s run execute as @e[type=ds:toji,c=1] at @s run summon ds:projectile ImaginaryPTRG2 ~~~
execute as @s[scores={cutscene=3834}] at @s run camerashake add @a[r=40] 2 0.25
execute as @s[scores={cutscene=3833..3834}] at @s run scoreboard players set @e[type=!item,name=ImaginaryP,c=1] Deleter 20
execute as @s[scores={cutscene=3833..3834}] at @s positioned ^^^65 run scoreboard players set @e[type=!item,name=ImaginaryPTRG2,c=1] Deleter 20


execute as @s[scores={cutscene=3837}] at @s run camera @a[r=100] fade time 0.5 1 1 color 245 50 245
execute as @s[scores={cutscene=3834}] at @s run execute as @e[type=ds:toji,c=1] at @s run function mobs/toji_apple

execute as @s[scores={cutscene=3832..3834}] at @s run scoreboard players set @e[type=ds:toji_apple,c=1] Deleter 195
execute as @s[scores={cutscene=3800..3834}] at @s run playanimation @e[type=ds:toji_apple,c=1,scores={Deleter=193..}] animation.toji.apple



scoreboard players set @s[scores={cutscene=3650..3680}] cutscene 2
effect @s[scores={cutscene=3681..3690}] slow_falling 5 1 true

