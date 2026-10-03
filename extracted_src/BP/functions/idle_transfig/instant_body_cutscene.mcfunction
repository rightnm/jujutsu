playanimation @s[scores={cutscene=250..251}] animation.instant_body.activate

tag @s[scores={cutscene=0..2}] remove form12

execute as @s[scores={cutscene=250..}] at @s run tp @s ~~~~ 0
execute as @s[scores={cutscene=2..},type=!player] at @s run tp @s ~~~~ 0

event entity @s[scores={cutscene=250..251}] custom_body_off

execute as @s[scores={cutscene=250..251}] at @s anchored eyes run camera @s set minecraft:free pos ^^-0.4^1 facing ^^-0.35^0.25
execute as @s[scores={cutscene=249..}] at @s anchored eyes run camera @s set minecraft:free ease 5 in_sine pos ^^-0.5^1.15 facing ^^-0.35^0.25

scoreboard players set @s[scores={Move=0..5}] Move 20
scoreboard players set @s[scores={Camera=0..5}] Camera 20

execute as @s[scores={cutscene=245}] at @s run playsound mob.instant_body @a[r=100] ~~1~ 99999 1 99999

execute as @s[scores={cutscene=244}] at @s run tellraw @a {"rawtext":[{"text": "§f<§r"},{"selector": "@s"},{"text": "§f> §uIdle Transfiguration..."}]}
execute as @s[scores={cutscene=62}] at @s run tellraw @a {"rawtext":[{"text": "§f<§r"},{"selector": "@s"},{"text": "§f> §uInstant Spirit Body of Distorted Killing..."}]}

event entity @s[scores={cutscene=1..},has_property={property:body_transfigure=0}] mahito_on
execute as @s[scores={cutscene=220}] at @s anchored eyes run camera @s set minecraft:free pos ^-5^-0.5^-0.25 facing ^^-0.5^-0.25
execute as @s[scores={cutscene=205}] at @s anchored eyes run camera @s set minecraft:free ease 12 out_back pos ^-5^-0.5^ facing ^^-0.75^-0.5
execute as @s[scores={cutscene=190}] at @s anchored eyes run camera @s set minecraft:free ease 12 out_back pos ^-5^-0.5^ facing ^^-0.25^0.25
execute as @s[scores={cutscene=175}] at @s anchored eyes run camera @s set minecraft:free ease 12 out_back pos ^-5^-0.5^ facing ^^^0.25

execute as @s[scores={cutscene=156}] at @s run particle ds:curses_energy_hit1_big ~~1~
execute as @s[scores={cutscene=156}] at @s run particle ds:curses_energy_hit2_big ~~1~
execute as @s[scores={cutscene=156}] at @s run particle ds:curses_energy_hit3_big ~~1~
execute as @s[scores={cutscene=156}] at @s run particle ds:burst_impact ~~1~
execute as @s[scores={cutscene=156}] at @s run summon ds:instant_body_formation ~~~ facing ^^^20

replaceitem entity @s[scores={cutscene=130}] slot.armor.feet 1 air
replaceitem entity @s[scores={cutscene=130},hasitem={item=ds:instant_armour,location=slot.armor.legs,quantity=0}] slot.armor.legs 1 ds:instant_armour 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={cutscene=130}] slot.armor.chest 1 air
replaceitem entity @s[scores={cutscene=130}] slot.armor.head 1 air

execute as @s[scores={cutscene=154..155}] at @s anchored eyes run camera @s set minecraft:free pos ^-7^-0.75^18 facing ^-7^1^
execute as @s[scores={cutscene=153..154}] at @s anchored eyes run camera @s set minecraft:free ease 5 in_sine pos ^-2^-0.75^18 facing ^-2^1^

execute as @s[scores={cutscene=110..156}] at @s run scoreboard players set @e[r=10,tag=!Frames,tag=!form12] Flourish 5

execute as @s[scores={cutscene=131..132}] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_sine pos ^-2.75^-0.75^18 facing ^-2^1^
execute as @s[scores={cutscene=123..124}] at @s anchored eyes run camera @s set minecraft:free ease 3 in_sine pos ^-2^-0.75^18 facing ^-2^1^
execute as @s[scores={cutscene=130..133}] at @s run particle ds:instant_body_line ^-5^^17.6

event entity @s[scores={cutscene=130..132}] instant_body_on

execute as @s[scores={cutscene=126..127}] at @s run event entity @e[type=ds:instant_body_formation,r=50,c=1] ds:disappear

execute as @s[scores={cutscene=125}] at @s run particle ds:dirt02 ~~~
execute as @s[scores={cutscene=125}] at @s run particle ds:dirt03 ~~~


execute as @s[scores={cutscene=90}] at @s run camera @s set minecraft:free pos ^0.5^0.35^1.25 facing ^-0.6^0.4^
execute as @s[scores={cutscene=88..89}] at @s run camera @s set minecraft:free ease 2 in_out_circ pos ^0.5^0.35^1.25 facing ^^1.4^

effect @s[scores={cutscene=90}] instant_health 1 4 true
camera @s[scores={cutscene=30..31}] fade time 1 1 0.25 color 0 0 0
camera @s[scores={cutscene=0..5}] clear