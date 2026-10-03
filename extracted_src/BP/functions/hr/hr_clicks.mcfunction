tag @s[tag=itemUse:ds:hr1,tag=!hrclick] add hrclick
tag @s[tag=itemUse:ds:hr2,tag=!hrclick] add hrclick
tag @s[tag=itemUse:ds:hr3,tag=!hrclick] add hrclick

tag @s[tag=itemUse:ds:hr_combat,tag=!hrclickfist] add hrclickfist


execute as @s[tag=hrclick] run function hr/hr_click
execute as @s[tag=hrclick] run function hr/hr_clickfist