scoreboard players remove @s[scores={sukunamode=1..}] sukunamode 1


execute as @s[has_property={property:heart_wound=1},scores={sukunamode=22}] at @s run playsound mob.heartbeat @s ~~~ 99999 0.7 99999
scoreboard players add @s[has_property={property:heart_wound=1},scores={sukunamode=1..5}] respawn 0
playanimation @s[has_property={property:heart_wound=1},scores={sukunamode=1..5,respawn=0}] animation.sukuna_finger.reject
scoreboard players set @s[has_property={property:heart_wound=1},scores={sukunamode=1..5,respawn=0}] dying 60

scoreboard players set @s[scores={sukunamode=20..25},tag=abilitying] sukunamode 26

event entity @s[scores={sukunamode=19,respawn=0}] sukuna_markings_red0
event entity @s[scores={sukunamode=18,respawn=0}] sukuna_markings_red1
event entity @s[scores={sukunamode=17,respawn=0}] sukuna_markings_red
event entity @s[scores={sukunamode=10,respawn=0}] sukuna_markings_red1
event entity @s[scores={sukunamode=9,respawn=0}] sukuna_markings_red0
event entity @s[scores={sukunamode=8,respawn=0}] sukuna_markings
event entity @s[scores={sukunamode=7,respawn=0}] sukunatextureoff
event entity @s[scores={sukunamode=7,respawn=0},m=c] heart_wound_off

tag @s[scores={sukunamode=19..20},tag=reversecursed,tag=!reversecursedown] remove reversecursed
tag @s[scores={sukunamode=19..20},tag=rctmaster,tag=!rctmasterown] remove rctmaster
scoreboard players set @s[scores={sukunamode=19..20,hollowbasketown=1},tag=!hollowbasketown] hollowbasketown 0
execute as @s[scores={sukunamode=19..20}] at @s run function sukuna/sukuna_clear
tag @s[scores={sukunamode=1..4},tag=reversecursedown] remove reversecursedown
tag @s[scores={sukunamode=1..4},tag=rctmasterown] remove rctmasterown
tag @s[scores={sukunamode=1..4},tag=hollowbasketown] remove hollowbasketown
tag @s[scores={sukunamode=1..4},tag=sukuna] remove sukuna
