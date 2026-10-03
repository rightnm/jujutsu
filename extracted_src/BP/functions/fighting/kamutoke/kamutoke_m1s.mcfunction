


tag @s[tag=itemUse:ds:kamutoke] add wepclick
execute as @s[tag=itemUse:ds:kamutoke] at @s run function fighting/kamutoke/use_kamutoke_heavy



tag @s[scores={Stun=0,move=0,punch=1},tag=!abilitying] add kamutokem1
scoreboard players set @s[scores={Stun=0,move=0,punch=1},tag=!abilitying] move 6



event entity @s[scores={sukunacutscene=0},has_property={property:kamutoke=!1}] kamutoke_on
event entity @s[scores={sukunacutscene=1..},has_property={property:kamutoke=!2}] kamutoke_on_right

playanimation @s[scores={move=5..6},tag=kamutokem1] animation.kamutoke_parry

execute as @s[scores={move=5..6},tag=kamutokem1] at @s run camerashake add @a[r=5] 0.1 0.08
execute as @s[scores={move=5},tag=kamutokem1] at @s run playsound use.netherite @a[r=25] ~~~ 99999 1.5 99999
execute as @s[scores={move=5},tag=kamutokem1] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 0.1 1.5


execute as @s[scores={move=1..5,Hit=1..},tag=kamutokem1] at @s run function fighting/kamutoke/counter
execute as @s[scores={move=1..5,Stun=1..},tag=kamutokem1] at @s run function fighting/kamutoke/counter
execute as @s[scores={move=1..5},tag=kamutokem1] at @s positioned ^^^5 if entity @e[scores={atk=1..},r=4.9] run function fighting/kamutoke/counter

tag @s[scores={move=1..2},tag=kamutokem1] remove kamutokem1