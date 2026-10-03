
summon ds:toji_awakening "Toji" ~~~5
execute as @e[type=ds:toji_awakening,c=1] at @s run tp @s @s
scoreboard players set @e[type=ds:toji_awakening,c=1] Deleter 401
playanimation @e[type=ds:toji_awakening,c=1] animation.toji_awaken
playsound mob.wither.shoot @a ~~~ 1 0.4