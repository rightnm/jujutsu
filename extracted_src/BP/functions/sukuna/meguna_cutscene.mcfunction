
execute as @e[type=ds:megumi,tag=megunacutscene_p2,c=1] at @s run summon ds:megumi_idle ~~~ facing @p[tag=megunacutscene_p1]
execute as @e[type=ds:megumi,tag=megunacutscene_p2,c=1] at @s run tag @e[type=ds:megumi_idle,c=1] add megunacutscene_p2
execute as @e[type=ds:megumi,tag=megunacutscene_p2,c=1] at @s run scoreboard players operation @e[type=ds:megumi_idle,c=1] sukunacutscene = @s sukunacutscene
execute as @e[type=ds:megumi,tag=megunacutscene_p2,c=1] at @s if entity @e[type=ds:megumi_idle,c=1] run tp @s ~ -200 ~
execute as @e[type=ds:megumi,tag=megunacutscene_p2,c=1] at @s if entity @e[type=ds:megumi_idle,c=1] run kill @s
execute as @s[scores={sukunacutscene=10000..},tag=megunacutscene_p1] at @s run kill @e[family=shikigami,r=100]


execute as @e[type=!player,r=50,rm=1,type=!ds:megumi_idle] at @s run tp @s ~~~
effect @a[r=8] weakness 1 10 true

execute as @e[type=ds:megumi_idle] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

kill @e[type=ds:negative_field,r=20]
scoreboard players set @s[scores={sukunacutscene=201..}] Stun 200
scoreboard players set @s[scores={sukunacutscene=201..}] Disabled 200



execute as @s[scores={sukunacutscene=10000..},tag=megunacutscene_p1] at @s run scoreboard players set @a[r=48,scores={Evade=1..}] Evade 0

scoreboard players set @a[r=48] Move 116
scoreboard players set @a[r=48] Frames 116
scoreboard players set @a[r=48] Camera 116
scoreboard players set @e[r=48,rm=2] Stun 50
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]


event entity @s[scores={sukunacutscene=10000}] sukuna_markings

effect @s[type=!player] slowness 1 99 true
execute as @s[type=!player] at @s run tp @s ~~~

execute as @s[scores={sukunacutscene=10000..},tag=megunacutscene_p1] at @s run kill @e[family=purecurse,r=48]
execute as @s[scores={sukunacutscene=10000..},tag=megunacutscene_p1] at @s run execute as @a[r=48] at @s run playsound music.ryomensukuna @s ~~~ 0.5 0.7

execute as @e[c=1,tag=megunacutscene_p1] at @s if entity @p[tag=griefable] run fill ~3 ~ ~3 ~-3 ~ ~-3 air [] replace 

playanimation @s[scores={sukunacutscene=10000..},tag=megunacutscene_p1] animation.yuji_awaken_cutscene1

execute as @s[scores={sukunacutscene=10000..},tag=megunacutscene_p1] at @s run camera @a[r=10] fade time 0 0.2 0.25 color 0 0 0
execute as @s[scores={sukunacutscene=9998..},tag=megunacutscene_p1] at @s run tp @s @s
execute as @s[scores={sukunacutscene=9998..},tag=megunacutscene_p1] at @s run tp @e[tag=megunacutscene_p2,c=1] ^^^8 facing @s
playanimation @e[scores={sukunacutscene=10000..},tag=megunacutscene_p2] animation.yuji_awaken_cutscene1b

