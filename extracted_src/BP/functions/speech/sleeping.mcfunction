scoreboard players remove @s[scores={sleep=1..}] sleep 1
scoreboard players remove @s[scores={sleep=1..,Hit=1..}] sleep 1
playanimation @s[scores={sleep=5..}] animation.cursed_speech.sleeping
tp @s ~~~~ 0
effect @s[scores={sleep=25..},type=!player] slowness 1 10 true
tag @s[scores={sleep=5..},tag=!noStunnedAnim] add noStunnedAnim
scoreboard players set @s[scores={sleep=5..}] Camera 26
scoreboard players set @s[scores={sleep=5..}] Stun 26
scoreboard players set @s[scores={sleep=5..}] Disabled 31

camera @s[scores={sleep=5..},type=player] fade time 0 0.25 0.25 color 0 0 0
