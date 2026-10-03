



tp @s[tag=!sukuna_warning_cutscene] ~~~ facing @e[tag=transfiguring,c=1]
playanimation @s[tag=!sukuna_warning_cutscene] animation.absorbed
scoreboard players set @s[tag=!sukuna_warning_cutscene] Stun 20
scoreboard players set @s[tag=!sukuna_warning_cutscene] Camera 20
scoreboard players set @s[tag=!sukuna_warning_cutscene] dying 6
tag @s[tag=!sukuna_warning_cutscene] add rctunless
execute unless entity @s[tag=sukuna_warning_cutscene] run playsound mob.disfigure1 @a[r=25] ~~1~ 99999 0.75 99999
execute unless entity @s[tag=sukuna_warning_cutscene] run playsound mob.drowned.say @a[r=25] ~~1~ 99999 0.85 99999
effect @s[tag=!sukuna_warning_cutscene] blindness 1 1 true
tag @e[c=1,tag=transfiguring] remove transfiguring
execute unless entity @s[tag=sukuna_warning_cutscene] run summon ds:transfigured_human
execute unless entity @s[tag=sukuna_warning_cutscene] run playanimation @e[type=ds:transfigured_human,c=1,r=2] animation.transfigure_formed
kill @s[family=dummy]

