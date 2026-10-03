
execute as @a[tag=delusional_trait,tag=!delusional,tag=itemUse:ds:delusional,scores={move=0,cutscene=0,Stun=0,domain=0,domainstart=0,Disabled2=0,Disabled=0,health_percent=0..30},tag=!sukuna,tag=!delusional_cutscene] unless entity @e[tag=delusional_cutscene,scores={move=1..},c=1] run tag @s add delusional_cutscene
execute as @a[tag=delusional_trait,tag=!delusional,tag=itemUse:ds:delusional,scores={move=0,cutscene=0,Stun=0,domain=0,domainstart=0,Disabled2=0,Disabled=0,health_percent=0..30},tag=!sukuna] unless entity @e[tag=delusional_cutscene,scores={move=1..},c=1] run scoreboard players set @s move 222
event entity @a[tag=delusional_trait,has_property={property:heart=0},tag=!sukuna] special_charm_on

execute as @a[tag=delusional_trait,tag=delusional,scores={move=0,cutscene=0},tag=!sukuna] at @s run tp @e[type=ds:takada_chan,c=1] ^-1^0.05^ facing ^^^5
execute as @a[tag=delusional_trait,tag=delusional,scores={move=0,cutscene=0},tag=!sukuna] at @s run scriptevent ds:delusional 0,0,0

execute as @a[tag=delusional_trait,tag=delusional,tag=itemUse:ds:delusional2,tag=!sukuna] at @s run function delusional/delusional_click
execute as @a[tag=delusional_trait,tag=delusional,scores={move=1..},tag=!sukuna] unless entity @s[tag=!delusional1,tag=!delusional2,tag=!delusional3,tag=!delusional4,tag=!delusional5] at @s run function delusional/delusional_moves

execute as @a[tag=delusional_trait,tag=delusional] at @s run tag @e[type=ds:takada_chan,r=10,tag=!temp_mark] add temp_mark
execute as @a[tag=delusional_trait,tag=delusional] at @s unless entity @e[type=ds:takada_chan,r=10,tag=temp_mark] run summon ds:takada_chan ^-1^^
execute as @a[tag=delusional_trait,tag=delusional] at @s run tag @e[type=ds:takada_chan,r=10,tag=temp_mark] remove temp_mark
execute as @a[tag=delusional_trait,tag=delusional,tag=!sukuna,tag=!on_trial,hasitem={item=ds:cursedenergy,location=slot.weapon.mainhand,quantity=0}] run titleraw @s title {"rawtext":[{"text":"§l§f※ THIS IS "},{"selector":"@s"},{"text":"'s IMAGINATION                                                                           \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

scoreboard players add @a[tag=delusional_trait,tag=delusional,tag=!infinite_delusional] delusional_timer 1
scoreboard players add @a[tag=delusional_trait,tag=delusional] delusional_music 1
playsound music.takada @a[tag=delusional_trait,scores={delusional_music=1441..}]
scoreboard players set @a[tag=delusional_trait,scores={delusional_music=1441..}] delusional_music 1
execute as @a[tag=delusional_trait,scores={delusional_timer=3800..,move=0,cutscene=0}] at @s run function remove_delusional
execute as @a[tag=delusional_trait,tag=delusional,scores={move=0,cutscene=0},tag=sukuna] at @s run function remove_delusional

tag @a[tag=delusional_trait,tag=delusional,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep5=0,detect_jump=0,punch=1},tag=boogie_woogie,tag=!delusional5] add delusional5
execute as @a[tag=delusional_trait,tag=delusional,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep5=1..,Sneaking=1..,detect_jump=0,punch=1},tag=boogie_woogie] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @a[tag=delusional_trait,tag=delusional,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep5=1..,Sneaking=1..,detect_jump=0,punch=1},tag=boogie_woogie] at @s run tellraw @s {"rawtext":[{"text":"§cHandshake is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @a[tag=delusional_trait,tag=delusional,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=0,punch=1},tag=boogie_woogie] move 101
scoreboard players set @a[tag=delusional_trait,tag=delusional,hasitem={item=ds:delusional2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=0,punch=1},tag=boogie_woogie] wep5 600