execute as @s[scores={sukunacutscene=9998..},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free pos ^^0.25^3 facing ~~1.4~
execute as @s[scores={sukunacutscene=9996..9998},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free ease 4 in_sine pos ^^0.25^7 facing ~~1.4~

execute as @s[scores={sukunacutscene=9880},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free pos ^-2^1.5^-1.5 facing @e[tag=megunacutscene_p2]
execute as @s[scores={sukunacutscene=9878..9880},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free ease 4 in_sine pos ^-3^1.5^-2 facing @e[tag=megunacutscene_p2]

execute as @s[scores={sukunacutscene=9900},tag=megunacutscene_p1] at @s run playsound mob.blood @a[r=100] ~~1~ 99999 2 99999
execute as @s[scores={sukunacutscene=9900},tag=megunacutscene_p1] at @s run particle ds:blood_splat ^0.4^1^0.4
execute as @s[scores={sukunacutscene=9900},tag=megunacutscene_p1] at @s run particle ds:blood_splat ^0.4^1^0.4
execute as @s[scores={sukunacutscene=9900},tag=megunacutscene_p1] at @s run particle ds:blood_splat ^0.4^1^0.4
execute as @s[scores={sukunacutscene=9900},tag=megunacutscene_p1] at @s run camerashake add @a[r=10] 0.15 0.15
execute as @s[scores={sukunacutscene=9900},tag=megunacutscene_p1] at @s run event entity @s finger

execute as @s[scores={sukunacutscene=9936..9998},tag=megunacutscene_p1] at @s run scriptevent ds:knockback 0.05


execute as @s[scores={sukunacutscene=9863},tag=megunacutscene_p1] at @s run playsound mob.megunacutscene1 @a[r=100] ~~1~ 99999 1 99999
execute as @s[scores={sukunacutscene=9863},tag=megunacutscene_p1] at @s run playsound music.megunacutscene1 @a[r=100] ~~1~ 99999 1 99999



execute as @s[scores={sukunacutscene=9115..9200},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run particle ds:red_aura ~~1~

execute as @s[scores={sukunacutscene=9424..9520},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run particle ds:red_aura ~~1~

#dialogue
execute as @s[scores={sukunacutscene=9864..}] at @s run title @a[tag=!impactframesoff,r=10] title 



execute as @s[scores={sukunacutscene=9810..9863}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cBrat, you just savour it..."}]}

execute as @s[scores={sukunacutscene=9788..9809}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§7Sacred Treasure-..."}]}
execute as @s[scores={sukunacutscene=9760..9787}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§7Wh-"}]}
execute as @s[scores={sukunacutscene=9730..9759}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§7NO-"}]}




execute as @s[scores={sukunacutscene=9810..9863}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cBrat, you just savour it..."}]}

execute as @s[scores={sukunacutscene=9788..9809}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§7Sacred Treasure-..."}]}
execute as @s[scores={sukunacutscene=9760..9787}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§7Wh-"}]}
execute as @s[scores={sukunacutscene=9730..9759}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§7NO-"}]}




execute as @s[scores={sukunacutscene=9925..9730}] at @s run event entity @s jjka:remove_sukuna_scale
execute as @s[scores={sukunacutscene=9925..9730}] at @s run event entity @s heian_off

execute as @s[scores={sukunacutscene=9425..9729}] at @s run title @a[tag=!impactframesoff,r=10] title 


execute as @s[scores={sukunacutscene=9390..9424}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fWh-... What have you done?"}]}
execute as @s[scores={sukunacutscene=9370..9389}] at @s if entity @e[type=ds:megumi_idle,tag=megunacutscene_p2,c=1] run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fM-Megumi...?"}]}
execute as @s[scores={sukunacutscene=9370..9389}] at @s unless entity @e[type=ds:megumi_idle,tag=megunacutscene_p2,c=1] run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fYou... I'll-"}]}


execute as @s[scores={sukunacutscene=9390..9424}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fWh-... What have you done?"}]}
execute as @s[scores={sukunacutscene=9370..9389}] at @s if entity @e[type=ds:megumi_idle,tag=megunacutscene_p2,c=1] run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fM-Megumi...?"}]}
execute as @s[scores={sukunacutscene=9370..9389}] at @s unless entity @e[type=ds:megumi_idle,tag=megunacutscene_p2,c=1] run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fYou... I'll-"}]}


execute as @s[scores={sukunacutscene=9320..9369}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cIdiot."}]}

execute as @s[scores={sukunacutscene=9320..9369}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cIdiot."}]}

execute as @s[scores={sukunacutscene=9369}] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run playsound mob.idiot @a[r=100] ~~1~ 9999 1 99999

execute as @s[scores={sukunacutscene=9280..9319}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cThis vessel is now mine."}]}
execute as @s[scores={sukunacutscene=9250..9279}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cWhich means..."}]}



execute as @s[scores={sukunacutscene=9280..9319}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cThis vessel is now mine."}]}
execute as @s[scores={sukunacutscene=9250..9279}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cWhich means..."}]}


execute as @s[scores={sukunacutscene=9319}] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run playsound mob.getready @a[r=100] 


execute as @s[scores={sukunacutscene=9200..9249}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cI no longer have a use for you anymore!"}]}

execute as @s[scores={sukunacutscene=9200..9249}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cI no longer have a use for you anymore!"}]}


execute as @s[scores={sukunacutscene=9110..9199}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":""}]}



execute as @s[scores={sukunacutscene=9060..9109}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fWhy!?"}]}
execute as @s[scores={sukunacutscene=9000..9059}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fWh.. Why can't you just live life without causing suffering!?"}]}


execute as @s[scores={sukunacutscene=8950..8999}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cHow can a creature that falls apart so easily want to live happily?"}]}
execute as @s[scores={sukunacutscene=8999}] at @s run playsound music.sukunavoice2 @a[r=100] 
execute as @s[scores={sukunacutscene=8910..8949}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cYou deserve to suffer for being weak."}]}
execute as @s[scores={sukunacutscene=8949}] at @s run playsound music.sukunavoice3 @a[r=100] 

execute as @s[scores={sukunacutscene=8891..8909}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§f....."}]}



execute as @s[scores={sukunacutscene=9060..9109}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fWhy!?"}]}
execute as @s[scores={sukunacutscene=9000..9059}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fWh.. Why can't you just live life without causing suffering!?"}]}


execute as @s[scores={sukunacutscene=8950..8999}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cHow can a creature that falls apart so easily want to live happily?"}]}
execute as @s[scores={sukunacutscene=8910..8949}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cYou deserve to suffer for being weak."}]}

execute as @s[scores={sukunacutscene=8891..8909}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§f....."}]}




execute as @s[scores={sukunacutscene=9794..9797},tag=megunacutscene_p1] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={sukunacutscene=9794..9797},tag=megunacutscene_p1] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={sukunacutscene=9794..9797},tag=megunacutscene_p1] at @s run playsound mob.enderdragon.flap @a[r=100] ~~-25~ 9999 2 9999
execute as @s[scores={sukunacutscene=9794..9797},tag=megunacutscene_p1] at @s run playsound mob.blaze.shoot @a[r=100] ~~-25~ 9999 2 9999


execute as @s[scores={sukunacutscene=9796..9800},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run tp @s @s
execute as @s[scores={sukunacutscene=9795..9796},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run tp @e[tag=megunacutscene_p1,c=1] ^-0.75^^-0.5 facing ^^^5

execute as @s[scores={sukunacutscene=9790},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free pos ^-2^0.25^3 facing ^^1^-1
execute as @s[scores={sukunacutscene=9788..9790},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free ease 4 in_sine pos ^-3^0.35^3 facing ^^1^-1

execute as @s[scores={sukunacutscene=9730},tag=megunacutscene_p1] at @s run camera @a[r=48] fade time 0 1.25 0.5 color 0 0 0

execute as @s[scores={sukunacutscene=9720..9790},tag=megunacutscene_p1] at @s run particle ds:cutscene_black1 ~~0.025~
execute as @s[scores={sukunacutscene=9720..9790},tag=megunacutscene_p1] at @s run particle ds:cutscene_black3 ~~0.1~

execute as @s[scores={sukunacutscene=9720..9721},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run tp @s @s
execute as @s[scores={sukunacutscene=9719..9720},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run tp @e[tag=megunacutscene_p1,c=1] ^^^1 facing @s

execute as @s[scores={sukunacutscene=9717..9720},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free pos ^-2^2^0.5 facing ^^1^1
execute as @s[scores={sukunacutscene=9706..9707},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free ease 6 in_sine pos ^-3^1^0.25 facing ^^1^1

execute as @s[scores={sukunacutscene=9712..9715},tag=megunacutscene_p1] at @s run scriptevent ds:knockback 0.5
execute as @s[scores={sukunacutscene=9712..9712},tag=megunacutscene_p1] at @s run tp @s @s
execute as @s[scores={sukunacutscene=9708..9712},tag=megunacutscene_p1] at @s run tp @e[tag=megunacutscene_p2,c=1] ^^^1.725

execute as @s[scores={sukunacutscene=9675},tag=megunacutscene_p1] at @s run playsound random.eat @a[r=100] ^^1^1  99999 0.7 99999
execute as @s[scores={sukunacutscene=9675},tag=megunacutscene_p1] at @s run playsound mob.heartbeat @a[r=100] ^^1^1  99999 0.7 99999

execute as @s[scores={sukunacutscene=9673},tag=megunacutscene_p1] at @s run event entity @s heart_off
execute as @s[scores={sukunacutscene=9673},tag=megunacutscene_p1] at @s run event entity @s sukuna_markings
execute as @s[scores={sukunacutscene=9672},tag=megunacutscene_p1] at @s run event entity @s sukuna_markings_red0
execute as @s[scores={sukunacutscene=9671},tag=megunacutscene_p1] at @s run event entity @s sukuna_markings_red1
execute as @s[scores={sukunacutscene=9670},tag=megunacutscene_p1] at @s run event entity @s sukuna_markings_red
execute as @s[scores={sukunacutscene=9668},tag=megunacutscene_p1] at @s run event entity @s sukuna_markings_red1
execute as @s[scores={sukunacutscene=9666},tag=megunacutscene_p1] at @s run event entity @s sukuna_markings_red0
execute as @s[scores={sukunacutscene=9663..9664},tag=megunacutscene_p1] at @s run event entity @s sukunatextureoff


execute as @s[scores={sukunacutscene=9670},tag=megunacutscene_p1] at @s run event entity @e[tag=megunacutscene_p2,c=1] sukuna_markings
execute as @s[scores={sukunacutscene=9669},tag=megunacutscene_p1] at @s run event entity @e[tag=megunacutscene_p2,c=1] sukuna_markings_red0
execute as @s[scores={sukunacutscene=9668},tag=megunacutscene_p1] at @s run event entity @e[tag=megunacutscene_p2,c=1] sukuna_markings_red1
execute as @s[scores={sukunacutscene=9667},tag=megunacutscene_p1] at @s run event entity @e[tag=megunacutscene_p2,c=1] sukuna_markings_red
execute as @s[scores={sukunacutscene=9665},tag=megunacutscene_p1] at @s run event entity @e[tag=megunacutscene_p2,c=1] sukuna_markings_red1
execute as @s[scores={sukunacutscene=9663},tag=megunacutscene_p1] at @s run event entity @e[tag=megunacutscene_p2,c=1] sukuna_markings_red0
execute as @s[scores={sukunacutscene=9660..9661},tag=megunacutscene_p1] at @s run event entity @e[tag=megunacutscene_p2,c=1] sukuna_markings

execute as @s[scores={sukunacutscene=9629},tag=megunacutscene_p1] at @s run playsound mob.heartbeat @a[r=100] ^^1^1  99999 0.8 99999
execute as @s[scores={sukunacutscene=9629},tag=megunacutscene_p1] at @s run camera @a[r=48] fade time 0.5 0 0.5

playanimation @s[scores={sukunacutscene=9619..9620},tag=megunacutscene_p1] animation.yuji_awaken_cutscene2
execute as @s[scores={sukunacutscene=9619..9620},tag=megunacutscene_p1] at @s run playanimation @e[tag=megunacutscene_p2,c=1] animation.yuji_awaken_cutscene2b



execute as @s[scores={sukunacutscene=9612..9614},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^^-0.3^0.655 facing ^^-1^2
execute as @s[scores={sukunacutscene=9609..9612},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free ease 1 in_sine pos ^^-0.3^0.655 facing ^^-1^1.5

execute as @s[scores={sukunacutscene=9588..9589},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free ease 1.25 in_out_circ pos ^^^0.8 facing ^^^5

execute as @s[scores={sukunacutscene=9567..9568},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free ease 1 in_out_circ pos ^^^0.25 facing ^0.25^-0.75^4

execute as @s[scores={sukunacutscene=9553..9554},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free ease 1 in_out_circ pos ^^^0.25 facing ^^^1.5

execute as @s[scores={sukunacutscene=9525},tag=megunacutscene_p1] at @s run event entity @e[type=ds:megumi_idle,tag=megunacutscene_p2,c=1] megumi_v2

execute as @s[scores={sukunacutscene=9615},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run camera @a[r=48] fade time 0.15 0.5 1 color 0 0 0

execute as @s[scores={sukunacutscene=9615},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run particle ds:ground_slam2
execute as @s[scores={sukunacutscene=9615},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run camerashake add @a[r=40] 2 0.15 rotational
execute as @s[scores={sukunacutscene=9615},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run playsound mob.shock1 @a[r=100] ~~1~ 99999 2 99999
execute as @s[scores={sukunacutscene=9615},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run particle ds:large_impact1 ^^1^1 
execute as @s[scores={sukunacutscene=9615},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run particle ds:large_impact2 ^^1^1 
execute as @s[scores={sukunacutscene=9615},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run tp @s @s
execute as @s[scores={sukunacutscene=9614..9615},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run tp @e[tag=megunacutscene_p1,c=1] ^^^10 facing @s


execute as @s[scores={sukunacutscene=9540},tag=megunacutscene_p1] at @s run camera @a[r=48] fade time 0.5 0.5 1 color 0 0 0

execute as @s[scores={sukunacutscene=9525},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free pos ^-1^0.25^7 facing ^^1.5^10
execute as @s[scores={sukunacutscene=9522..9524},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free ease 5 in_sine pos ^2^1.75^6 facing ^^1.25^10


execute as @s[scores={sukunacutscene=9435},tag=megunacutscene_p1] at @s  run camera @a[r=48] fade time 0.5 0.15 1 color 0 0 0

execute as @s[scores={sukunacutscene=9424},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^-0.75^^1 facing ~~~

execute as @s[scores={sukunacutscene=9369},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^-0.75^^1 facing ~~~



execute as @s[scores={sukunacutscene=9240},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^-3^1.5^3 facing ~~-0.5~
execute as @s[scores={sukunacutscene=9239},tag=megunacutscene_p1] at @s run playanimation @s animation.yuji_awaken_cutscene3
execute as @s[scores={sukunacutscene=9239},tag=megunacutscene_p1] at @s run playanimation @e[tag=megunacutscene_p2,c=1] animation.yuji_awaken_cutscene3b



execute as @s[scores={sukunacutscene=900..9615},tag=megunacutscene_p1] at @s if block ~~-1~ air run fill ~3~-1~3~-3~-1~-3 barrier [] replace air

execute as @s[scores={sukunacutscene=9235..9239},tag=megunacutscene_p1] at @s run tp @e[tag=megunacutscene_p2,c=1] ^^^0.5 facing ~~~
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run particle ds:ground_slam2 ~~1~
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run playsound mob.shock1 @a[r=100] ~~1~ 99999 1.2 99999
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run playsound mob.wither.shoot @a[r=100] ~~1~ 99999 2 99999
execute as @s[scores={sukunacutscene=9236},tag=megunacutscene_p1] at @s run particle ds:rubble ^^^2


execute as @s[scores={sukunacutscene=9208},tag=megunacutscene_p1] at @s run camerashake add @a[r=10] 1 0.15
execute as @s[scores={sukunacutscene=9208},tag=megunacutscene_p1] at @s run playsound mob.wither.break_block @a[r=100] ~~1~ 99999 0.5 99999
execute as @s[scores={sukunacutscene=9208},tag=megunacutscene_p1] at @s run playsound mob.wither.shoot @a[r=100] ~~1~ 99999 0.85 99999
execute as @s[scores={sukunacutscene=9208},tag=megunacutscene_p1] at @s run particle ds:rubble ^^^-2
execute as @s[scores={sukunacutscene=9208},tag=megunacutscene_p1] at @s run particle ds:rubble ^^^
execute as @s[scores={sukunacutscene=9208},tag=megunacutscene_p1] at @s run particle ds:ground_slam2 ^^^
execute as @s[scores={sukunacutscene=9208},tag=megunacutscene_p1] at @s run particle ds:ground_slam2 ^^^-1.5
execute as @s[scores={sukunacutscene=9208},tag=megunacutscene_p1] at @s run particle ds:ground_slam2 ^^^-3
execute as @s[scores={sukunacutscene=9200},tag=megunacutscene_p1] at @s run event entity @e[tag=megunacutscene_p2,c=1] megumi_v3
execute as @s[scores={sukunacutscene=9200},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run playsound mob.sukuna_laugh2 @a[r=100] ~~1~ 99999 1 99999
execute as @s[scores={sukunacutscene=9207},tag=megunacutscene_p1] at @s run tp @s ^^^-14
execute as @s[scores={sukunacutscene=9208},tag=megunacutscene_p1] at @s run camera @a[r=100] fade time 0.1 0.5 1 color 0 0 0



execute as @s[scores={sukunacutscene=9200..9205},tag=megunacutscene_p1] at @s run tp @s @s
execute as @s[scores={sukunacutscene=9200},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^^-1^1 facing ^^-1.7^2
execute as @s[scores={sukunacutscene=9180},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free ease 3 in_sine pos ^^-0.5^0.8 facing ^^-0.15^2

execute as @s[scores={sukunacutscene=9110},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^-1.5^1^2.75 facing ~~~


execute as @s[scores={sukunacutscene=9010},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run camera @a[r=48] set minecraft:free pos ^1^1.2^1 facing ~~1.3~

execute as @s[scores={sukunacutscene=8930},tag=megunacutscene_p1] at @s run execute as @a[r=48] at @s run playsound music.incomplete_shrine @s ~~~ 99999 1.025 99999

# Crashout Scene

execute as @s[scores={sukunacutscene=9007..9010}] at @s run scriptevent ds:knockback 1
execute as @s[scores={sukunacutscene=9004..9006}] at @s run tp @s @s
execute as @s[scores={sukunacutscene=8882..8885},tag=megunacutscene_p1] at @s run tp @s @s
execute as @s[scores={sukunacutscene=8930},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^^0.25^1 facing ~~-0.1~

execute as @s[scores={sukunacutscene=8908}] at @s run camera @a[r=48] fade time 0.45 0.5 0.25 color 0 0 0

execute as @s[scores={sukunacutscene=8888..8890}] at @s run event entity @s yuji_rage

execute as @s[scores={sukunacutscene=8790..8794}] at @s run event entity @s heart_off

execute as @s[scores={sukunacutscene=8795..8890}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§4L e t ' s   s e e   i f   y o u   c a n   s w a l l o w   m y   s u f f e r i n g."}]}

execute as @s[scores={sukunacutscene=8795..8890}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§l§4L e t ' s   s e e   i f   y o u   c a n   s w a l l o w   m y   s u f f e r i n g."}]}


execute as @s[scores={sukunacutscene=8800..8890}] at @s run camerashake add @a[r=48] 0.04 0.08
execute as @s[scores={sukunacutscene=8800..8930}] at @s run particle ds:cutscene_black_big1
execute as @s[scores={sukunacutscene=8800..8930}] at @s run particle ds:cutscene_black_big2 ~~0.12~

execute as @s[scores={sukunacutscene=8800}] at @s run camera @a[r=48] fade time 0.25 0.1 0.25 color 0 0 0

execute as @s[scores={sukunacutscene=8794},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run camera @a[r=48] set minecraft:free pos ^1.3^1.5^0.25 facing ~~1.5~
execute as @s[scores={sukunacutscene=8780..8794}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cCome closer then."}]}

execute as @s[scores={sukunacutscene=8780..8794}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cCome closer then."}]}

execute as @s[scores={sukunacutscene=8794}] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run playsound mob.comeatme @a[r=100] ~~1~ 99999 1 99999

execute as @s[scores={sukunacutscene=8779..8782},tag=megunacutscene_p1] at @s run scriptevent ds:knockback 0.15
execute as @s[scores={sukunacutscene=8779},tag=megunacutscene_p1] at @s run camera @a[r=48] set minecraft:free pos ^-1^0.15^0.5 facing ^^^0.5

execute as @s[scores={sukunacutscene=8750},tag=megunacutscene_p1] at @s run particle ds:ground_slam2
execute as @s[scores={sukunacutscene=8750},tag=megunacutscene_p1] at @s run particle ds:invert ^-1^^
execute as @s[scores={sukunacutscene=8750},tag=megunacutscene_p1] at @s run summon gg:impact_frame
execute as @s[scores={sukunacutscene=8749},tag=megunacutscene_p1] at @s run function clear_impframe
execute as @s[scores={sukunacutscene=8750},tag=megunacutscene_p1] at @s run playsound mob.cleave @a[r=100] ~~~ 9999 0.95 9999
execute as @s[scores={sukunacutscene=8750},tag=megunacutscene_p1] at @s run playsound mob.slice @a[r=100] ~~~ 9999 1.33 9999
execute as @s[scores={sukunacutscene=8750},tag=megunacutscene_p1] at @s run camerashake add @a[r=10] 2 0.15

execute as @s[scores={sukunacutscene=8725},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^-1^0.15^ facing ^^^

execute as @s[scores={sukunacutscene=8600..8725},tag=megunacutscene_p1] at @s run scriptevent ds:knockback 0.11
execute as @s[scores={sukunacutscene=8720},tag=megunacutscene_p1] at @s anchored eyes run particle ds:blood_slashed1 ^-0.4^^
execute as @s[scores={sukunacutscene=8720},tag=megunacutscene_p1] at @s run particle ds:ground_slam2
execute as @s[scores={sukunacutscene=8720},tag=megunacutscene_p1] at @s run particle ds:invert ^-1^^
execute as @s[scores={sukunacutscene=8720},tag=megunacutscene_p1] at @s run summon gg:impact_frame
execute as @s[scores={sukunacutscene=8724},tag=megunacutscene_p1] at @s run function clear_impframe
execute as @s[scores={sukunacutscene=8720},tag=megunacutscene_p1] at @s run playsound mob.cleave @a[r=100] ~~~ 9999 0.95 9999
execute as @s[scores={sukunacutscene=8720},tag=megunacutscene_p1] at @s run playsound mob.slice @a[r=100] ~~~ 9999 1.33 9999
execute as @s[scores={sukunacutscene=8720},tag=megunacutscene_p1] at @s run camerashake add @a[r=10] 2 0.15

execute as @s[scores={sukunacutscene=8600..8702},tag=megunacutscene_p1] at @s run camerashake add @a[r=48] 0.08 0.08
execute as @s[scores={sukunacutscene=8600..8702},tag=megunacutscene_p1] at @s run playsound mob.dismantle @a ~~1~ 0.15 2
execute as @s[scores={sukunacutscene=8600..8702},tag=megunacutscene_p1] at @s run playsound mob.dismantle @a ~~1~ 0.2 1
execute as @s[scores={sukunacutscene=8600..8702},tag=megunacutscene_p1] at @s run particle ds:blood
execute as @s[scores={sukunacutscene=8702},tag=megunacutscene_p1] at @s run particle ds:blood_splat
execute as @s[scores={sukunacutscene=8682},tag=megunacutscene_p1] at @s run particle ds:blood_splat
execute as @s[scores={sukunacutscene=8662},tag=megunacutscene_p1] at @s run particle ds:blood_splat
execute as @s[scores={sukunacutscene=8630},tag=megunacutscene_p1] at @s run particle ds:blood_splat
execute as @s[scores={sukunacutscene=8625},tag=megunacutscene_p1] at @s run particle ds:blood_splat
execute as @s[scores={sukunacutscene=8650},tag=megunacutscene_p1] at @s run particle ds:blood_splat
execute as @s[scores={sukunacutscene=8655},tag=megunacutscene_p1] at @s run particle ds:blood_splat
execute as @s[scores={sukunacutscene=8612},tag=megunacutscene_p1] at @s run particle ds:blood_splat
execute as @s[scores={sukunacutscene=8600..8702},tag=megunacutscene_p1] at @s run particle ds:smallcleaves
execute as @s[scores={sukunacutscene=8600..8702},tag=megunacutscene_p1] at @s run particle ds:smallcleaves2

execute as @s[scores={sukunacutscene=8630..8724}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cGIVE HIM BACK!"}]}

execute as @s[scores={sukunacutscene=8630..8724}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cGIVE HIM BACK!"}]}

execute as @s[scores={sukunacutscene=8705},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^-1^0.75^2.66 facing ^^-0.33^
execute as @s[scores={sukunacutscene=8630..8702},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free ease 0.08 in_sine pos ^-1^0.75^3 facing ^^-0.33^

execute as @s[scores={sukunacutscene=8629},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run camera @a[r=48] set minecraft:free pos ^1.3^1.5^0.25 facing ~~1.5~
execute as @s[scores={sukunacutscene=8601..8629}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cWhere'd that endurance come from!?"}]}
execute as @s[scores={sukunacutscene=8571..8600}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cWait-no..."}]}

execute as @s[scores={sukunacutscene=8601..8629}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cWhere'd that endurance come from!?"}]}
execute as @s[scores={sukunacutscene=8571..8600}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cWait-no..."}]}

execute as @s[scores={sukunacutscene=8629}] at @s run playsound music.sukunavoice2 @a[r=100] 


execute as @s[scores={sukunacutscene=8599},tag=megunacutscene_p1] at @s run tp @s @s
execute as @s[scores={sukunacutscene=8599},tag=megunacutscene_p1] at @s run tp @e[tag=megunacutscene_p2,c=1] ^^^1.75 facing @s
execute as @s[scores={sukunacutscene=8569..8570},tag=megunacutscene_p1] at @s run tp @e[tag=megunacutscene_p2,c=1] ^^^0.8 facing @s
execute as @s[scores={sukunacutscene=8600},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^^^1 facing ~~~
execute as @s[scores={sukunacutscene=8600},tag=megunacutscene_p1] at @s run playanimation @s animation.yuji_awaken_cutscene_punch1
execute as @s[scores={sukunacutscene=8600},tag=megunacutscene_p1] at @s run playanimation @e[tag=megunacutscene_p2,c=1] animation.yuji_awaken_cutscene_punch2

execute as @s[scores={sukunacutscene=8600},tag=megunacutscene_p1] at @s run  particle ds:flashstep1
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run camerashake add @a[r=100] 3 0.15
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run playsound mob.punch1 @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run particle ds:blood_splat ^^1^1 
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run particle ds:ground_slam2 ^^1.35^1 
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run particle ds:large_impact1 ^^1.35^1 
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run particle ds:large_impact2 ^^1.35^1 
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run particle ds:heavy_impact1 ^^1.35^1 
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run particle ds:heavy_impact2 ^^1.35^1 
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run particle ds:heavy_impact3 ^^1.35^1 
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s run particle ds:blood_slashed1 ^0.4^1.5^1.25

execute as @s[scores={sukunacutscene=8530..8570}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cThis vessel's cursed energy output is low!"}]}

execute as @s[scores={sukunacutscene=8530..8570}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cThis vessel's cursed energy output is low!"}]}

execute as @s[scores={sukunacutscene=8511..8529}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":""}]}

execute as @s[scores={sukunacutscene=8581..8602},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^-2^-0.75^-1 facing ^^0.3^0.5 
execute as @s[scores={sukunacutscene=8571..8579},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^-0.65^-0.25^ facing ^^^0.5
execute as @s[scores={sukunacutscene=8570},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^1^-0.15^1.5 facing ~~0.3~

execute as @s[scores={sukunacutscene=8546},tag=megunacutscene_p1] at @s run camera @a[r=48] fade time 0.1 0.1 0.1
execute as @s[scores={sukunacutscene=8540},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free pos ^-1.5^-0.5^-2.5 facing ^^^10
execute as @s[scores={sukunacutscene=8539},tag=megunacutscene_p1] at @s anchored eyes run camera @a[r=48] set minecraft:free ease 5 in_sine pos ^-2^-0.5^-3 facing ^^^10


execute as @s[scores={sukunacutscene=8549}] at @s run playsound mob.sukuna_taste @a[r=50] ~~~ 9999 0.95 9999
execute as @s[scores={sukunacutscene=8450..8510}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cUgh."}]}
execute as @s[scores={sukunacutscene=8460..8549}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cYou little-!"}]}
execute as @s[scores={sukunacutscene=8549}] at @s run playsound mob.brat1 @a[r=100] ~~~ 9999 0.95 9999

execute as @s[scores={sukunacutscene=8450..8510}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cUgh."}]}
execute as @s[scores={sukunacutscene=8460..8549}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cYou little-!"}]}


execute as @s[scores={sukunacutscene=8361..8459}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cWh-.. His punch was severing the connection between this vessel's soul and mine?"}]}

execute as @s[scores={sukunacutscene=8361..8459}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cWh-.. His punch was severing the connection between this vessel's soul and mine?"}]}

execute as @s[scores={sukunacutscene=8359..8360}] at @s run stopsound @a music.incomplete_shrine



execute as @s[scores={sukunacutscene=8345..8360}] at @s run titleraw @a[tag=!impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cI'll see you again later, you annoying brat!"}]}

execute as @s[scores={sukunacutscene=8345..8360}] at @s run titleraw @a[tag=impactframesoff,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§cI'll see you again later, you annoying brat!"}]}

execute as @s[scores={sukunacutscene=8360}] at @s run playsound music.brat2 @a[r=100]

execute as @s[scores={sukunacutscene=8545},tag=megunacutscene_p1] at @s run tp @e[tag=megunacutscene_p2,c=1] ^^^2 facing ~~~
execute as @s[scores={sukunacutscene=8515},tag=megunacutscene_p1] at @s run tp @e[tag=megunacutscene_p2,c=1] ^^^10 facing ~~~


execute as @s[scores={sukunacutscene=8335..8340},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run playsound mob.enderdragon.flap @a[r=100] ~~-10~ 99999 2 99999
execute as @s[scores={sukunacutscene=8335..8340},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run playsound mob.blaze.shoot @a[r=100] ~~-10~ 99999 2 99999
execute as @s[scores={sukunacutscene=8335..8340},tag=megunacutscene_p1] at @s run execute as @e[tag=megunacutscene_p2,c=1] at @s run particle ds:flashstep1

execute as @s[scores={sukunacutscene=8338..8339},tag=megunacutscene_p1] at @s run execute as @p[tag=megunacutscene_p2,c=1] at @s run spreadplayers 0 0 1 2 @s

execute as @s[scores={sukunacutscene=1000..8290},tag=megunacutscene_p1] at @s run scoreboard players set @s hollowbasketown 0
execute as @s[scores={sukunacutscene=1000..8290},tag=megunacutscene_p1] at @s run execute as @p[tag=megunacutscene_p2,c=1] at @s run function cheats/maxoutsukuna
execute as @s[scores={sukunacutscene=1000..8290},tag=megunacutscene_p1] at @s run function cheats/remove_sukuna
execute as @s[scores={sukunacutscene=1000..8290},tag=megunacutscene_p1] at @s run tellraw @s {"rawtext":[{"text":"§eSukuna has left your body, you are on your own path now, free from sukuna's chains.\n\n§aYou have awakened your own abilities.\n\n§4'Meguna' shall now be able to spawn in your world (i mean when ive made him lol)"}]}
execute as @s[scores={sukunacutscene=1000..8290},tag=megunacutscene_p1] at @s run scoreboard objectives add blackflash_amount dummy
execute as @s[scores={sukunacutscene=1000..8290},tag=megunacutscene_p1] at @s run give @s ds:yuji_technique 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[scores={sukunacutscene=1000..8290},tag=megunacutscene_p1] at @s run function sukuna/end_cutscene
