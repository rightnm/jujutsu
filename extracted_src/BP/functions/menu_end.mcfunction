tag @s remove menu
tag @s remove rolledtechnique
tag @s remove menufinal
tag @s remove menucredits
tag @s remove menuhelp
tag @s remove menuhome
tag @s remove menutraits
tag @s remove menutechniques
tag @s remove menutrait
tag @s remove menutechnique
tag @s remove rolledtechniques
tag @s remove rollingtechniques
tag @s remove rollingtechnique
tag @s remove selectedtechnique1
tag @s remove selectedtechnique2
tag @s remove selectedtechnique3
hud @a reset
stopsound @s music.menutheme
scoreboard players set @s menumusic 0
scoreboard players set @s techniquerolls 0
scoreboard players set @s common 0
scoreboard players set @s uncommon 0
scoreboard players set @s rare 0
scoreboard players set @s exotic 0
scoreboard players set @s honored 0
scoreboard players set @s detect_jump 0
scoreboard players set @s menuselect 0
scoreboard players set @s menupage 0
scoreboard players set @s menutimer2 0
scoreboard players set @s menutimer 0
scoreboard players set @s timertick2 0
execute as @s unless entity @a[tag=menu,c=1] run scoreboard objectives remove menupage
execute as @s unless entity @a[tag=menu,c=1] run scoreboard objectives remove menuselect
execute as @s unless entity @a[tag=menu,c=1] run scoreboard objectives remove menutimer2
execute as @s unless entity @a[tag=menu,c=1] run scoreboard objectives remove menutimer
camera @s fade time 0 1 2 color 0 0 0


