playanimation @s[scores={move=130},tag=beastawakening] animation.amber_beast

scoreboard players set @s[scores={move=3..},tag=beastawakening] Move 5
scoreboard players set @s[scores={move=6..},tag=beastawakening] Camera 5
scoreboard players set @s[scores={move=6..},tag=beastawakening] infinity 15
scoreboard players set @s[scores={move=6..},tag=beastawakening] Frames 15


tag @s[scores={move=1..2},tag=beastawakening] remove beastawakening

execute as @s[scores={move=129..131},tag=beastawakening] at @s run tp @s @s

execute as @s[scores={move=100},tag=beastawakening] at @s run weather thunder
execute as @s[scores={move=1..5},tag=beastawakening] at @s run weather clear
execute as @s[scores={move=100},tag=beastawakening] at @s run playsound ambient.weather.thunder @a[r=999] ~~~ 99999 1 99999
execute as @s[scores={move=80},tag=beastawakening] at @s run playsound ambient.weather.thunder @a[r=999] ~~~ 99999 1.25 99999
execute as @s[scores={move=60},tag=beastawakening] at @s run playsound ambient.weather.thunder @a[r=999] ~~~ 99999 0.5 99999
execute as @s[scores={move=75},tag=beastawakening] at @s run playsound ambient.weather.thunder @a[r=999] ~~~ 99999 0.7 99999
execute as @s[scores={move=90},tag=beastawakening] at @s run playsound ambient.weather.thunder @a[r=999] ~~~ 99999 1.75 99999
execute as @s[scores={move=30},tag=beastawakening] at @s run playsound ambient.weather.thunder @a[r=999] ~~~ 99999 1 99999

execute as @s[scores={move=130},tag=beastawakening] at @s run particle ds:beast_storm1 ~~70~
execute as @s[scores={move=125},tag=beastawakening] at @s run particle ds:beast_storm1 ~~70~
execute as @s[scores={move=120},tag=beastawakening] at @s run particle ds:beast_storm1 ~~70~
execute as @s[scores={move=115},tag=beastawakening] at @s run particle ds:beast_storm1 ~~70~
execute as @s[scores={move=110},tag=beastawakening] at @s run particle ds:beast_storm1 ~~70~
execute as @s[scores={move=1..100},tag=beastawakening] at @s run particle ds:beast_storm1 ~~70~
execute as @s[scores={move=1..100},tag=beastawakening] at @s run particle ds:beast_storm2 ~~70~

execute as @s[scores={move=100},tag=beastawakening] at @s run particle ds:beast_storm3 ~~63~
execute as @s[scores={move=90},tag=beastawakening] at @s run particle ds:beast_storm3 ~~62~
execute as @s[scores={move=95},tag=beastawakening] at @s run particle ds:beast_storm3 ~~61~
execute as @s[scores={move=5..80},tag=beastawakening] at @s run particle ds:beast_storm3 ~~60~
execute as @s[scores={move=25..50},tag=beastawakening] at @s run particle ds:beast_storm4 ~~59~
execute as @s[scores={move=25..25},tag=beastawakening] at @s run particle ds:beast_storm5 ~~65~

execute as @s[scores={move=19..24},tag=beastawakening] at @s run particle ds:beast_storm6 ~~49~
execute as @s[scores={move=19..24},tag=beastawakening] at @s run particle ds:beast_storm7 ~~49~

execute as @s[scores={move=15},tag=beastawakening] at @s run particle ds:large_slam1
execute as @s[scores={move=15},tag=beastawakening] at @s run particle ds:large_slam2
execute as @s[scores={move=15},tag=beastawakening] at @s run particle ds:large_slam3
execute as @s[scores={move=15},tag=beastawakening] at @s run particle ds:large_slam4
execute as @s[scores={move=15},tag=beastawakening] at @s run particle ds:dirt4
execute as @s[scores={move=15},tag=beastawakening] at @s run particle ds:crater3
execute as @s[scores={move=15},tag=beastawakening] at @s run particle ds:lightning_shockwave3
execute as @s[scores={move=15},tag=beastawakening] at @s run particle ds:dirt0

