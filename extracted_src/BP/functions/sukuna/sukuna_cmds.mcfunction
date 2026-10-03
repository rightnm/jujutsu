scoreboard players remove @e[scores={sukunaCD=1..},tag=!sukuna] sukunaCD 1
scoreboard players remove @e[scores={DashCD=3..},tag=sukuna] DashCD 2
scoreboard players set @e[scores={sukunaperm=1}] sukunaCD 9999
execute as @e[scores={sukunamode=1..}] at @s run function sukuna/sukuna_active

execute as @e[type=ds:sukuna_innate_domain] at @s run function sukuna/innatedomain_ambience

execute as @a[tag=abilitying,tag=sukuna] at @s run function sukuna/attacks/sukuna_moves

execute unless score sukunauser Mode = one Mode run scoreboard players set sukunauser Mode 1

execute as @a[tag=sukuna,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run function sukuna/fighting/fist_m1s
execute as @a[tag=sukuna,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run function sukuna/fighting/slash_m1s
execute as @a[tag=sukuna,hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s run function sukuna/fighting/four_m1s

titleraw @a[tag=!sukuna,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n§l§4Sukuna is not active."}]}
clear @a[tag=!sukuna,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] ds:sukuna_fists
titleraw @a[tag=!sukuna,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n§l§4Sukuna is not active."}]}
clear @a[tag=!sukuna,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] ds:cleave_fists
titleraw @a[tag=!sukuna,hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n§l§4Sukuna is not active."}]}
clear @a[tag=!sukuna,hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] ds:four_fists
titleraw @a[tag=!sukuna,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n§l§4Sukuna is not active."}]}
clear @a[tag=!sukuna,hasitem={item=ds:sukuna1,location=slot.weapon.mainhand}] ds:sukuna1
titleraw @a[tag=!sukuna,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n§l§4Sukuna is not active."}]}
clear @a[tag=!sukuna,hasitem={item=ds:sukuna2,location=slot.weapon.mainhand}] ds:sukuna2
titleraw @a[tag=!sukuna,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n§l§4Sukuna is not active."}]}
clear @a[tag=!sukuna,hasitem={item=ds:sukuna3,location=slot.weapon.mainhand}] ds:sukuna3
titleraw @a[tag=!sukuna,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n§l§4Sukuna is not active."}]}
clear @a[tag=!sukuna,hasitem={item=ds:sukuna4,location=slot.weapon.mainhand}] ds:sukuna4

execute as @e[c=3,name=dissect] at @s run function sukuna/attacks/dissect
execute as @e[c=3,name=wide_dismantle] at @s run function sukuna/attacks/wide_dismantle
execute as @e[c=3,name=rapid_dismantle] at @s run function sukuna/attacks/rapid_dismantle
execute as @e[c=3,name=heavy_dismantle] at @s run function sukuna/attacks/heavy_dismantle
execute as @e[name=maxdismantle1] at @s run function sukuna/attacks/max_dismantle1
execute as @e[name=maxdismantle2] at @s run function sukuna/attacks/max_dismantle2
execute as @e[name=maxdismantle3] at @s run function sukuna/attacks/max_dismantle3

execute as @e[c=2,name=fuga_arrow1] at @s run function sukuna/attacks/fuga/fuga_arrow1
execute as @e[c=2,name=fuga_spear] at @s run function sukuna/attacks/fuga/fuga_spear
execute as @e[c=2,name=fuga_mugetsu] at @s run function sukuna/attacks/fuga/fuga_mugetsu

execute as @e[type=ds:malevolent_shrine1] at @s run function sukuna/attacks/domains/malevolent_shrine
execute as @e[type=ds:malevolent_kitchen] at @s run function sukuna/attacks/domains/malevolent_kitchen
execute as @e[type=ds:incomplete_shrine] at @s run function sukuna/attacks/domains/incomplete_shrine

execute as @p[tag=sukuna,scores={fuga=500..},tag=!fugaready] at @s run function sukuna/fuga_ready
scoreboard players set @p[scores={fuga=601..}] fuga 500
tag @a[scores={fuga=0..499},tag=fugaready] remove fugaready
scoreboard players set @a[scores={fuga=1..,finger=0..14}] fuga 0

tag @a[hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab2=0,Energy=10..,punch=1..}] add form1sc
scoreboard players set @a[hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab2=0,Sneaking=0,Energy=10..,punch=1..}] move 5
scoreboard players set @a[hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab2=0,Sneaking=0,Energy=10..,punch=1..}] sukuna_ab2 6
scoreboard players remove @a[hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=10..,move=5,Sneaking=0,punch=1}] Energy 10

tag @a[hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab5=0,Energy=300..,punch=1..}] add form2sc
scoreboard players set @p[hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Sneaking=1..,Energy=300..,punch=1..}] move 41
tellraw @p[hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab5=1..,Energy=300..,punch=1}] {"rawtext":[{"text":"§cDismantle Pummel is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab5"}},{"text":"§c."}]}
scoreboard players set @a[hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab5=0,Sneaking=1..,Energy=300..,punch=1..}] sukuna_ab5 4200
scoreboard players remove @a[hasitem={item=ds:sukuna1,location=slot.weapon.mainhand},scores={Energy=300..,move=41,Sneaking=1..,punch=1}] Energy 300

tag @a[hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab9=0,Energy=300..,punch=1..}] add form4sd
scoreboard players set @p[hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab9=0,Sneaking=1..,Energy=300..,punch=1..}] move 191
tellraw @p[hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab9=1..,Energy=300..,punch=1}] {"rawtext":[{"text":"§cCarving Combination is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab9"}},{"text":"§c."}]}
scoreboard players set @a[hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab9=0,Sneaking=1..,Energy=300..,punch=1..}] sukuna_ab9 6000
scoreboard players remove @a[hasitem={item=ds:sukuna2,location=slot.weapon.mainhand},scores={Energy=300..,move=191,Sneaking=1..,punch=1}] Energy 300




