


scoreboard players set @s[scores={move=1..}] move 0
scoreboard players set @s[scores={chance=1..}] chance 0

playanimation @s[scores={cutscene=10000..10005}] animation.primesoul.final_cutscene1

execute as @s[scores={cutscene=10000..10001}] at @s run tag @a[r=200] add darkness
execute as @s[scores={cutscene=10000..10001}] at @s run event entity @e[type=ds:heroic] ds:disappear
execute as @s[scores={cutscene=10000..10001}] at @s run tp @s @s
execute as @s[scores={cutscene=10000..10001}] at @s run tp @s -59936 240 -59936 facing ~~~-10

execute as @s[scores={cutscene=10000..}] at @s run tp @a[r=200] ^^^7 facing ~~~

execute as @s[scores={cutscene=10000..10001}] at @s run stopsound @a
execute as @s[scores={cutscene=10000..10001}] at @s run particle ds:demons_descent1
execute as @s[scores={cutscene=10000..10001}] at @s run particle ds:demons_descent2
execute as @s[scores={cutscene=10000..10001}] at @s run particle ds:demons_descent3
execute as @s[scores={cutscene=10000..10001}] at @s run particle ds:demons_descent4
execute as @s[scores={cutscene=10000..10001}] at @s run particle ds:reality_crater1
execute as @s[scores={cutscene=10000..10001}] at @s run playsound mob.wither.hurt @a ~~~  99999 0.5 99999
execute as @s[scores={cutscene=10000..10001}] at @s run playsound mob.crash @a ~~~  99999 1 99999
execute as @s[scores={cutscene=10000..10001}] at @s run playsound mob.impact @a ~~~  99999 1.5 99999
execute as @s[scores={cutscene=10000..10001}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={cutscene=10000..}] at @s run camera @a[r=200] fade time 0 0.5 0.5 color 255 255 255

execute as @s[scores={cutscene=10000..10001}] at @s run event entity @s wings_off
execute as @s[scores={cutscene=10000..10001}] at @s run event entity @s primekatana_off
execute as @s[scores={cutscene=10000..10001}] at @s run event entity @s airhorn_off