execute as @s[scores={move=15..24},tag=beastawakening] at @s run effect @a night_vision 2 1 true
execute as @s[scores={move=15..24},tag=beastawakening] at @s run camerashake add @a 4 0.25
execute as @s[scores={move=15..24},tag=beastawakening] at @s run playsound random.explode @a ~~~ 99999 0.5 99999
execute as @s[scores={move=15..24},tag=beastawakening] at @s run playsound random.explode @a ~~~ 99999 0.25 99999
execute as @s[scores={move=15..24},tag=beastawakening] at @s run playsound random.explode @a ~~~ 99999 0.75 99999
execute as @s[scores={move=15..24},tag=beastawakening] at @s run playsound random.explode @a ~~~ 99999 0.35 99999
execute as @s[scores={move=15..24},tag=beastawakening] at @s run playsound mob.shock1 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=15..24},tag=beastawakening] at @s run playsound rmob.electricity @a ~~~ 99999 0.85 99999
execute as @s[scores={move=20},tag=beastawakening] at @s run camera @a[r=200] fade time 0 0 0.15 color 255 255 255

give @s[scores={move=12},tag=beastawakening,type=player] ds:lightning5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[scores={move=12},tag=beastawakening,type=player] ds:lightning6 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
tellraw @s[scores={move=12},tag=beastawakening,type=player] {"rawtext":[{"text":"§5You are now transforming into the Mythical Beast Amber,\n you have been granted new attacks."}]}

execute as @s[scores={move=15..24},tag=beastawakening] at @s run scoreboard players set @s ltncloak 2400
execute as @s[scores={move=15..24},tag=beastawakening] at @s run scoreboard players set @s ability2 2400
execute as @s[scores={move=15..24},tag=beastawakening] at @s run scoreboard players set @s amberbeast 4800
execute as @s[scores={move=1..24},tag=beastawakening] at @s unless entity @s[scores={countdown3=0}] run scoreboard players set @s countdown3 0
execute as @s[scores={move=15},tag=beastawakening] at @s run scoreboard players operation @s amberbeast += @s Energy

execute as @s[scores={move=129},tag=beastawakening,type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^-0.75^10 rot ~-15 ~180
execute as @s[scores={move=127},tag=beastawakening,type=player] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_out_circ pos ^^-0.25^1 rot ~-25 ~180

execute as @s[scores={move=110},tag=beastawakening,type=player] at @s anchored eyes run camera @s fade time 0 0.5 0.5 color 0 0 0

execute as @s[scores={move=109},tag=beastawakening,type=player] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_out_circ pos ^13^3^13 rot ~-5 ~133
execute as @s[scores={move=97},tag=beastawakening,type=player] at @s anchored eyes run camera @s set minecraft:free ease 2.5 in_out_circ pos ^19^5^19 rot ~-75 ~133

execute as @s[scores={move=26},tag=beastawakening,type=player] at @s anchored eyes run camera @s set minecraft:free ease 0.15 in_out_circ pos ^13^3^13 rot ~-5 ~133

execute as @s[scores={move=14},tag=beastawakening] at @s run camera @a[r=200] fade time 0.25 0.5 0.5 color 255 255 255
execute as @s[scores={move=5},tag=beastawakening] at @s run scoreboard players set @s move 1040

execute as @s[scores={move=1038},tag=beastawakening,type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^4^1 rot ~45 ~180
execute as @s[scores={move=1036},tag=beastawakening,type=player] at @s anchored eyes run camera @s set minecraft:free ease 3 in_sine pos ^^^7 rot ~ ~180

scoreboard players set @s[scores={move=900..970},tag=beastawakening] move 3


