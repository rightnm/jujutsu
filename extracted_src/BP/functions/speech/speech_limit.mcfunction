scoreboard players operation @s speech_amt = @s speech_limit
scoreboard players operation @s speech_amt /= two endurance


execute if score @s speech >= @s speech_amt run damage @s[tag=!unselect] 10 suicide
execute if score @s speech >= @s speech_amt at @s[tag=!unselect] anchored eyes run particle ds:blood_drops2 ^^-0.85^0.15
execute if score @s speech >= @s speech_amt at @s run effect @s[tag=!unselect] slowness 2 1 true
execute if score @s speech >= @s speech_amt at @s[tag=!unselect] run playsound mob.blood @a[r=25] ~~~ 99999 2.75 99999
execute if score @s speech >= @s speech_amt at @s run camerashake add @s[type=player,tag=!unselect] 2 0.15




execute if score @s speech >= @s speech_limit at @s run scoreboard players set @s[scores={move=4..},tag=!unselect] move 3
execute if score @s speech >= @s speech_limit at @s[tag=!unselect] anchored eyes run particle ds:blood_drops3 ^^-0.85^0.15
execute if score @s speech >= @s speech_limit at @s[tag=!unselect] anchored eyes run particle ds:blood_drops2 ^^-0.85^0.15
execute if score @s speech >= @s speech_limit at @s run effect @s[tag=!unselect] slowness 10 3 true
execute if score @s speech >= @s speech_limit at @s run effect @s[tag=!unselect] blindness 10 3 true
execute if score @s speech >= @s speech_limit at @s run effect @s[tag=!unselect] wither 10 3
execute if score @s speech >= @s speech_limit at @s run scoreboard players set @s[scores={Evade=1..},tag=!unselect] Evade 0
execute if score @s speech >= @s speech_limit at @s run scoreboard players set @s[tag=!unselect] Hit 5
execute if score @s speech >= @s speech_limit at @s run scoreboard players set @s[tag=!unselect] Disabled 141
execute if score @s speech >= @s speech_limit at @s run scoreboard players set @s[tag=!unselect] Camera 141
execute if score @s speech >= @s speech_limit at @s run scoreboard players set @s[tag=!unselect] Stun 140
execute if score @s speech >= @s speech_limit at @s[tag=!unselect] run playsound mob.blood @a[r=25] ~~~ 99999 1.5 99999
execute if score @s speech >= @s speech_limit at @s run camerashake add @s[type=player,tag=!unselect] 2 0.15
execute if score @s speech >= @s speech_limit at @s run tellraw @s[type=player,tag=!unselect] {"rawtext":[{"text":"§c- You have used §8Cursed Speech§c too much. You need to wait, try training your §bCursed Energy §csome more to increase your tolerance for §8Cursed Speech§c."}]}
execute if score @s speech >= @s speech_limit run tag @s[tag=!speech_limited,tag=!unselect] add speech_limited
execute if score @s speech >= @s speech_limit run damage @s[tag=!unselect] 50 suicide