tag @a[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab8=0,Energy=500..,punch=1..,wcschant=3..}] add form9s
scoreboard players set @p[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab8=0,Sneaking=0,Energy=500..,punch=1..,wcschant=3..}] move 31
tellraw @p[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_ab8=1..,Energy=500..,punch=1,wcschant=3..}] {"rawtext":[{"text":"§cWorld Cutting Slash is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab8"}},{"text":"§c."}]}
scoreboard players set @a[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab8=0,Sneaking=0,Energy=500..,punch=1..,wcschant=3..}] sukuna_ab8 6000
scoreboard players remove @a[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Energy=500..,move=31,Sneaking=0,punch=1,wcschant=3..}] Energy 500

tag @a[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab8=0,Energy=500..,punch=1..,wcschant=3..}] add form9s2
scoreboard players set @p[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab8=0,Sneaking=1..,Energy=500..,punch=1..,wcschant=3..}] move 31
tellraw @p[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_ab8=1..,Energy=500..,punch=1,wcschant=3..}] {"rawtext":[{"text":"§cWorld Cutting Slash is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_ab8"}},{"text":"§c."}]}
scoreboard players set @a[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_ab8=0,Sneaking=1..,Energy=500..,punch=1..,wcschant=3..}] sukuna_ab8 6000
scoreboard players remove @a[hasitem={item=ds:sukuna5,location=slot.weapon.mainhand},scores={Energy=500..,move=31,Sneaking=1..,punch=1,wcschant=3..}] Energy 500


scoreboard players remove @e[scores={sukuna_wep1=1..},tag=sukuna] sukuna_wep1 1
scoreboard players remove @e[scores={sukuna_wep2=1..},tag=sukuna] sukuna_wep2 1
scoreboard players remove @e[scores={sukuna_wep3=1..},tag=sukuna] sukuna_wep3 1
scoreboard players remove @e[scores={sukuna_wep4=1..},tag=sukuna] sukuna_wep4 1
scoreboard players remove @e[scores={sukuna_wep5=1..},tag=sukuna] sukuna_wep5 1
scoreboard players remove @e[scores={sukuna_wep6=1..},tag=sukuna] sukuna_wep6 1
scoreboard players remove @e[scores={sukuna_ab1=1..},tag=sukuna] sukuna_ab1 1
scoreboard players remove @e[scores={sukuna_ab2=1..},tag=sukuna] sukuna_ab2 1
scoreboard players remove @e[scores={sukuna_ab3=1..},tag=sukuna] sukuna_ab3 1
scoreboard players remove @e[scores={sukuna_ab4=1..},tag=sukuna] sukuna_ab4 1
scoreboard players remove @e[scores={sukuna_ab5=1..},tag=sukuna] sukuna_ab5 1
scoreboard players remove @e[scores={sukuna_ab6=1..},tag=sukuna] sukuna_ab6 1
scoreboard players remove @e[scores={sukuna_ab7=1..},tag=sukuna] sukuna_ab7 1
scoreboard players remove @e[scores={sukuna_ab8=1..},tag=sukuna] sukuna_ab8 1
scoreboard players remove @e[scores={sukuna_ab9=1..},tag=sukuna] sukuna_ab9 1
scoreboard players remove @e[scores={sukuna_ab10=1..},tag=sukuna] sukuna_ab10 1
scoreboard players remove @e[scores={sukuna_ab11=1..},tag=sukuna] sukuna_ab11 1
scoreboard players remove @e[scores={sukuna_ab12=1..},tag=sukuna] sukuna_ab12 1

effect @a[has_property={property:body_transformation=1..4},scores={detect_sprint=1..,BasicM1s=0},tag=!abilitying] speed 1 15 true

execute as @p[scores={punch=1,Sneaking=30..,finger=15..},hasitem={item=ds:sukuna_technique,location=slot.weapon.mainhand}] at @s[hasitem={item=ds:yuji_fists}] unless entity @e[type=ds:megumi_idle,r=20] positioned ^^^3 run function sukuna/activate_meguna_cutscene
execute as @p[tag=megunacutscene_p1,scores={sukunacutscene=1..}] at @s run function sukuna/meguna_cutscene