execute as @s[scores={cutscene=9990}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ＹＯＵ－．．．"}]}
execute as @s[scores={cutscene=9990}] at @s run playsound mob.glitch_start @a[r=200] ~~~ 99999 1.2 99999
execute as @s[scores={cutscene=9990}] at @s run playsound mob.glitch2 @a[r=200] ~~~ 99999 1.2 99999

execute as @s[scores={cutscene=9930}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4Ｈｏｗ．．？ Ｂｅｓｔｅｄ ｂｙ ａ ｍｅｒｅ ｐｌａｙｅｒ．．？"}]}
execute as @s[scores={cutscene=9930}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 1.2 99999

execute as @s[scores={cutscene=9880}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4Ｉ ｃａｎｎｏｔ ａｌｌｏｗ ｔｈｉｓ ｔｏ ｈａｐｐｅｎ．"}]}
execute as @s[scores={cutscene=9880}] at @s run playsound mob.glitchtalk2 @a[r=200] ~~~ 99999 1 99999

execute as @s[scores={cutscene=9840}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ＩＭＰＯＳＳＩＢＬＥ！"}]}
execute as @s[scores={cutscene=9840}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.8 99999
execute as @s[scores={cutscene=9840}] at @s run playsound mob.glitch2 @a[r=200] ~~~ 99999 0.8 99999

execute as @s[scores={cutscene=9800}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4Ｉ ＡＭ ＴＨＥ ＳＴＲＯＮＧＥＳＴ！"}]}
execute as @s[scores={cutscene=9798..9800}] at @s run playsound mob.glitch @a[r=200] ~~-10~ 99999 0.9 99999

execute as @s[scores={cutscene=9760}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ＹＯＵ．．． ＹＯＵ ＨＯＲＲＩＢＬＥ！"}]}
execute as @s[scores={cutscene=9760}] at @s run playsound mob.glitch @a[r=200] ~~~ 99999 0.85 99999
execute as @s[scores={cutscene=9754}] at @s run playsound mob.glitch3 @a[r=200] ~~~ 99999 1.25 99999

execute as @s[scores={cutscene=9725}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ＹＯＵ ＭＵＳＴ．．．"}]}
execute as @s[scores={cutscene=9725}] at @s run playsound mob.glitch3 @a[r=200] ~~~ 99999 0.75 99999

execute as @s[scores={cutscene=9700..9760}] at @s run particle ds:rift8 ~~1~
execute as @s[scores={cutscene=9700..9760}] at @s run particle ds:rift7 ~~1~
execute as @s[scores={cutscene=9740..9760}] at @s run camerashake add @a[r=100] 0.1 0.08 

execute as @s[scores={cutscene=9730}] at @s run playsound mob.wither.spawn @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={cutscene=9720}] at @s run particle ds:demons_descent1 ~ ~1 ~
execute as @s[scores={cutscene=9720}] at @s run particle ds:demons_descent2 ~ ~1 ~
execute as @s[scores={cutscene=9720}] at @s run particle ds:demons_descent3 ~ ~1 ~
execute as @s[scores={cutscene=9720}] at @s run particle ds:demons_descent4 ~ ~1 ~
execute as @s[scores={cutscene=9730}] at @s run particle ds:atomic_start1 ~ 240.1 ~
execute as @s[scores={cutscene=9710}] at @s run particle ds:atomic_start2 ~ 240.1 ~
execute as @s[scores={cutscene=9730}] at @s run particle ds:atomic_start3 ~ 240.1 ~

execute as @s[scores={cutscene=9660}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ＹＯＵ ＭＵＳＴ ＤＩＥ ＢＹ ＭＹ ＨＡＮＤ！！！！！！！！！！"}]}
execute as @s[scores={cutscene=9620..9660}] at @s run playsound mob.glitch_intense1 @a[r=200] ~~-15~ 99999 0.75 99999

execute as @s[scores={cutscene=9660}] at @s run execute as @a[r=200] at @s run playsound music.soul @s ~~~ 99999 0.4 99999

execute as @s[scores={cutscene=9610}] at @s run execute as @a[r=200] at @s run playsound mob.shock1 @s ~~~ 99999 0.15 99999

execute as @s[scores={cutscene=9609..9610}] at @s run camera @a[r=200] fade time 2 3.5 0.5 color 255 255 255
execute as @s[scores={cutscene=9609..9610}] at @s run camerashake add @a[r=200] 0.5 5 rotational
execute as @s[scores={cutscene=9600..9620}] at @s run particle ds:prison_break_glow1 ~~1~
execute as @s[scores={cutscene=9540..9630}] at @s run particle ds:prison_break1 ~~1~
execute as @s[scores={cutscene=9540..9630}] at @s run particle ds:prison_break2 ~~1~
execute as @s[scores={cutscene=9540..9630}] at @s run particle ds:prison_break3 ~~1~


execute as @s[scores={cutscene=9570}] at @s run particle ds:demons_descent4 ~ ~1 ~

execute as @s[scores={cutscene=9511..9530}] at @s run stopsound @a

execute as @s[scores={cutscene=9510}] at @s run execute as @a[r=200] at @s run playsound music.domainbreak @s ~~~ 99999 1.35 99999
execute as @s[scores={cutscene=9500..9510}] at @s run particle ds:equinox_judgement_glass2 ~~1~
execute as @s[scores={cutscene=9500..9510}] at @s run particle ds:domain_smash1 ~~1~
execute as @s[scores={cutscene=9500..9510}] at @s run particle ds:domain_smash2 ~~1~
execute as @s[scores={cutscene=9500..9510}] at @s run particle ds:domain_smash3 ~~1~
execute as @s[scores={cutscene=9506..9510}] at @s run event entity @s wings_2


execute as @s[scores={cutscene=9545}] at @s positioned -59937 255 -59889 run summon ds:heroic ~~~ facing @e[type=ds:primesoul,c=1]
execute as @s[scores={cutscene=9500..9540}] at @s positioned -59937 255 -59889 run particle ds:rift1b
execute as @s[scores={cutscene=9000..9540}] at @s positioned -59937 255 -59889 run tp @e[type=ds:heroic,c=1] ~~~ facing @e[type=ds:primesoul,c=1]


execute as @s[scores={cutscene=9070..9540}] at @s run playanimation @e[type=ds:heroic,c=1] animation.heroic.chilling



execute as @s[scores={cutscene=9545}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fHm.."}]}
execute as @s[scores={cutscene=9545}] at @s run playsound random.click @a

execute as @s[scores={cutscene=9490}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fYou having a party here without me?"}]}
execute as @s[scores={cutscene=9490}] at @s run playsound random.click @a

execute as @s[scores={cutscene=9440}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4Ｉｔ＇ｓ ａｂｏｕｔ ｔｉｍｅ．．．"}]}
execute as @s[scores={cutscene=9440}] at @s run playsound mob.glitch_intense1 @a[r=200] ~~-15~ 99999 1 99999

execute as @s[scores={cutscene=9370}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4Ａｆｔｅｒ ａｌｌ ｔｈｉｓ ｔｉｍｅ… ＹＯＵ ＦＩＮＡＬＬＹ ＳＨＯＷ ＹＯＵＲ ＦＡＣＥ！？！？"}]}
execute as @s[scores={cutscene=9370}] at @s run playsound mob.glitchtalk1 @a[r=200] ~~-15~ 99999 2 99999

execute as @s[scores={cutscene=9320}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4Ｉ＇ＶＥ ＢＥＥＮ ＷＡＩＴＩＮＧ ＦＯＲ ＴＨＩＳ ＭＯＭＥＮＴ… ＦＡＲ ＴＯＯ ＬＯＮＧ！"}]}
execute as @s[scores={cutscene=9315..9320}] at @s run playsound mob.glitch @a[r=200] ~~-15~ 99999 0.7 99999

execute as @s[scores={cutscene=9040..9330}] at @s run execute as @e[type=ds:heroic,c=1] at @s run tp @e[type=ds:primesoul,c=1,tag=final_cutscene] ~~~-2.75 facing @s
execute as @s[scores={cutscene=9330..9335}] at @s run particle ds:flashstep1
execute as @s[scores={cutscene=9330..9335}] at @s run playsound mob.enderdragon.flap @a[r=200] ~~-6~  99999 2 99990
execute as @s[scores={cutscene=9330..9335}] at @s run playsound mob.blaze.shoot @a[r=200] ~~-6~  99999 3 99990

execute as @s[scores={cutscene=9321..9335}] at @s run execute as @a[r=300] at @s run tp @s ~~~ facing @e[type=ds:primesoul,c=1]

execute as @s[scores={cutscene=9040..9320}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield1
execute as @s[scores={cutscene=9040..9320}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield2

execute as @s[scores={cutscene=9321}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:demons_descent4
execute as @s[scores={cutscene=9321}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:demons_descent5
execute as @s[scores={cutscene=9321}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:demons_descent8
execute as @s[scores={cutscene=9310..9321}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:corrupt_forcefield1
execute as @s[scores={cutscene=9321}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield_hit1
execute as @s[scores={cutscene=9321}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield_hit3
execute as @s[scores={cutscene=9321}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield3
execute as @s[scores={cutscene=9321}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield4
execute as @s[scores={cutscene=9321}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield5
execute as @s[scores={cutscene=9321}] at @s run camerashake add @a[r=300] 3 0.25 rotational
execute as @s[scores={cutscene=9321}] at @s run playsound music.distort3 @a[r=200]
execute as @s[scores={cutscene=9321}] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 3 99999
execute as @s[scores={cutscene=9321}] at @s run playsound mob.red2 @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={cutscene=9321}] at @s run playsound random.glass @a[r=200] ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=9321}] at @s run playsound mob.distort2 @a[r=200] ~~~ 99999 3 99999
execute as @s[scores={cutscene=9321}] at @s run playsound mob.distort2 @a[r=200] ~~~ 99999 0.25 99999
execute as @s[scores={cutscene=9040..9115}] at @s run camerashake add @a[r=300] 0.12 0.1
execute as @s[scores={cutscene=9040..9320}] at @s run playsound mob.glitch @a[r=200] ~~35~ 99999 1.2 99999
execute as @s[scores={cutscene=9040..9320}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield_hit4



execute as @s[scores={cutscene=9270}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4ＮＯ ＭＯＲＥ ＣＨＡＮＣＥＳ！"}]}
execute as @s[scores={cutscene=9235}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4 ＮＯ ＭＯＲＥ ＭＥＲＣＹ！"}]}
execute as @s[scores={cutscene=9200}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4 ＴＨＩＳ ＩＳ ＷＨＥＲＥ ＹＯＵ ＷＩＬＬ ＤＩＥ ＬＩＫＥ ＴＨＥ ＰＡＴＨＥＴＩＣ ＣＲＥＡＴＯＲ ＹＯＵ ＡＲＥ！"}]}

execute as @s[scores={cutscene=9180}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fDo you ever stop yapping?"}]}
execute as @s[scores={cutscene=9180}] at @s run playsound random.click @a

execute as @s[scores={cutscene=9150}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4 ＤＩＥ ＨＥＲＯＩＣ！ ＤＩＥ ＬＩＫＥ ＴＨＥ ＤＯＧ ＹＯＵ ＡＲＥ， ＹＯＵ ＤＯＮＴ ＳＴＡＮＤ Ａ ＣＨＡＮＣＥ ＡＧＡＩＮＳＴ ＭＥ！！！"}]}



execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:demons_descent4
execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:demons_descent5
execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:demons_descent8
execute as @s[scores={cutscene=9000..9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:corrupt_forcefield1
execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield3
execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield4
execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield5
execute as @s[scores={cutscene=9000..9150}] at @s run camerashake add @a[r=300] 1 0.25
execute as @s[scores={cutscene=9150}] at @s run playsound music.distort3 @a[r=200]
execute as @s[scores={cutscene=9150}] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 2 99999
execute as @s[scores={cutscene=9120..9150}] at @s run playsound random.glass @a[r=200] ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=9150}] at @s run playsound mob.distort2 @a[r=200] ~~~ 99999 3 99999
execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield_hit1
execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield_hit2
execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield_hit3
execute as @s[scores={cutscene=9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield_hit4
execute as @s[scores={cutscene=9040..9150}] at @s run execute as @e[type=ds:heroic,c=1] at @s positioned ~~1~-2 run particle ds:forcefield_cracked1



execute as @s[scores={cutscene=9100}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fOkay, thats ENOUGH!"}]}
execute as @s[scores={cutscene=9100}] at @s run playsound random.click @a

execute as @s[scores={cutscene=9050}] at @s run particle ds:invert ^^^2 
execute as @s[scores={cutscene=9048}] at @s run particle ds:red_tint ^^^2 
execute as @s[scores={cutscene=9046}] at @s run particle ds:blue_tint ^^^2 
execute as @s[scores={cutscene=9044}] at @s run particle ds:invert ^^^2 
execute as @s[scores={cutscene=9044}] at @s run summon gg:impact_frame ~ 240 ~
execute as @s[scores={cutscene=9043}] at @s run particle ds:red_tint ^^^2 
execute as @s[scores={cutscene=9042}] at @s run particle ds:invert ^^^2 
execute as @s[scores={cutscene=9040}] at @s run particle ds:red_tint ^^^2 
execute as @s[scores={cutscene=9039}] at @s run particle ds:blue_tint ^^^2 
execute as @s[scores={cutscene=9038}] at @s run summon gg:impact_frame ~ 240 ~

execute as @s[scores={cutscene=9060}] at @s run playanimation @e[type=ds:heroic,c=1] animation.heroic.imprison

execute as @s[scores={cutscene=9060}] at @s run execute as @a[r=300] at @s run playsound music.laser1 @s ~~~ 99999 0.5 99999
execute as @s[scores={cutscene=9035}] at @s run execute as @a[r=300] at @s run stopsound @a music.laser1
execute as @s[scores={cutscene=9040}] at @s run playsound music.distort3 @a[r=200]
execute as @s[scores={cutscene=9040}] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 2 99999
execute as @s[scores={cutscene=9020..9040}] at @s run playsound random.glass @a[r=200] ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=9040}] at @s run playsound mob.distort2 @a[r=200] ~~~ 99999 2 99999


execute as @s[scores={cutscene=9040}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fYou're nothing but a DEFECT!"}]}
execute as @s[scores={cutscene=9040}] at @s run particle ds:large_shockwave1
execute as @s[scores={cutscene=9040}] at @s run playsound random.click @a
execute as @s[scores={cutscene=9040}] at @s run particle ds:demons_descent4 ^^1^1 
execute as @s[scores={cutscene=9040}] at @s run particle ds:demons_descent5 ^^1^1 
execute as @s[scores={cutscene=9040}] at @s run particle ds:demons_descent8 ^^1^1 
execute as @s[scores={cutscene=9040}] at @s run particle ds:riftaura3 ^^1^1 
execute as @s[scores={cutscene=9040}] at @s run particle ds:riftaura4 ^^1^1 
execute as @s[scores={cutscene=9040}] at @s run tag @a[r=300] remove darkness
execute as @s[scores={cutscene=9040}] at @s run camerashake add @a[r=200] 4 1
execute as @s[scores={cutscene=9040}] at @s run camera @a[r=200] fade time 0 0 0.15 color 255 255 255

execute as @s[scores={cutscene=9000..9040}] at @s run tp @s -59936 255 -59936 facing @e[type=ds:heroic,c=1]

execute as @s[scores={cutscene=8970}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4 ＭＡＲＫ ＭＹ ＷＯＲＤＳ！"}]}
execute as @s[scores={cutscene=8930}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §l§4 ＴＨＩＳ ＩＳ ＮＯＴ ＴＨＥ ＥＮＤ！"}]}

execute as @s[scores={cutscene=8870}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fYeah yeah, get back in your cage bozo."}]}

execute as @s[scores={cutscene=8999..9000}] at @s run execute as @a[r=200] at @s run playsound music.primedeath @s ~~~ 99999 1 99999
execute as @s[scores={cutscene=8000..9000}] at @s run camerashake add @a[r=200] 0.2 0.1

execute as @s[scores={cutscene=8840}] at @s run camera @a[r=300] fade time 2 3 1 color 255 255 255
execute as @s[scores={cutscene=9040}] at @s run event entity @s wings_off
execute as @s[scores={cutscene=8800..8860}] at @s run particle ds:rift1b ~~1~
execute as @s[scores={cutscene=8820..8850}] at @s run particle ds:rift_charging1 ~~1~
execute as @s[scores={cutscene=8820..8850}] at @s run particle ds:rift_charging2 ~~1~
execute as @s[scores={cutscene=8820..8850}] at @s run particle ds:rift_charging3 ~~1~

execute as @s[scores={cutscene=8780}] at @s positioned -59936 240 -59936 run structure load mystructure:heroic ~~~
execute as @s[scores={cutscene=8810}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fHad me going for a second there.. haha."}]}
execute as @s[scores={cutscene=8770}] at @s unless entity @a[scores={completedbossfight=1..},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fSo player, what are you doing here? Come here, you can just click on me like I'm an NPC."}]}


execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=1},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fOk so why are you back here again? I'm just gonna pretend this is the first time I've met you... Good thing I wiped Heroic Prime's memory though or else he might have been a problem."}]}
execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=2},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fBruh... Why are you back here again."}]}
execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=3},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fYou've gotta be kidding me... are you seriously farming reality-altering events just for some cool items? You literally have the same power as I do, just get them out of creative mode..."}]}
execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=4},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fIs this funny to you?"}]}
execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=5},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fIm not even gonna question why you're here again..."}]}
execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=6},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fHi. Of course its you again."}]}
execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=7},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fDo you want a medal or something? I could create one for you right now titled: The Most annoying."}]}
execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=8..99},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fYep... its you again, okay."}]}
execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=100},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fYOUVE DONE THIS ONE HUNDRED TIMES NOW! WHAT IS WRONG WITH YOU!?"}]}
execute as @s[scores={cutscene=8770}] at @s if entity @a[scores={completedbossfight=101..},r=300] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fseriously..."}]}

execute as @s[scores={cutscene=8700..8760}] at @s run event entity @e[type=!ds:heroic_npc] ds:disappear