scoreboard players add @s[scores={weapontype=0..2}] weapontype 1
scoreboard players set @s[scores={weapontype=3..}] weapontype 0
scoreboard players set @s[scores={weapontype=1..,nocts=1..}] weapontype 0

event entity @s[scores={weapontype=0}] mahito_off
event entity @s[scores={weapontype=0}] mahito_metal_off
event entity @s[scores={weapontype=0}] heart_off

event entity @s[scores={weapontype=1}] mahito_on
event entity @s[scores={weapontype=1}] mahito_metal_on
event entity @s[scores={weapontype=1}] mahito_blades

event entity @s[scores={weapontype=2}] mahito_on
event entity @s[scores={weapontype=2}] mahito_metal_off
event entity @s[scores={weapontype=2}] mahito_heavy

playsound random.disfigure @a[r=33] ~~1~ 99999 1 99999
playanimation @s animation.mahito.formation